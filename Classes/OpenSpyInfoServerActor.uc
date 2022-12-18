//=============================================================================
// OpenSpyInfoServerActor.uc
// Copyright (C) 2022 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoServerActor extends Actor;

function PostBeginPlay()
{
    local Mutator M;

    M = Level.Game.BaseMutator;
    while(M != None)
    {
        if(M.Class == class'MutOpenSpyInfo')
        {
            Destroy();
            return;
        }
        M = M.NextMutator;
    }

    Level.Game.AddMutator(string(class'MutOpenSpyInfo'));
    Destroy();
}

defaultproperties
{
    RemoteRole=ROLE_None
    bHidden=True
    DrawType=DT_None
}
