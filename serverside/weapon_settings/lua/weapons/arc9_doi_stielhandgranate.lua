AddCSLuaFile()

SWEP.Base = "arc9_base_nade"

SWEP.Spawnable = true
SWEP.Category = "[TPTD: STA] Weapons"
SWEP.SubCategory = "Взрывчатка"

SWEP.PrintName = "Stielhandgranate"

SWEP.Class = "Grenade"

SWEP.Trivia = {
    Manufacturer = "Hermann Wuppermann AG, Stanz- u. Emaillierwerk",
    Mechanism = "Pyrotechnic Fuze",
    Origin = "Germany",
    Year = "1924"
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "New World Interactive",
}

SWEP.Description = [[Common stick grenade used in various form by Germany since the First World War.]]

SWEP.ViewModel = "models/weapons/arc9_doi/c_stielhandgranate.mdl"
SWEP.WorldModel = "models/weapons/w_eq_fraggrenade.mdl"

SWEP.Slot = 4

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-14, 6, -10),
    Ang = Angle(5, 0, 180),
    Scale = 1
}
SWEP.NoTPIKVMPos = true
SWEP.NoTPIK = true

SWEP.EntitySelectIcon = true

-------------------------- ENTITY LAUNCHING

SWEP.ShootEnt = "doi_nade_stielhandgranate" -- Set to an entity to launch it out of this weapon.
SWEP.ShootEntForce = 5000
SWEP.ShootEntInheritPlayerVelocity = true

SWEP.Throwable = true
SWEP.Tossable = true
SWEP.ThrowAnimSpeed = 1

SWEP.FuseTimer = 5

SWEP.ThrowForceMin = 250
SWEP.ThrowForceMax = 1000
SWEP.TossForce = 200

SWEP.ThrowChargeTime = 1

SWEP.ThrowTumble = true

-------------------------- MAGAZINE

SWEP.Ammo = "grenade" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 0 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.
SWEP.SecondarySupplyLimit = 0 -- Amount of reserve UBGL magazines you can take.

SWEP.DryFireDelay = 0.25
-------------------------- FIREMODES

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "THROW"
        -- add other attachment modifiers
    },
}

-------------------------- HANDLING

SWEP.FreeAimRadius = 0

SWEP.SprintToFireTime = 0.15 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 1
SWEP.SpeedMultCrouch = 1
SWEP.SpeedMultBlindFire = 1

SWEP.ShootWhileSprint = true

-------------------------- POSITIONS

SWEP.HasSights = false

SWEP.SprintAng = Angle(0, -45, 0)
SWEP.SprintPos = Vector(0, 0, 0)

SWEP.ViewModelFOVBase = 55
SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(0, 0, -1)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 16, 4)
SWEP.CustomizeSnapshotFOV = 100

-------------------------- HoldTypes

SWEP.HoldType = "melee"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldTypeSights = "melee"
SWEP.HoldTypeCustomize = "slam"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_PISTOL
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_PISTOL
SWEP.AnimDraw = false

-------------------------- SOUNDS

local path = "weapons/arc9_doi/stielhandgranate/handling/stielhandgranate_"

SWEP.Animations = {
    ["idle"] = {
        Source = "idle"
    },
    ["idle_primed"] = {
        Source = "bakethrow",
        Mult = math.huge
    },
    ["idle_primed_toss"] = {
        Source = "lowthrow",
        Mult = math.huge
    },
    ["draw"] = {
        Source = "draw",
        EventTable = {
            {s = ARC9DOI.GrenadeDraw, t = 0}
        }
    },
    ["holster"] = {
        Source = "holster",
        EventTable = {
            {s = ARC9DOI.GrenadeHolster, t = 0}
        }
    },
    ["pullpin"] = {
        Source = "pullbackhighbake",
        MinProgress = 1,
        FireASAP = true,
        EventTable = {
            {s = path .. "capoff.wav", t = 15 / 38.2},
            {s = path .. "ropepull.wav", t = 44 / 38.2},
            {s = path .. "armdraw.wav", t = 55 / 38.2}
        }
    },
    ["pullpin_toss"] = {
        Source = "pullbacklow",
        MinProgress = 1,
        FireASAP = true,
        EventTable = {
            {s = path .. "capoff.wav", t = 15 / 38.2},
            {s = path .. "armdraw.wav", t = 39 / 38.2}
        }
    },
    ["throw"] = {
        Source = "bakethrow",
        MinProgress = 0.25,
        EventTable = {
            {s = path .. "throw_01.wav", t = 0},
        }
    },
    ["toss"] = {
        Source = "lowthrow",
        MinProgress = 0.25,
        EventTable = {
            {s = path .. "throw_01.wav", t = 0},
        }
    },
}