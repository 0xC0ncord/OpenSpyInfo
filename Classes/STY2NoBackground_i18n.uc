//=============================================================================
// STY2NoBackground_i18n.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class STY2NoBackground_i18n extends STY2NoBackground;

event Initialize();

defaultproperties
{
    Begin Object Class=fntUT2k4Small_i18n Name=SmallFont
        Name="fntUT2k4Small_i18n"
    End Object

    Begin Object Class=fntUT2k4Menu_i18n Name=MenuFont
        Name="fntUT2k4Menu_i18n"
    End Object

    Begin Object Class=fntUT2k4Large_i18n Name=LargeFont
        Name="fntUT2k4Large_i18n"
    End Object

    Fonts(0)=fntUT2k4Small_i18n'SmallFont'
    Fonts(1)=fntUT2k4Small_i18n'SmallFont'
    Fonts(2)=fntUT2k4Small_i18n'SmallFont'
    Fonts(3)=fntUT2k4Small_i18n'SmallFont'
    Fonts(4)=fntUT2k4Small_i18n'SmallFont'
    Fonts(5)=fntUT2k4Menu_i18n'MenuFont'
    Fonts(6)=fntUT2k4Menu_i18n'MenuFont'
    Fonts(7)=fntUT2k4Menu_i18n'MenuFont'
    Fonts(8)=fntUT2k4Menu_i18n'MenuFont'
    Fonts(9)=fntUT2k4Menu_i18n'MenuFont'
    Fonts(10)=fntUT2k4Large_i18n'LargeFont'
    Fonts(11)=fntUT2k4Large_i18n'LargeFont'
    Fonts(12)=fntUT2k4Large_i18n'LargeFont'
    Fonts(13)=fntUT2k4Large_i18n'LargeFont'
    Fonts(14)=fntUT2k4Large_i18n'LargeFont'

    FontNames(0)="UT2SmallFont_i18n"
    FontNames(1)="UT2SmallFont_i18n"
    FontNames(2)="UT2SmallFont_i18n"
    FontNames(3)="UT2SmallFont_i18n"
    FontNames(4)="UT2SmallFont_i18n"
    FontNames(5)="UT2MenuFont_i18n"
    FontNames(6)="UT2MenuFont_i18n"
    FontNames(7)="UT2MenuFont_i18n"
    FontNames(8)="UT2MenuFont_i18n"
    FontNames(9)="UT2MenuFont_i18n"
    FontNames(10)="UT2LargeFont_i18n"
    FontNames(11)="UT2LargeFont_i18n"
    FontNames(12)="UT2LargeFont_i18n"
    FontNames(13)="UT2LargeFont_i18n"
    FontNames(14)="UT2LargeFont_i18n"

    KeyName="NoBackground_i18n"
}
