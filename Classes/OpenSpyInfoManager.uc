//=============================================================================
// OpenSpyInfoManager.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoManager extends ReplicationInfo;

const CONFIG_DATA_NAME = "Main";

var OpenSpyInfoServerConfig ServerConfig;
var PlayerController PC;
var bool bWasSpectator;
var bool bInitialized;
var bool bOpened;
var vector PawnLocation;
var float IdleTimeout;

var OpenSpyInfoPage InfoPage;

var class<GUIPage> PlayerAgreementMenuClass;
var GUIPage AgreementPage;
var Actor AgreementManager;
var int AgreementTimeout;
var bool bUpdateAgreementTimeout;

var OpenSpyInfoConfig ConfigData;

replication
{
    reliable if(Role < ROLE_Authority)
        ServerAcknowledge;
}

function Setup(OpenSpyInfoServerConfig SC)
{
    ServerConfig = SC;
    PC = PlayerController(Owner);
    bWasSpectator = PC.PlayerReplicationInfo.bOnlySpectator;

    if(!SC.bUseSpawnProtection)
    {
        if(!bWasSpectator)
        {
            if(PC.Pawn != None)
                PC.Pawn.Died(None, class'DamageType', PC.Pawn.Location);

            PC.PlayerReplicationInfo.bOnlySpectator = true;
            PC.GotoState('Spectating');
        }
    }
    else
    {
        if(Level.NetMode == NM_DedicatedServer)
            Disable('Tick');

        if(PC.Pawn != None)
        {
            PC.Pawn.SetPhysics(PHYS_None); // to avoid getting pushed around
            PC.Pawn.SpawnTime = MaxInt; // infinite spawn protection
            PawnLocation = PC.Pawn.Location;
        }
    }

    IdleTimeout = Level.TimeSeconds + ServerConfig.IdleTimeoutSeconds;
    PC.LastActiveTime = IdleTimeout;

    bInitialized = true;
}

simulated function Tick(float dt)
{
    if(Role == ROLE_Authority)
    {
        if(ServerConfig.bUseSpawnProtection)
        {
            PC.Pawn.SetPhysics(PHYS_None);
            PC.Pawn.SpawnTime = MaxInt; // make sure spawn protection doesnt end until menu is closed
            if(PC.Pawn.Location != PawnLocation)
                PC.Pawn.SetLocation(PawnLocation);
        }

        // make sure the player doesn't get kicked while this menu is open
        if(PC.LastActiveTime != IdleTimeout && Level.TimeSeconds < IdleTimeout)
            PC.LastActiveTime = IdleTimeout;

        if(bUpdateAgreementTimeout)
        {
            bUpdateAgreementTimeout = False;
            AgreementTimeout = int(AgreementManager.GetPropertyText("Timeout"));
            AgreementManager.LifeSpan = 0;
        }

        // if we are a server and this isn't the host's controller
        if(Viewport(PC.Player) == None)
            return;
    }

    if(bOpened)
    {
        // check for player agreement and shim it so as to not break it
        if(PlayerAgreementMenuClass == None)
        {
            PlayerAgreementMenuClass = class<GUIPage>(DynamicLoadObject("DruidsPlayerAgreement110.PlayerAgreementPage", class'Class', true));
            if(PlayerAgreementMenuClass == None)
            {
                // mod doesnt appear to be installed, no shimming necessary
                Disable('Tick');
                return;
            }
        }

        // at this point the mod exists, check if its menu is opened
        AgreementPage = GUIController(PC.Player.GUIController).FindMenuByClass(PlayerAgreementMenuClass);
        if(AgreementPage != None)
        {
            // if we don't find it, try again every tick just in case
            ShimPlayerAgreement();
            Disable('Tick');
        }
        
        return;
    }

    PC = Level.GetLocalPlayerController();
    if(
        PC == None
        || (
            Level.NetMode == NM_ListenServer
            && PC != Owner
        )
    )
    {
        return;
    }

    ConfigData = OpenSpyInfoConfig(FindObject("Package." $ CONFIG_DATA_NAME, class'OpenSpyInfoConfig'));
    if(ConfigData == None)
        ConfigData = new(None, CONFIG_DATA_NAME) class'OpenSpyInfoConfig';

    if(ConfigData.bDontShowAgain)
    {
        ServerAcknowledge();
        Disable('Tick');
    }
    else
    {
        ShowMenu();
        bOpened = true;
    }
}

