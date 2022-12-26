//=============================================================================
// OpenSpyInfoPage.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoPage extends GUIPage;

var automated GUISectionBackground sbBackground, sbButtons;
var automated GUILabel txHeader;
var automated GUIScrollTextBox lbText;
var automated GUIButton btAcknowledge, btAutoConfigure, btMoreInfo;
var automated moCheckBox ckDontShowAgain;

var OpenSpyInfoManager Manager;
var bool bClosed;

var localized string WindowTitle;
var localized string Text_DontShowAgain;
var localized string Text_Acknowledge;
var localized string Text_AutoConfigure;
var localized string Text_MoreInfo;

var localized string InfoText00;
var localized string InfoText01;
var localized string InfoText02;
var localized string InfoText03;
var localized string InfoText04;
var localized string InfoText05;
var localized string InfoText06;
var localized string InfoText07;
var localized string InfoText08;
var localized string InfoText09;
var string InfoURL;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
    Super.InitComponent(MyController, MyOwner);

    bClosed = false;

    txHeader.Caption = Colorize(InfoText00);
    lbText.AddText(Colorize(InfoText01) @ Colorize(InfoText02) $ "|");
    lbText.AddText(Colorize(InfoText03) $ "|");
    lbText.AddText(Colorize(InfoText04) @ Colorize(InfoText05) $ "|");
    lbText.AddText(Colorize(InfoText06) $ "|");
    lbText.AddText(Colorize(Repl(InfoText07, "$1", InfoURL)) $ "|");
    lbText.AddText(Colorize(InfoText08) $ "|");
    lbText.AddText(Colorize(InfoText09));

    sbBackground.Caption = WindowTitle;
    btAcknowledge.Caption = Text_Acknowledge;
    btAutoConfigure.Caption = Text_AutoConfigure;
    btMoreInfo.Caption = Text_MoreInfo;
    ckDontShowAgain.MyLabel.Caption = Text_DontShowAgain;
}

function bool InternalOnPreDraw(Canvas C)
{
    return false;
}

function bool InternalOnCanClose(optional bool bCanceled)
{
    // don't allow closing by pressing Escape
    if(Manager == None)
        return true;
    return bClosed;
}

function InternalOnClose(optional bool bCanceled)
{
    return;
}

function bool Acknowledge(GUIComponent Sender)
{
    bClosed = true;

    if(Manager != None)
    {
        if(ckDontShowAgain.IsChecked())
        {
            Manager.ConfigData.bDontShowAgain = true;
            Manager.ConfigData.SaveConfig();
        }

        if(Manager.AgreementPage != None)
            Manager.UnShimPlayerAgreement();
        Manager.ServerAcknowledge();
    }

    Controller.CloseMenu(false);
    Manager = None;
    return true;
}

function bool AutoConfigure(GUIComponent Sender)
{
    class'IpDrv.MasterServerLink'.default.MasterServerList.Length = 1;
    class'IpDrv.MasterServerLink'.default.MasterServerList[0].Address = "utmaster.openspy.net";
    class'IpDrv.MasterServerLink'.default.MasterServerList[0].Port = 28902;
    class'IpDrv.MasterServerLink'.static.StaticSaveConfig();

    Controller.OpenMenu(string(class'OpenSpyInfoAutoConfigureMessageWindow'));
    return true;
}

function bool MoreInfo(GUIComponent Sender)
{
    // note that opening https:// URLs are unsupported
    Controller.ViewportOwner.Actor.ConsoleCommand("Open" @ InfoURL);
    return true;
}

static final function string Colorize(string S)
{
    local int Pos;
    local int i, x;
    local string Tmp, Next;
    local byte R, G, B, n;

    Pos = InStr(S, "$(");
    while(Pos != -1)
    {
        R = 0;
        G = 0;
        B = 0;
        n = 0;

        i = Pos + 2;
        while(true)
        {
            x = i;
            Next = Mid(S, x, 1);

            while(Next != "," && Next != ")" && x <= Len(S))
            {
                x++;
                Next = Mid(S, x, 1);
            }

            Tmp = Mid(S, i, x - i);
            switch(n)
            {
                case 0:
                    R = byte(Tmp);
                    break;
                case 1:
                    G = byte(Tmp);
                    break;
                case 2:
                default:
                    B = byte(Tmp);
                    break;
            }
            n++;

            if(Next == ")" || x > Len(S))
            {
                Tmp = Mid(S, Pos, x - Pos + 1);
                S = Repl(S, Tmp, Chr(0x1b) $ (Chr(Max(R, 1))) $ (Chr(Max(G, 1))) $ (Chr(Max(B, 1))));
                break;
            }
            i = x + 1;
        }

        Pos = InStr(S, "$(");
    }
    return S;
}

