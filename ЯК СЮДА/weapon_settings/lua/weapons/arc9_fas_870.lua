AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "[TPTD: STA] Weapons"
SWEP.SubCategory = "Дробовики"

SWEP.PrintName = "Remington 870"

SWEP.Class = "Shotgun"

SWEP.Trivia = {
    Designer = "L.Ray Crittendon, Phillip Haskell, Ellis Hailston, G.E. Pinckney",
    Manufacturer = "Remington Arms",
    Calibre = "12 Gauge",
    Mechanism = "Pump Action",
    Origin = "United States of America",
    Year = "1950"
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "Firearms: Source Team",
}

SWEP.Description = [[A reliable, standard pump action shotgun.]]

SWEP.ViewModel = "models/weapons/arc9_fas/shotguns/870.mdl"
SWEP.WorldModel = "models/weapons/w_shot_m3super90.mdl"

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-8, 4, -6),
    TPIKPos = Vector(-15, 3, 3),
    Ang = Angle(-10, 0, 180),
    Scale = 0.75
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = "0000000000000000000000"

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 130 -- Damage done at point blank range
SWEP.DamageMin = 100 -- Damage done at maximum range

SWEP.Num = 8

SWEP.DistributeDamage = true

SWEP.DamageRand = 0.1 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.RangeMin = 1700 -- How far bullets retain their maximum damage for.
SWEP.RangeMax = 4200 -- In Hammer units, how far bullets can travel before dealing DamageMin.

SWEP.Penetration = 1 -- Units of wood that can be penetrated by this gun.
SWEP.RicochetChance = 0.1

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 1.15,
    [HITGROUP_CHEST] = 1.1,
    [HITGROUP_STOMACH] = 1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.9,
    [HITGROUP_RIGHTLEG] = 0.9,
}

-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1410.76 * 12
SWEP.PhysBulletGravity = 2
SWEP.PhysBulletDrag = 3

-------------------------- MAGAZINE

SWEP.Ammo = "12x70mm" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 7 -- Self-explanatory.
SWEP.SupplyLimit = 0 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadInSights = true -- This weapon can aim down sights while reloading.

-------------------------- FIREMODES

SWEP.RPM = 300

SWEP.Firemodes = {
    {
        Mode = 1
    }
}

SWEP.ManualAction = true
SWEP.ShotgunReload = true

SWEP.BarrelLength = 24

-------------------------- RECOIL

-- General recoil multiplier
SWEP.Recoil = 1

-- These multipliers affect the predictible recoil by making the pattern taller, shorter, wider, or thinner.
SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

-- These values determine how much extra movement is applied to the recoil entirely randomly, like in a circle.
-- This type of recoil CANNOT be predicted.
SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilDissipationRate = 50 -- How much recoil dissipates per second.
SWEP.RecoilResetTime = 0.05 -- How long the gun must go before the recoil pattern starts to reset.

SWEP.RecoilAutoControl = 1
SWEP.RecoilAutoControlHipFire = 2.5

SWEP.RecoilKick = 1

SWEP.UseVisualRecoil = true

SWEP.PhysicalVisualRecoil = true

SWEP.VisualRecoilUp = 8 -- Vertical tilt for visual recoil.F
SWEP.VisualRecoilSide = 0.8 -- Horizontal tilt for visual recoil.
SWEP.VisualRecoilRoll = 30 -- Roll tilt for visual recoil.
SWEP.VisualRecoilPunch = 0.5

SWEP.VisualRecoil = 1
SWEP.VisualRecoilMultSights = 1
SWEP.VisualRecoilPositionBump = 1.5

SWEP.VisualRecoilDampingConst = 40
SWEP.VisualRecoilSpringMagnitude = 1

SWEP.VisualRecoilCenter = Vector(4.525, 4, -3)

-------------------------- SPREAD

SWEP.Spread = 0.03

-------------------------- HANDLING

SWEP.FreeAimRadius = 6 -- In degrees, how much this gun can free aim in hip fire.

SWEP.Sway = 1.5 -- How much the gun sways.

