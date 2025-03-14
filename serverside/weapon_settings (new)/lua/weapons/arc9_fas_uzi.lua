AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "[TPTD: STA] Weapons"
SWEP.SubCategory = "Пистолеты-пулемёты"

SWEP.PrintName = "Uzi"

SWEP.Class = "Submachine Gun"

SWEP.Trivia = {
    Designer = "Uziel Gal",
    Manufacturer = "Israeli Military Industries",
    Calibre = "9x19mm Parabellum",
    Mechanism = "Blowback Open-Bolt",
    Origin = "Israel",
    Year = "1950",
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "Firearms: Source Team",
}

SWEP.Description = [[The Uzi submachine gun was designed by Major Uziel Gal of the Israel Defense Forces in the late 1940s. It was first used by the Israeli military in the 1950s and soon gained popularity with military and law enforcement agencies around the world due to its compact size, controllability, and reliability. It has been used in a variety of conflicts and by various militaries and police forces over the past several decades. One of the first submachine guns, it is still in use today by many countries.

Slow rate of fire, but very controllable recoil.]]

SWEP.ViewModel = "models/weapons/arc9_fas/smgs/uzi.mdl"
SWEP.WorldModel = "models/weapons/w_smg_mac10.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-17, 6, -7),
    TPIKPos = Vector(-10, 4, -6),
    Ang = Angle(-5, 0, 180),
    Scale = 0.75
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 30 -- Damage done at point blank range
SWEP.DamageMin = 14 -- Damage done at maximum range

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 800 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 10000 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 5 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.25

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2,
    [HITGROUP_CHEST] = 1.1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1300 * 12
SWEP.PhysBulletGravity = 1.5
SWEP.PhysBulletDrag = 1.25

-------------------------- MAGAZINE

SWEP.Ammo = "9x19mm" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 32 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = -1
    },
    {
        Mode = 1
    }
}

SWEP.TriggerDelay = true
SWEP.TriggerDelayTime = 60 / 600
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayRepeat = true

SWEP.BarrelLength = 24

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 0.6

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

SWEP.RecoilMultHipFire = 0.75

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 100 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.05 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1
SWEP.RecoilAutoControlHipFire = 2.5

SWEP.RecoilKick = 1

SWEP.UseVisualRecoil = true

SWEP.PhysicalVisualRecoil = true

SWEP.VisualRecoilUp = 0.65 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 0.1 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 10 -- Roll tilt for visual recoil.
SWEP.VisualRecoilPunch = 0.25

SWEP.VisualRecoil = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPositionBump = 1.5

SWEP.VisualRecoilMultHipFire = 1.5
SWEP.VisualRecoilSideMultHipFire = 1

SWEP.VisualRecoilDampingConst = 40
SWEP.VisualRecoilSpringMagnitude = 1

SWEP.VisualRecoilCenter = Vector(4.6, -2, -2)

-------------------------- SPREAD

SWEP.Spread = 0

-------------------------- HANDLING

SWEP.FreeAimRadius = 5 -- In degrees, how much this gun can free aim in hip fire.

SWEP.Sway = 1.5 -- How much the gun sways.

SWEP.SwayMultMidAir = 4
SWEP.SwayMultMove = 1.5
SWEP.SwayMultCrouch = 0.25
SWEP.SwayMultShooting = 1.1
SWEP.SwayMultRecoil = 1.05
SWEP.SwayMultHipFire = 1.5

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0.1

SWEP.AimDownSightsTime = 0.25 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.96
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 1
SWEP.SpeedMultCrouch = 1

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-4.63, -5, 1.75),
    Ang = Angle(0, 1.25, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-4, 0, -8),
        Ang = Angle(0, 0, 0),
    },
    Magnification = 1.1,
}

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, -4, 0)

SWEP.ViewModelFOVBase = 55
SWEP.ActivePos = Vector(0, 0, 0.5)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, -3, -3)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(18, 32, 5)
SWEP.CustomizeSnapshotFOV = 100

SWEP.BipodPos = Vector(0, 0, 0)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = "passive"
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_smg" -- Used for some muzzle effects.

SWEP.ShellModel = "models/weapons/arc9_fas/shells/9x19mm.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)

SWEP.ShellSounds = ARC9.PistolShellSoundsTable

SWEP.AfterShotParticle = "barrel_smoke_plume"

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1
SWEP.CamCoolView = true

-------------------------- SOUNDS

local path = "weapons/arc9_fas/uzi/uzi_"
local common = "weapons/arc9_fas/"


SWEP.ShootSound = path .. "fire1.wav"
SWEP.DistantShootSound = "^" .. path .. "distance_fire1.wav"
SWEP.ShootSoundSilenced = path .. "suppressed_fire1.wav"
SWEP.DryFireSound = common .. "empty_submachineguns.wav"

SWEP.DryFireSingleAction = true

SWEP.TriggerDownSound = common .. "empty/triggerpull_pistol.wav"
SWEP.TriggerUpSound = common .. "empty/triggerrelease_pistol.wav"

SWEP.EnterSightsSound = ARC9FAS.SightRaise
SWEP.ExitSightsSound = ARC9FAS.SightLower

SWEP.FiremodeSound = ARC9FAS.Switch

