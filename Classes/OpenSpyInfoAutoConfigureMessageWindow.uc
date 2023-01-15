//=============================================================================
// OpenSpyInfoAutoConfigureMessageWindow.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoAutoConfigureMessageWindow extends FloatingWindow;

var automated AltSectionBackground sbMessage;
var automated GUIButton btOK;
var automated GUIScrollTextBox lbMessage;

var localized string WindowTitle, MessageText;

function bool InternalOnClick(GUIComponent Sender)
{
    Controller.CloseMenu(false);
    return true;
}

function SetLanguage(string Lang)
{
    local class<OpenSpyInfoText> TextClass;

    TextClass = class'OpenSpyInfoPage'.static.GetTextClassForLanguage(Lang);

    lbMessage.MyScrollText.SetContent(TextClass.default.AutoConfigureContentText);
    sbMessage.Caption = TextClass.default.AutoConfigureWindowTitle;
    btOK.Caption = TextClass.default.Text_OK;
}

defaultproperties
{
    bResizeWidthAllowed=False
    bResizeHeightAllowed=False
    bMoveAllowed=False
    bPersistent=True
    bAllowedAsLast=True

    WinWidth=0.600000
    WinHeight=0.420558
    WinLeft=0.214063
    WinTop=0.138333

    Begin Object Class=AltSectionBackground Name=sbMessage_
        LeftPadding=0.000000
        RightPadding=0.000000
        WinWidth=0.968723
        WinHeight=0.745506
        WinLeft=0.015875
        WinTop=0.097353
        OnPreDraw=sbMessage_.InternalPreDraw
    End Object
    sbMessage=AltSectionBackground'sbMessage_'

    Begin Object Class=GUIButton Name=btOK_
        Caption="OK"
        TabOrder=0
        WinWidth=0.482870
        WinHeight=0.081551
        WinLeft=0.497916
        WinTop=0.842546
        OnClick=OpenSpyInfoAutoConfigureMessageWindow.InternalOnClick
        OnKeyEvent=btOK_.InternalOnKeyEvent
    End Object
    btOK=GUIButton'btOK_'

    Begin Object Class=GUIScrollTextBox Name=lbMessage_
        WinWidth=0.915046
        WinHeight=0.600470
        WinLeft=0.042592
        WinTop=0.168451
        CharDelay=0.001250
        EOLDelay=0.001250
        bNeverFocus=true
        bAcceptsInput=false
        bVisibleWhenEmpty=True
        FontScale=FNS_Small
        StyleName="NoBackground"
    End Object
    lbMessage=GUIScrollTextBox'lbMessage_'
}