SWEP.SwayMultMidAir = 4
SWEP.SwayMultMove = 1.75
SWEP.SwayMultCrouch = 0.25
SWEP.SwayMultShooting = 1.5

SWEP.FreeAimRadiusMultSights = 0

SWEP.SwayMultSights = 0.3

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.3 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95
SWEP.SpeedMultSights = 0.75
SWEP.SpeedMultShooting = 1
SWEP.SpeedMultCrouch = 1

-------------------------- TRACERS

SWEP.TracerNum = 1 -- Tracer every X
SWEP.TracerColor = Color(255, 225, 200) -- Color of tracers. Only works if tracer effect supports it. For physical bullets, this is compressed down to 9-bit color.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.85, -10, 3.5) * 0.75,
    Ang = Angle(0, 0, 0),
    Midpoint = { -- Where the gun should be at the middle of it's irons
        Pos = Vector(-4, 0, -8),
        Ang = Angle(0, 0, 0),
    },
    Magnification = 1.1,
}

SWEP.SprintAng = Angle(30, -15, 0)
SWEP.SprintPos = Vector(5, -4, 0)

SWEP.ViewModelFOVBase = 55
SWEP.ActivePos = Vector(0, 0, -1)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.CrouchPos = Vector(-1, -3, -3)
SWEP.CrouchAng = Angle(0, 0, 0)

SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(22, 42, 5)
SWEP.CustomizeSnapshotFOV = 100

SWEP.BipodPos = Vector(0, 0, 0)

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "normal"
SWEP.HoldTypeHolstered = "normal"
SWEP.HoldTypeSights = "rpg"
SWEP.HoldTypeCustomize = "slam"
SWEP.HoldTypeBlindfire = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_shotgun" -- Used for some muzzle effects.

SWEP.ShellModel = "models/weapons/arc9_fas/shells/12g_buck.mdl"
SWEP.ShellCorrectAng = Angle(0, 0, 0)
SWEP.ShellScale = 1
SWEP.ShellPhysBox = Vector(0.5, 0.5, 2)
SWEP.EjectDelay = 0
SWEP.CaseEffectQCA = 2

SWEP.ShellSounds = ARC9.ShotgunShellSoundsTable

SWEP.AfterShotParticle = "barrel_smoke_plume"

SWEP.CamQCA = 1
SWEP.CamQCA_Mult = 1
SWEP.CamCoolView = true

SWEP.ExtraShellModels = {
    [1] = {
        model = "models/weapons/arc9_fas/shells/12g_wad.mdl",
        physbox = Vector(1, 1, 1),
        material = ""
    },
}

-------------------------- SOUNDS

local path = "weapons/arc9_fas/rem870/rem870_"
local common = "weapons/arc9_fas/"

local insert = {
    path .. "insert1.wav",
    path .. "insert2.wav",
    path .. "insert3.wav",
}

SWEP.ShootSound = path .. "fire1.wav"
SWEP.DistantShootSound = "^" .. path .. "distance_fire1.wav"
SWEP.ShootSoundSilenced = common .. "svd/svd_suppressed_fire1.wav"
SWEP.DryFireSound = common .. "empty_shotguns.wav"

SWEP.DryFireSingleAction = true

SWEP.TriggerDownSound = common .. "empty/triggerpull_pistol.wav"
SWEP.TriggerUpSound = common .. "empty/triggerrelease_pistol.wav"

SWEP.EnterSightsSound = ARC9FAS.SightRaise
SWEP.ExitSightsSound = ARC9FAS.SightLower

SWEP.FiremodeSound = ARC9FAS.Switch

local PumpBack = {
    path .. "pump_back.wav",
    path .. "pump_back1.wav",
    path .. "pump_back2.wav",
}

local PumpForward = {
    path .. "pump_forward.wav",
    path .. "pump_forward1.wav",
    path .. "pump_forward2.wav",
}