simulated function ShowMenu()
{
    if(
        PC == None
        || PC.Player == None
        || PC.Player.GUIController == None
    )
    {
        return;
    }

    PC.Player.GUIController.OpenMenu(string(class'OpenSpyInfoPage'));
    InfoPage = OpenSpyInfoPage(GUIController(PC.Player.GUIController).TopPage());
    if(InfoPage != None)
        InfoPage.Manager = Self;
}

function ServerShimAgreement(Actor A)
{
    AgreementManager = A;
    bUpdateAgreementTimeout = True; // update timeout on next frame
    Enable('Tick');
}

simulated function ShimPlayerAgreement()
{
    AgreementPage.SetVisibility(false);
    AgreementPage.SetTimer(0, false);

    // hack, reopen our menu so that it's at the top of the stack
    if(GUIController(PC.Player.GUIController).TopPage() != InfoPage)
    {
        InfoPage.Manager = None;
        InfoPage.bClosed = true;
        GUIController(PC.Player.GUIController).RemoveMenu(InfoPage, false);

        PC.Player.GUIController.OpenMenu(string(class'OpenSpyInfoPage'));
        InfoPage = OpenSpyInfoPage(GUIController(PC.Player.GUIController).TopPage());
        if(InfoPage != None)
            InfoPage.Manager = Self;
    }
}

simulated function UnShimPlayerAgreement()
{
    AgreementPage.SetVisibility(true);
    AgreementPage.SetTimer(1, true);
}

function ServerAcknowledge()
{
    Destroy();
}

function Destroyed()
{
    if(AgreementManager != None)
    {
        // note that the agreement manager could be destroyed early if the player already agreed before
        AgreementManager.LifeSpan = AgreementTimeout;
    }
    else
    {
        // do NOT respawn player here if player agreement must do something
        if(bInitialized && PC == None)
        {
            Level.Game.NumPlayers--;
            Level.Game.NumSpectators++;
        }

        if(PC != None)
        {
            if(ServerConfig.bUseSpawnProtection)
            {
                PC.Pawn.DeactivateSpawnProtection();
                PC.Pawn.SetMovementPhysics();
            }
            else if(!bWasSpectator)
            {
                PC.bBehindView = false;
                PC.FixFOV();
                PC.ServerViewSelf();
                PC.PlayerReplicationInfo.bOnlySpectator = false;
                PC.PlayerReplicationInfo.Reset();
                PC.Adrenaline = 0;
                PC.BroadcastLocalizedMessage(Level.Game.GameMessageClass, 1, PC.PlayerReplicationInfo);
                PC.GotoState('PlayerWaiting');
                if(Level.Game.bTeamGame)
                    Level.Game.ChangeTeam(PC, Level.Game.PickTeam(int(PC.GetURLOption("Team")), None), false);
                if(Level.Game.IsA('InvasionX'))
                {
                    PC.PlayerReplicationInfo.NumLives = 0;
                    PC.PlayerReplicationInfo.bOutOfLives = false;
                    Level.Game.RestartPlayer(PC);
                    PC.ServerGivePawn();
                }
            }
        }
    }
}

defaultproperties
{
    NetUpdateFrequency=0.25
    NetPriority=3.0
    bSkipActorPropertyReplication=True
    bReplicateMovement=False
    bAlwaysRelevant=False
    bOnlyRelevantToOwner=True
}
