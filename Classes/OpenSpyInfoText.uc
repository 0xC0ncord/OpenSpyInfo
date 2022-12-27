//=============================================================================
// OpenSpyInfoText.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoText extends Resource;

var string WindowTitle;
var string Text_DontShowAgain;
var string Text_Acknowledge;
var string Text_AutoConfigure;
var string Text_MoreInfo;
var string InfoText00;
var string InfoText01;
var string InfoText02;
var string InfoText03;
var string InfoText04;
var string InfoText05;
var string InfoText06;
var string InfoText07;
var string InfoText08;
var string InfoText09;

defaultproperties
{
    InfoText00="$(255,0,0)PLEASE READ THIS!"
    InfoText01="$(255,255,255)Epic Games has announced that they will be shutting down online servers for their older titles, $(255,0,0)including Unreal Tournament 2004$(255,255,255), no later than January 24, 2023."
    InfoText02="|This means that in the near future, the News Feed, Buddy system, and the Server Browser (not Favorites) $(255,0,0)will stop working."
    InfoText03="|$(255,255,255)Thankfully, an alternative master server was created by the $(0,192,255)OpenSpy $(255,255,255)project which will allow these services to work after this date."
    InfoText04="|To use it, you will need to make small changes to your $(0,192,255)UT2004.ini $(255,255,255)file in your game's System folder."
    InfoText05="||If you would like to make these change manually, click the $(0,255,0)More Info $(255,255,255)button below to open a website ($(0,192,255)$1$(255,255,255)) with more information and detailed instructions."
    InfoText06="|If you would like to make these changes automatically, click the $(0,255,0)Auto-Configure $(255,255,255)button below."
    InfoText07="||$(255,0,0)Note that this change will switch your game's master servers list to use only the $(0,192,255)OpenSpy $(255,0,0)master server. UT2004 servers that are only connecting to Epic's official server(s) will not be visible in the Server Browser after this change."
    InfoText08="|$(255,255,255)Servers that you have added to your Favorites will continue to be displayed in your Favorites as normal, regardless of which master server(s) you or that server are using."
    InfoText09="||If you're unsure, you should go to the Server Browser now and add any servers you're interested in to your Favorites. Then, reconnect to this server and click $(0,255,0)Auto-Configure $(255,255,255)when you see this menu again."
    WindowTitle="Important Information on the Future of UT2004 Online Play"
    Text_Acknowledge="I understand."
    Text_AutoConfigure="Auto-Configure"
    Text_MoreInfo="More Info"
    Text_DontShowAgain="Don't show this again"
}