SWEP.Animations = {
    ["draw"] = {
        HideBoneIndex = 2,
        Source = "draw",
        EventTable = {
            {s = ARC9FAS.Deploy, t = 0},
        }
    },
    ["holster"] = {
        HideBoneIndex = 2,
        Source = "holster",
        EventTable = {
            {s = ARC9FAS.Holster, t = 0},
        }
    },
    ["ready"] = {
        Source = "deploy_first",
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0 / 33},
            {s = ARC9FAS.Switch, t = 31 / 33},
            {s = ARC9FAS.Cloth_Movement, t = 31 / 33},
            {s = path .. "pump_back1.wav", t = 68 / 33},
            {s = ARC9FAS.Cloth_Movement, t = 68 / 33},
            {s = path .. "pump_forward1.wav", t = 103 / 33},
            {s = ARC9FAS.Cloth_Movement, t = 103 / 33},
            {s = path .. "insert1.wav", t = 189 / 33},
            {s = ARC9FAS.Cloth_Movement, t = 189 / 33},
        }
    },
    ["fire"] = {
        Source = "fire01_scoped"
    },
    ["fire_iron"] = {
        Source = "fire01_scoped"
    },
    ["cycle"] = {
        HideBoneIndex = 2,
        Source = "pump02",
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = PumpBack, t = 0 / 30},
            {s = PumpForward, t = 11 / 30},
        }
    },
    ["cycle_iron"] = {
        HideBoneIndex = 2,
        Source = "pump01_scoped",
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = PumpBack, t = 0 / 30},
            {s = PumpForward, t = 11 / 30},
        }
    },
    ["cycle_proficient"] = {
        HideBoneIndex = 2,
        Source = "pump01_nomen",
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = PumpBack, t = 5 / 48},
            {s = PumpForward, t = 12 / 48},
            {s = ARC9FAS.Cloth_Movement, t = 12 / 48},
        }
    },
    ["cycle_iron_proficient"] = {
        HideBoneIndex = 2,
        Source = "pump01_nomen_scoped",
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = PumpBack, t = 0 / 40},
            {s = PumpForward, t = 11 / 40},
        }
    },
    ["reload_start"] = {
        HideBoneIndex = 2,
        Source = "reload_start"
    },
    ["reload_start_empty"] = {
        HideBoneIndex = 1,
        Source = "reload_start_empty",
        RestoreAmmo = 1,
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = PumpBack, t = 0},
            {s = ARC9FAS.MagPouch_Pistol, t = 12 / 30},
            {s = common .. "m3s90p/m3s90_load_ejectorport.wav", t = 35 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 35 / 30},
            {s = PumpForward, t = 50 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 50 / 30},
        }
    },
    ["reload_start_empty_sighted"] = {
        HideBoneIndex = 2,
        Source = "reload_start"
    },
    ["reload_start_empty_sighted_proficient"] = {
        HideBoneIndex = 2,
        Source = "reload_start_nomen"
    },
    ["reload_insert"] = {
        HideBoneIndex = 1,
        Source = "reload",
        DelayedIdle = true,
        EventTable = {
            {s = ARC9FAS.MagPouch_Pistol, t = 2 / 30},
            {s = insert, t = 5 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 5 / 30},
        }
    },
    ["reload_finish"] = {
        HideBoneIndex = 2,
        Source = "reload_end"
    },
    ["reload_finish_empty"] = {
        HideBoneIndex = 2,
        Source = "reload_end"
    },
    ["reload_finish_empty_sighted"] = {
        HideBoneIndex = 1,
        Source = "reload_end_pump",
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = PumpBack, t = 14 / 30},
            {s = PumpForward, t = 21 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 21 / 30},
        }
    },
    ["reload_start_empty_sighted"] = {
        HideBoneIndex = 2,
        Source = "reload_start"
    },
    ["reload_start_empty_sighted_proficient"] = {
        HideBoneIndex = 2,
        Source = "reload_start_nomen"
    },
    ["reload_start_proficient"] = {
        HideBoneIndex = 2,
        Source = "reload_start_nomen"
    },
    ["reload_start_empty_proficient"] = {
        HideBoneIndex = 1,
        Source = "reload_start_empty_nomen",
        RestoreAmmo = 1,
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = PumpBack, t = 2 / 30},
            {s = ARC9FAS.MagPouch_Pistol, t = 12 / 30},
            {s = common .. "m3s90p/m3s90_load_ejectorport.wav", t = 35 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 35 / 30},
            {s = PumpForward, t = 54 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 54 / 30},
        }
    },
    ["reload_insert_proficient"] = {
        HideBoneIndex = 1,
        Source = "reload_nomen",
        DelayedIdle = true,
        EventTable = {
            {s = ARC9FAS.MagPouch_Pistol, t = 0 / 30},
            {s = insert, t = 5 / 30},
            {s = ARC9FAS.Cloth_Movement, t = 5 / 30},
        }
    },
    ["reload_finish_proficient"] = {
        HideBoneIndex = 2,
        Source = "reload_end_nomen"
    },
    ["reload_finish_empty_proficient"] = {
        HideBoneIndex = 2,
        Source = "reload_end_nomen"
    },
    ["reload_finish_empty_sighted_proficient"] = {
        Source = "reload_end_pump_nomen",
        HideBoneIndex = 1,
        EventTable = {
            {s = ARC9FAS.Cloth_Movement, t = 0},
            {s = path .. "pump_back.wav", t = 14 / 40},
            {s = path .. "pump_forward.wav", t = 21 / 40},
            {s = ARC9FAS.Cloth_Movement, t = 21 / 40},
        }
    },
}

