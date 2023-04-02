AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "[TPTD: STA] Weapons"
SWEP.SubCategory = "Пистолеты-пулемёты"

SWEP.PrintName = "MP 40"

SWEP.Class = "Submachine Gun"

SWEP.Trivia = {
    Manufacturer = "Erma Werke",
    Calibre = "9x19mm Parabellum",
    Mechanism = "Straight Blowback Open Bolt",
    Origin = "Germany",
    Year = "1940"
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "New World Interactive",
}

SWEP.Description = [[Cheap, mass-produced SMG used by German forces during World War 2.]]

SWEP.ViewModel = "models/weapons/arc9_doi/c_mp40.mdl"
SWEP.WorldModel = "models/weapons/w_smg_mp5.mdl"

SWEP.ViewModelFOVBase = 60

SWEP.Slot = 2

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos =  Vector(-6, 3.5, -6),
    TPIKPos = Vector(-4, 4, -4),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = "0000000000000000000000"
SWEP.DefaultSkin = 0

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 30 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

SWEP.RangeMin = 0
SWEP.RangeMax = 5500

SWEP.ImpactForce = 4 -- Force that bullets apply on hit

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Penetration = 8 -- Units of wood that can be penetrated by this gun.
SWEP.PenetrationDelta = 0.25 -- The damage multiplier after all penetration distance is spent.

SWEP.RicochetAngleMax = 45 -- Maximum angle at which a ricochet can occur. Between 1 and 90. Angle of 0 is impossible but would theoretically always ricochet.
SWEP.RicochetChance = 0.5 -- If the angle is right, what is the chance that a ricochet can occur?

SWEP.DamageType = DMG_BULLET -- The damage type of the gun.

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1.15,
    [HITGROUP_STOMACH] = 1.1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}


-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 1300 * 12 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

-------------------------- MAGAZINE

SWEP.Ammo = "9x19mm" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 32 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.BarrelLength = 32

SWEP.DryFireDelay = 0.25
-------------------------- FIREMODES

SWEP.RPM = 500

SWEP.Firemodes = {
    {
        Mode = -1,
    }
}

SWEP.TriggerDelay = true
SWEP.TriggerDelayTime = 60 / 500 / 2.25
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayRepeat = true
SWEP.TriggerStartFireAnim = true

-------------------------- RECOIL

SWEP.Recoil = 0.5

SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 0.5
SWEP.RecoilRandomSide = 0.5

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilPatternDrift = 60

-------------------------- SPREAD

SWEP.Spread = 0 -- And so it shall be.

-------------------------- HANDLING

SWEP.FreeAimRadius = 5
SWEP.FreeAimRadiusMultSights = 0

SWEP.Sway = 0.5
SWEP.SwayMultSights = 0.1
SWEP.SwayMultMove = 1.25

SWEP.AimDownSightsTime = 0.30 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.40 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.96

-------------------------- SOUNDS

SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/arc9_doi/mp40/mp40_fp.wav"
SWEP.DistantShootSound = "weapons/arc9_doi/mp40/mp40_dist.wav"

SWEP.DryFireSound = "weapons/arc9_doi/mp40/handling/mp40_empty.wav"
SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ARC9DOI.AimIn
SWEP.ExitSightsSound = ARC9DOI.AimOut

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_smg" -- Used for some muzzle effects.

SWEP.AfterShotEffect = "arc9_aftershoteffect"
SWEP.AfterShotParticle = nil -- Particle to spawn after shooting

SWEP.ShellModel = "models/weapons/arc9_doi/shells/9x19.mdl"
SWEP.ShellScale = 1.3

SWEP.ShellSmoke = true

SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.
SWEP.CamQCA = 3
SWEP.CamCoolView = true -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.255, -5, 0.7),
    Ang = Angle(0, 0.35, 0),
    Magnification = 1,
    ViewModelFOV = 60
}

SWEP.SightMidPoint = { -- Where the gun should be at the middle of it's irons
    Pos = Vector(0, 0, 0),
    Ang = Angle(0, 0, 15),
}

SWEP.ActivePos = Vector(0, 0, 0)
SWEP.ActiveAng = Angle(0, 0, 0)

SWEP.MovingPos = Vector(0, -2, 0)
SWEP.MovingAng = Angle(0, 0, 0)

-- Position when crouching
SWEP.CrouchPos = Vector(-1, 0, 1.5)
SWEP.CrouchAng = Angle(0, 0, 0)

-- Position when sprinting or safe
SWEP.RestPos = Vector(5, 2, 1)
SWEP.RestAng = Angle(45, -15, 0)


SWEP.HolsterPos = Vector(0, 0, -5)
SWEP.HolsterAng = Angle(0, -15, 25)

SWEP.SprintMidPoint = {
    Pos = Vector(4, 0, -4),
    Ang = Angle(0, 0, 0)
}

-- Position for customizing
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(20, 42, 4)
SWEP.CustomizeRotateAnchor = Vector(15, -3.255, -3)

SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0, 8, 4)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.BipodPos = Vector(0, 0, 0)
SWEP.BipodAng = Angle(0, 0, 0)

SWEP.PeekPos = Vector(2, 0, -2)
SWEP.PeekAng = Angle(0, 0, 0)

