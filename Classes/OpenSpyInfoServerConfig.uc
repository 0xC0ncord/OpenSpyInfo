//=============================================================================
// OpenSpyInfoServerConfig.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoServerConfig extends Object
	config(OpenSpyInfo)
	PerObjectConfig;

var() config bool bUseSpawnProtection;

defaultproperties
{
    bUseSpawnProtection=True
}