SWEP.SuppressCumulativeShoot = true
SWEP.SuppressDefaultEvents = true

-------------------------- ATTACHMENTS

SWEP.HideBones = {
    "shell01",
    "shell02"
}

SWEP.ReloadHideBoneTables = {
    [1] = {
        "shell01",
        "shell02"
    },
}

SWEP.Hook_PrimaryAttack = function(self)
    self:DoEject(1, 1)
end


SWEP.AttachmentElements = {
    ["fas_perk_proficiency"] = {
        ReloadTimeMult = 1
    },
    ["fas_ammo_shotgun"] = {
        Bodygroups = {
            {1, 1}
        }
    },
    ["sight"] = {
        ShotgunReloadIncludesChamber = false
    }
}

SWEP.Hook_TranslateAnimation = function(self, anim)
    if self:HasElement("sight") then
        return anim .. "_sighted"
    end
end

SWEP.Attachments = {
    /*{
        PrintName = "MUZZLE",
        Category = "fas_supp_shotgun",
        Bone = "Body",
        Pos = Vector(-5, 56, -3) * 0.75,
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "SIDERAIL",
        Category = "fas_ak_rail",
        Bone = "Body",
        Pos = Vector(-3.8, 18, -4) * 0.75,
        Ang = Angle(0, -90, 0),
        InstalledElements = {"sight"}
    },
    {
        PrintName = "TACTICAL",
        Category = "fas_tactical",
        Bone = "Body",
        Pos = Vector(-4.98, 51.5, -6) * 0.75,
        Ang = Angle(0, -90, 0),
    },*/
    {
        PrintName = "AMMO",
        Category = "12x70mm_ammo_shotgun",
        Bone = "Body",
        Icon_Offset = Vector(0, 0, 0),
        Pos = Vector(-4.8, 15, -3) * 0.75,
        Ang = Angle(0, 0, 90),
        Scale = 1.4,
        DuplicateModels = {
            {
                Bone = "shell01",
                Pos = Vector(-4.4, -7.6, -12.4) * 0.75,
                Ang = Angle(0, 0, 90),
            },
            {
                Bone = "shell02",
                Pos = Vector(-4.45, -7.6, -14.9) * 0.75,
            },
        }
    },/*
    {
        PrintName = "PERK",
        Category = "fas_perk",
        Bone = "Body",
        Pos = Vector(-5.4, 10, -6) * 0.75,
        Ang = Angle(0, 0, 0),
    },
    {
        PrintName = "CHARM",
        Category = "charm",
        Bone = "Body",
        Pos = Vector(-3.8, 23, -4) * 0.75,
        Ang = Angle(0, -90, 0),
    },
    {
        PrintName = "STICKER",
        StickerModel = "models/weapons/arc9_fas/stickers/870_a.mdl",
        Category = "stickers",
    },*/
}