SWEP.Animations = {
    ["draw"] = {
        HideBoneIndex = 1,
        Source = "draw",
        Mult = 2,
        EventTable = {
            {s = ARC9FAS.Deploy, t = 0},
        }
    },
    ["holster"] = {
        HideBoneIndex = 1,
        Source = "holster",
        EventTable = {
            {s = ARC9FAS.Holster, t = 0},
        }
    },
    ["ready"] = {
        Source = "draw_first",
        EventTable = {
            {s = ARC9FAS.Deploy, t = 0 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 5 / 30},
            {s = path .. "stockunfold.wav", t = 15 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 15 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 24 / 30},
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["idle"] = {
        Source = "idle"
    },
    ["idle_iron"] = {
        Source = "idle_scoped"
    },
    ["enter_sights"] = {
        HideBoneIndex = 1,
        Source = "idle_scoped"
    },
    ["exit_sights"] = {
        HideBoneIndex = 1,
        Source = "idle",
        Mult = 3
    },
    ["fire"] = {
        HideBoneIndex = 1,
        Source = "shoot1"
    },
    ["fire_iron"] = {
        HideBoneIndex = 1,
        Source = "shoot_iron"
    },
    ["reload"] = {
        Source = "reload",
        HideBoneIndex = 1,
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = path .. "magrelease.wav", t = 22 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 22 / 30},
            {s = path .. "magout.wav", t = 35 / 30},
            {s = ARC9FAS.MagPouch_SMG, t = 38 / 30},
            {s = path .. "magin_partial.wav", t = 69 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 69 / 30},
            {s = path .. "magin.wav", t = 79 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 79 / 30},
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["reload_empty"] = {
        Source = "reload_empty",
        HideBoneIndex = 1,
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = path .. "boltback.wav", t = 15 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 15 / 30},
            {s = path .. "boltforward.wav", t = 23 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 23 / 30},
            {s = path .. "magrelease.wav", t = 55 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 55 / 30},
            {s = path .. "magout_empty.wav", t = 57 / 30},
            {s = ARC9FAS.MagPouch_SMG, t = 69 / 30},
            {s = path .. "magin_partial.wav", t = 82 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 82 / 30},
            {s = path .. "magin.wav", t = 96 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 96 / 30},
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["reload_proficient"] = {
        Source = "reload_nomen",
        HideBoneIndex = 1,
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = path .. "magrelease.wav", t = 13 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 13 / 30},
            {s = path .. "magout.wav", t = 18 / 30},
            {s = ARC9FAS.MagPouch_SMG, t = 25 / 30},
            {s = path .. "magin_partial.wav", t = 35 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 35 / 30},
            {s = path .. "magin.wav", t = 41 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 41 / 30},
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
    ["reload_empty_proficient"] = {
        Source = "reload_empty_nomen",
        HideBoneIndex = 1,
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = path .. "boltback.wav", t = 15 / 45},
            {s = ARC9FAS.Cloth_Movement, t = 15 / 45},
            {s = path .. "boltforward.wav", t = 22 / 45},
            {s = ARC9FAS.Cloth_Movement, t = 22 / 45},
            {s = path .. "magrelease.wav", t = 54 / 45},
            {s = ARC9FAS.Cloth_Movement, t = 54 / 45},
            {s = path .. "magout_empty.wav", t = 57 / 45},
            {s = ARC9FAS.MagPouch_SMG, t = 69 / 45},
            {s = path .. "magin_partial.wav", t = 82 / 45},
            {s = ARC9FAS.Cloth_Movement, t = 82 / 45},
            {s = path .. "magin.wav", t = 96 / 45},
            {s = ARC9FAS.Cloth_Movement, t = 96 / 45},
        },
        IKTimeLine = {
            {
                t = 0,
                lhik = 1,
                rhik = 1
            },
            {
                t = 0.25,
                lhik = 0,
                rhik = 0
            },
            {
                t = 0.75,
                lhik = 0,
                rhik = 0
            },
            {
                t = 1,
                lhik = 1,
                rhik = 1
            },
        },
    },
}

SWEP.SuppressCumulativeShoot = true
SWEP.SuppressDefaultEvents = true

-------------------------- ATTACHMENTS

SWEP.AttachmentElements = {
    ["rail"] = {
        Bodygroups = {
            {1, 1}
        }
    },
}

SWEP.Attachments = {
    {
        PrintName = "MUZZLE",
        Category = "9mm_supp_pistol",
        Bone = "frame",
        Pos = Vector(15.5, -0.2, 0.7),
        Ang = Angle(0, 0, 0),
    },/*
    {
        PrintName = "OPTIC",
        Category = "fas_optic",
        Bone = "frame",
        Pos = Vector(-1.75, 0.025, 3.25),
        Ang = Angle(0, 0, 0),
        CorrectiveAng = Angle(0.6, -0.6, 0),
        InstalledElements = {
            "rail"
        }
    },
    {
        PrintName = "UBGL",
        Category = "fas_ubgl",
        Bone = "frame",
        Pos = Vector(6.5, -0.2, -0.5),
        Ang = Angle(0, 180, 0),
    },
    {
        PrintName = "PERK",
        Category = "fas_perk",
        Bone = "frame",
        Pos = Vector(-3, 0, 0),
        Ang = Angle(0, 0, 0),
    },*/
    {
        PrintName = "AMMO",
        Category = "9x19mm_ammo_bullet",
        Bone = "frame",
        Pos = Vector(0, 0, -2),
        Ang = Angle(0, 0, 0),
    },/*
    {
        PrintName = "CHARM",
        Category = "charm",
        Bone = "frame",
        Pos = Vector(-6, -0.78, 1.9),
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "STICKER",
        StickerModel = "models/weapons/arc9_fas/stickers/uzi_a.mdl",
        Category = "stickers",
    },*/
}