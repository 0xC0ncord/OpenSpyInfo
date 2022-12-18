//=============================================================================
// MutOpenSpyInfo.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class MutOpenSpyInfo extends Mutator;

var array<PlayerController> Pending;

function bool CheckReplacement(Actor Other, out byte bSuperRelevant)
{
    local Controller C;
    local OpenSpyInfoManager M;

    if(
        PlayerController(Other) != None
        && Camera(Other) == None
        && MessagingSpectator(Other) == None
    )
    {
        // wait for them to get a PRI first
        Pending[Pending.Length] = PlayerController(Other);
    }
    else if(string(Other.Class) == "DruidsPlayerAgreement110.PlayerAgreementManager")
    {
        // flush pending managers, as we might get ticked after player agreement
        UpdatePendingManagers();

        // find who owns this agreement manager
        for(C = Level.ControllerList; C != None; C = C.NextController)
        {
            if(PlayerController(C) != None && Other.Owner == C)
            {
                foreach C.ChildActors(class'OpenSpyInfoManager', M)
                    break;

                if(M != None)
                {
                    // shim it
                    M.ServerShimAgreement(Other);
                    break;
                }
            }
        }
    }
    return true;
}

function Tick(float dt)
{
    UpdatePendingManagers();
}

function UpdatePendingManagers()
{
    while(Pending.Length > 0)
    {
        CreateManagerFor(Pending[0]);
        Pending.Remove(0, 1);
    }
}

function CreateManagerFor(PlayerController PC)
{
    local OpenSpyInfoManager A;

    if(PC == None)
        return;

    A = Spawn(class'OpenSpyInfoManager', PC);
    A.Setup();
}

defaultproperties
{
    bAddToServerPackages=True
    GroupName="OpenSpy"
    FriendlyName="Open Spy Info Broadcaster"
    Description="Displays a message for players with information on switching master servers to OpenSpy."
}
