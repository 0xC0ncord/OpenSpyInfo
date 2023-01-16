//=============================================================================
// OpenSpyInfoRules.uc
// Copyright (C) 2023 0xC0ncord <concord@fuwafuwatime.moe>
//
// This program is free software; you can redistribute and/or modify
// it under the terms of the Open Unreal Mod License version 1.1.
//=============================================================================

class OpenSpyInfoRules extends GameRules;

function int NetDamage(
    int OriginalDamage,
    int Damage,
    Pawn Injured,
    Pawn InstigatedBy,
    vector HitLocation,
    out vector Momentum,
    class<DamageType> DamageType
)
{
    local OpenSpyInfoManager M;

    if(Injured == None || Injured.Controller == None)
        return Super.NetDamage(OriginalDamage, Damage, Injured, InstigatedBy, HitLocation, Momentum, DamageType);

    // if they have a manager, do no damage
    foreach Injured.Controller.ChildActors(class'OpenSpyInfoManager', M)
    {
        Momentum = vect(0, 0, 0);
        return 0;
    }

    return Super.NetDamage(OriginalDamage, Damage, Injured, InstigatedBy, HitLocation, Momentum, DamageType);
}

defaultproperties
{
}