defaultproperties
{
    Begin Object Class=AltSectionBackground Name=sbBackground_
        LeftPadding=0.0
        RightPadding=0.0
        FontScale=FNS_Small
        WinTop=0.030325
        WinLeft=0.035693
        WinWidth=0.922427
        WinHeight=0.647915
        bBoundToParent=True
        bScaleToParent=True
        OnPreDraw=sbBackground_.InternalPreDraw
    End Object
    sbBackground=AltSectionBackground'sbBackground_'

    Begin Object Class=AltSectionBackground Name=sbButtons_
        LeftPadding=0.0
        RightPadding=0.0
        FontScale=FNS_Small
        WinTop=0.681979
        WinLeft=0.035693
        WinWidth=0.922427
        WinHeight=0.224891
        bBoundToParent=True
        bScaleToParent=True
        OnPreDraw=sbButtons_.InternalPreDraw
    End Object
    sbButtons=AltSectionBackground'sbButtons_'
{
    Begin Object Class=GUILabel Name=txHeader_
        TextAlign=TXTA_Center
        FontScale=FNS_Small
        WinTop=0.070140
        WinLeft=0.107812
        WinWidth=0.786459
        WinHeight=0.051560
        bBoundToParent=True
        bScaleToParent=True
        bNeverFocus=True
    End Object
    txHeader=GUILabel'txHeader_'

    Begin Object Class=GUIScrollTextBox Name=lbText_
        bNoTeletype=True
        CharDelay=0.002500
        EOLDelay=0.000000
        OnCreateComponent=lbText_.InternalOnCreateComponent
        FontScale=FNS_Small
        WinTop=0.127777
        WinHeight=0.455730
        WinLeft=0.107812
        WinWidth=0.777084
        bBoundToParent=True
        bScaleToParent=True
        bNeverFocus=True
    End Object
    lbText=GUIScrollTextBox'lbText_'

    Begin Object Class=GUIButton Name=btAcknowledge_
        FontScale=FNS_Small
        WinTop=0.765703
        WinHeight=0.061350
        WinLeft=0.403436
        WinWidth=0.207744
        bBoundToParent=True
        bScaleToParent=True
        OnClick=OpenSpyInfoPage.Acknowledge
        OnKeyEvent=btAcknowledge_.InternalOnKeyEvent
    End Object
    btAcknowledge=GUIButton'btAcknowledge_'

    Begin Object Class=GUIButton Name=btAutoConfigure_
        FontScale=FNS_Small
        WinTop=0.587932
        WinLeft=0.454477
        WinWidth=0.207744
        bBoundToParent=True
        bScaleToParent=True
        OnClick=OpenSpyInfoPage.AutoConfigure
        OnKeyEvent=btAutoConfigure_.InternalOnKeyEvent
    End Object
    btAutoConfigure=GUIButton'btAutoConfigure_'

    Begin Object Class=GUIButton Name=btMoreInfo_
        FontScale=FNS_Small
        WinTop=0.587932
        WinLeft=0.673229
        WinWidth=0.207744
        bBoundToParent=True
        bScaleToParent=True
        OnClick=OpenSpyInfoPage.MoreInfo
        OnKeyEvent=btMoreInfo_.InternalOnKeyEvent
    End Object
    btMoreInfo=GUIButton'btMoreInfo_'

    Begin Object Class=moCheckBox Name=ckDontShowAgain_
        FontScale=FNS_Small
        WinTop=0.593487
        WinLeft=0.107812
        WinWidth=0.207744
        bBoundToParent=True
        bScaleToParent=True
    End Object
    ckDontShowAgain=moCheckBox'ckDontShowAgain_'

    WindowTitle="Important Information on the Future of UT2004 Online Play"

    Text_Acknowledge="I understand."
    Text_AutoConfigure="Auto-Configure"
    Text_MoreInfo="More Info"
    Text_DontShowAgain="Don't show this again"

    InfoText00="$(255,0,0)PLEASE READ THIS!"
    InfoText01="$(255,255,255)On December 14, 2022, Epic Games announced that they will be shutting down online servers for their older titles, $(255,0,0)including Unreal Tournament 2004$(255,255,255), no later than January 24, 2023."
    InfoText02="This means that in the near future, the master server(s) powering UT2004 online play will be going offline."
    InfoText03="In other words, online features such as the News feed, Buddies system, and most importantly, the Server Browser, $(255,0,0)will cease to function."
    InfoText04="$(255,255,255)Thankfully, an alternative master server was created by the $(0,192,255)OpenSpy $(255,255,255)project which allows the Server Browser to continue to work after Epic Games shuts down the official one."
    InfoText05="To use it, you will need to make minor changes to your game's configuration ($(0,192,255)UT2004.ini$(255,255,255))."
    InfoText06="It is $(255,0,0)highly recommended $(255,255,255)to read the documentation so that you understand the caveats and limitations of this."
    InfoText07="You can click the $(0,255,0)More Info $(255,255,255)button below to open your web browser to a page with more information and detailed instructions on making these changes yourself ($(0,192,255)$1$(255,255,255))."
    InfoText08="If you would like to make these changes to your game's configuration automatically, click the $(0,255,0)Auto-Configure $(255,255,255)button below."
    InfoText09="$(255,0,0)Note that these automated changes will make you unable to use the Server Browser to view servers that have not yet switched to the OpenSpy master server!"
    InfoURL="http://ut2004serverlist.com"

    bAllowedAsLast=True
    bRenderWorld=False
    WinHeight=1.000000
    OnCanClose=OpenSpyInfoPage.InternalOnCanClose
    OnClose=OpenSpyInfoPage.InternalOnClose
    OnPreDraw=OpenSpyInfoPage.InternalOnPreDraw
}
