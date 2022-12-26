//=============================================================================
// OpenSpyInfoPage.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoPage extends GUIPage;

#EXEC TEXTURE IMPORT NAME=lang_en FILE=Assets\Textures\lang_en.tga MIPS=0 ALPHA=1 DXT=3 LODSET=5
#EXEC TEXTURE IMPORT NAME=lang_de FILE=Assets\Textures\lang_de.tga MIPS=0 ALPHA=1 DXT=3 LODSET=5
#EXEC TEXTURE IMPORT NAME=lang_fr FILE=Assets\Textures\lang_fr.tga MIPS=0 ALPHA=1 DXT=3 LODSET=5

var automated GUISectionBackground sbBackground, sbButtons;
var automated GUILabel txHeader;
var automated GUIScrollTextBox lbText;
var automated GUIButton btAcknowledge, btAutoConfigure, btMoreInfo;
var automated moCheckBox ckDontShowAgain;

var automated GUIButton btLangEN,
                        btLangDE,
                        btLangFR;

var OpenSpyInfoManager Manager;
var bool bClosed;

var string InfoURL;

function InitComponent(GUIController MyController, GUIComponent MyOwner)
{
    local int LangId;

    Super.InitComponent(MyController, MyOwner);

    OnRendered = DrawLanguageButtons;

    bClosed = false;

    LangId = int(Localize("Language", "LangId", "Core"));

    switch(LangId)
    {
        case 7:
            UpdateLanguage("de");
            break;
        case 10:
            UpdateLanguage("es");
            break;
        case 12:
            UpdateLanguage("fr");
            break;
        case 16:
            UpdateLanguage("it");
            break;
        case 18:
            UpdateLanguage("ko");
            break;
        case 4:
            UpdateLanguage("mt");
            break;
        case 9:
        default:
            UpdateLanguage("en");
            break;
    }
}

function UpdateLanguage(string Lang)
{
    switch(Caps(Lang))
    {
        case "DE":
            txHeader.Caption = Colorize(class'OpenSpyInfoText'.default.InfoText00_de);
            lbText.MyScrollText.SetContent(
                Colorize(class'OpenSpyInfoText'.default.InfoText01_de)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText02_de)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText03_de)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText04_de)
                @ Colorize(Repl(class'OpenSpyInfoText'.default.InfoText05_de, "$1", InfoURL))
                @ Colorize(class'OpenSpyInfoText'.default.InfoText06_de)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText07_de)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText08_de)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText09_de)
            );
            sbBackground.Caption = class'OpenSpyInfoText'.default.WindowTitle_de;
            btAcknowledge.Caption = class'OpenSpyInfoText'.default.Text_Acknowledge_de;
            btAutoConfigure.Caption = class'OpenSpyInfoText'.default.Text_AutoConfigure_de;
            btMoreInfo.Caption = class'OpenSpyInfoText'.default.Text_MoreInfo_de;
            ckDontShowAgain.MyLabel.Caption = class'OpenSpyInfoText'.default.Text_DontShowAgain_de;
            break;
        case "FR":
            txHeader.Caption = Colorize(class'OpenSpyInfoText'.default.InfoText00_fr);
            lbText.MyScrollText.SetContent(
                Colorize(class'OpenSpyInfoText'.default.InfoText01_fr)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText02_fr)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText03_fr)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText04_fr)
                @ Colorize(Repl(class'OpenSpyInfoText'.default.InfoText05_fr, "$1", InfoURL))
                @ Colorize(class'OpenSpyInfoText'.default.InfoText06_fr)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText07_fr)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText08_fr)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText09_fr)
            );
            sbBackground.Caption = class'OpenSpyInfoText'.default.WindowTitle_fr;
            btAcknowledge.Caption = class'OpenSpyInfoText'.default.Text_Acknowledge_fr;
            btAutoConfigure.Caption = class'OpenSpyInfoText'.default.Text_AutoConfigure_fr;
            btMoreInfo.Caption = class'OpenSpyInfoText'.default.Text_MoreInfo_fr;
            ckDontShowAgain.MyLabel.Caption = class'OpenSpyInfoText'.default.Text_DontShowAgain_fr;
            break;
        case "EN":
        default:
            txHeader.Caption = Colorize(class'OpenSpyInfoText'.default.InfoText00_en);
            lbText.MyScrollText.SetContent(
                Colorize(class'OpenSpyInfoText'.default.InfoText01_en)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText02_en)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText03_en)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText04_en)
                @ Colorize(Repl(class'OpenSpyInfoText'.default.InfoText05_en, "$1", InfoURL))
                @ Colorize(class'OpenSpyInfoText'.default.InfoText06_en)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText07_en)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText08_en)
                @ Colorize(class'OpenSpyInfoText'.default.InfoText09_en)
            );
            sbBackground.Caption = class'OpenSpyInfoText'.default.WindowTitle_en;
            btAcknowledge.Caption = class'OpenSpyInfoText'.default.Text_Acknowledge_en;
            btAutoConfigure.Caption = class'OpenSpyInfoText'.default.Text_AutoConfigure_en;
            btMoreInfo.Caption = class'OpenSpyInfoText'.default.Text_MoreInfo_en;
            ckDontShowAgain.MyLabel.Caption = class'OpenSpyInfoText'.default.Text_DontShowAgain_en;
            break;
    }
}