SWEP.HeightOverBore = 1

-------------------------- HoldTypes

SWEP.HoldType = "ar2"
SWEP.HoldTypeSprint = "passive"
SWEP.HoldTypeHolstered = nil
SWEP.HoldTypeSights = "ar2"
SWEP.HoldTypeCustomize = "slam"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false
SWEP.AnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

local path = "weapons/arc9_doi/mp40/handling/mp40_"

SWEP.Animations = {
    ["idle"] = { Source = "idle" },
    ["idle_empty"] = { Source = "empty_idle" },
    ["idle_uncycled"] = { Source = "empty_idle" },
    ["fire"] = { Source = {
        "base_fire",
        "base_fire2",
        "base_fire3"
    } },
    ["fire_iron"] = { Source = {
        "iron_fire_a",
        "iron_fire_b",
        "iron_fire_c",
        "iron_fire_d",
        "iron_fire_e",
        "iron_fire_f"
    } },
    ["fire_empty"] = { Source = "base_firelast" },
    ["fire_empty_iron"] = { Source = "iron_firelast" },
    ["dryfire"] = { Source = "base_dryfire" },
    ["dryfire_iron"] = { Source = "iron_dryfire" },
    ["bash"] = { Source = "base_melee_bash" },
    ["bash_empty"] = { Source = "empty_melee_bash" },
    ["reload"] = { Source = "base_reload", MinProgress = 0.75, EventTable = {
        {t = 12 / 30, s = path .. "magrelease.wav"},
        {t = 15 / 30, s = path .. "magout.wav"},
        {t = 64 / 30, s = path .. "magin.wav"},
        {t = 66 / 30, s = path .. "maghit.wav"},
    } },
    ["reload_empty"] = { Source = "base_reloadempty", MinProgress = 0.75, EventTable = {
        {t = 14 / 30, s = path .. "boltback.wav"},
        {t = 20 / 30, s = path .. "boltlock.wav"},
        {t = 41 / 30, s = path .. "magrelease.wav"},
        {t = 46 / 30, s = path .. "magout.wav"},
        {t = 95 / 30, s = path .. "magin.wav"},
        {t = 97 / 30, s = path .. "maghit.wav"},
        {t = 114 / 30, s = path .. "boltunlock.wav"},
    } },
    ["ready"] = { Source = "base_ready", MinProgress = 1, FireASAP = true, EventTable = {
        {t = 0 / 30, s = ARC9DOI.Draw},
        {t = 18 / 30, s = path .. "boltunlock.wav"},
        {t = 41 / 30, s = ARC9DOI.LeanIn},
    } },
    ["draw"] = { Source = "base_draw", EventTable = {
        {t = 0, s = ARC9DOI.Draw},
    } },
    ["holster"] = { Source = "base_holster", EventTable = {
        {t = 0, s = ARC9DOI.Holster},
    } },
    ["draw_empty"] = { Source = "base_draw_empty", EventTable = {
        {t = 0, s = ARC9DOI.Draw},
    } },
    ["holster_empty"] = { Source = "base_holster_empty", EventTable = {
        {t = 0, s = ARC9DOI.Holster},
    } },
}

-------------------------- ATTACHMENTS

SWEP.CustomCamoTexture = "models/weapons/arc9_doi/g43/weapon_g43_worn_dm"
SWEP.CustomCamoScale = 2
SWEP.CustomCamoScale_Priority = 2
SWEP.CustomBlendFactor = 1

SWEP.AttachmentElements = {
    ["camo"] = {
        Skin = 1
    },
    ["doi_perk_sling"] = {
        Bodygroups = {
            {1, 1}
        }
    },
    ["doi_perk_stock"] = {
        Bodygroups = {
            {2, 1}
        }
    }
}

SWEP.Attachments = {
    /*{
        PrintName = "OPTIC",
        Category = {"doi_optic_zf4"},
        Bone = "Weapon",
        Pos = Vector(0, 1, 4),
        Ang = Angle(0, -90, 0),
        CorrectiveAng = Angle(-0.25, 0.334, 0),
    },*/
    {
        PrintName = "AMMO",
        Category = {"9x19mm_ammo_bullet"},
        Bone = "Weapon",
        Pos = Vector(0, 11, -4),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "REAR",
        Category = {"doi_perk_sling", "doi_perk_stock"},
        Bone = "Weapon",
        Pos = Vector(0, -4, 0),
        Ang = Angle(0, -90, 0)
    },/*
    {
        PrintName = "BARREL",
        Category = {"doi_perk_bash", "doi_perk_recoil"},
        Bone = "Weapon",
        Pos = Vector(0, 16, 2),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "RECEIVER",
        Category = {"doi_perk_trigger", "doi_perk_reload"},
        Bone = "Weapon",
        Pos = Vector(0, 1, 1),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "CHARM",
        Category = "charm",
        Bone = "Weapon",
        Pos = Vector(1.05, 2, 1),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "CAMO",
        Category = "universal_camo",
        InstalledElements = {"camo"},
        CosmeticOnly = true,
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/mp40_a.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/mp40_b.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/mp40_c.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/mp40_d.mdl"
    },*/
}