function bool SetLanguage(GUIComponent Sender)
{
    switch(Sender)
    {
        case btLangDE:
            UpdateLanguage("de");
            break;
        case btLangFR:
            UpdateLanguage("fr");
            break;
        case btLangEN:
        default:
            UpdateLanguage("en");
            break;
    }
    return true;
}

function DrawLanguageButtons(Canvas C)
{
    DrawLanguageFlag(C, btLangEN);
    DrawLanguageFlag(C, btLangDE);
    DrawLanguageFlag(C, btLangFR);
}

function DrawLanguageFlag(Canvas C, GUIButton Sender)
{
    local Texture T;
    local float X, Y, U, V;

    switch(Sender)
    {
        case btLangDE:
            T = Texture'lang_de';
            break;
        case btLangFR:
            T = Texture'lang_fr';
            break;
        case btLangEN:
        default:
            T = Texture'lang_en';
            break;
    }

    C.Style = 5; // STY_Alpha
    C.DrawColor.A = 255;
    C.DrawColor.R = 255;
    C.DrawColor.G = 255;
    C.DrawColor.B = 255;

    U = Sender.ActualWidth() * 0.8;
    V = Sender.ActualHeight() * 0.8;
    X = Sender.ActualLeft() + Sender.ActualWidth() * 0.1;
    Y = Sender.ActualTop() + Sender.ActualHeight() * 0.1;

    C.SetPos(X, Y);
    C.DrawTile(T, U, V, 0, 0, T.MaterialUSize(), T.MaterialVSize());
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
        WinWidth=0.772397
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
        WinWidth=0.255660
        bBoundToParent=True
        bScaleToParent=True
    End Object
    ckDontShowAgain=moCheckBox'ckDontShowAgain_'

    Begin Object Class=GUIButton Name=btLangEN_
        FontScale=FNS_Small
        WinTop=0.070140
        WinLeft=0.913335
        WinWidth=0.035000
        WinHeight=0.058700
        bBoundToParent=True
        bScaleToParent=True
        OnClick=OpenSpyInfoPage.SetLanguage
        OnKeyEvent=btLangEN_.InternalOnKeyEvent
    End Object
    btLangEN=GUIButton'btLangEN_'

    Begin Object Class=GUIButton Name=btLangDE_
        FontScale=FNS_Small
        WinTop=0.131450
        WinLeft=0.913335
        WinWidth=0.035000
        WinHeight=0.058700
        bBoundToParent=True
        bScaleToParent=True
        OnClick=OpenSpyInfoPage.SetLanguage
        OnKeyEvent=btLangDE_.InternalOnKeyEvent
    End Object
    btLangDE=GUIButton'btLangDE_'

    Begin Object Class=GUIButton Name=btLangFR_
        FontScale=FNS_Small
        WinTop=0.193500
        WinLeft=0.913335
        WinWidth=0.035000
        WinHeight=0.058700
        bBoundToParent=True
        bScaleToParent=True
        OnClick=OpenSpyInfoPage.SetLanguage
        OnKeyEvent=btLangFR_.InternalOnKeyEvent
    End Object
    btLangFR=GUIButton'btLangFR_'

    InfoURL="http://ut2004serverlist.com"

    bAllowedAsLast=True
    bRenderWorld=False
    WinHeight=1.000000
    OnCanClose=OpenSpyInfoPage.InternalOnCanClose
    OnClose=OpenSpyInfoPage.InternalOnClose
    OnPreDraw=OpenSpyInfoPage.InternalOnPreDraw
}
