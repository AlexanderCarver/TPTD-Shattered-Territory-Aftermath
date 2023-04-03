AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "[TPTD: STA] Weapons"
SWEP.SubCategory = "Штурмовые винтовки"

SWEP.PrintName = "StG 44"

SWEP.Class = "Assault Rifle"

SWEP.Trivia = {
    Manufacturer = "C.G. Haenel Waffen und Fahrradfabrik",
    Calibre = "7.92x33mm Kurz",
    Mechanism = "Gas-Operated Long-Stroke Piston, Closed Tilting Bolt",
    Origin = "Germany",
    Year = "1943"
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "New World Interactive",
}

SWEP.Description = [[The first successful assault rifle, the StG 44 sports better range than a submachine gun, while being more compact than a battle rifle.]]

SWEP.ViewModel = "models/weapons/arc9_doi/c_stg44.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"

SWEP.ViewModelFOVBase = 60

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-9, 3.5, -7),
    TPIKPos = Vector(-8, 1, -4),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = "0000000000000000000000"
SWEP.DefaultSkin = 0

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 45 -- Damage done at point blank range
SWEP.DamageMin = 25 -- Damage done at maximum range

SWEP.RangeMin = 0
SWEP.RangeMax = 7000

SWEP.ImpactForce = 6 -- Force that bullets apply on hit

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Penetration = 11 -- Units of wood that can be penetrated by this gun.
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

SWEP.PhysBulletMuzzleVelocity = 2250 * 12 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

-------------------------- MAGAZINE

SWEP.Ammo = "7.92x33mm" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 30 -- Self-explanatory.
SWEP.SupplyLimit = 0 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.BarrelLength = 32

SWEP.DryFireDelay = 0.25
-------------------------- FIREMODES

SWEP.RPM = 500

SWEP.Firemodes = {
    {
        Mode = -1,
    },
    {
        Mode = 1,
        RPMMult = 0.75,
        DamageMult = 1.25
    }
}

-------------------------- RECOIL

SWEP.Recoil = 1.5

SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.5 -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 0.1
SWEP.RecoilRandomSide = 0.1

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilPatternDrift = 60

-------------------------- SPREAD

SWEP.Spread = 0 -- And so it shall be.

-------------------------- HANDLING

SWEP.FreeAimRadius = 10
SWEP.FreeAimRadiusMultSights = 0

SWEP.Sway = 0.5
SWEP.SwayMultSights = 0.1
SWEP.SwayMultMove = 1.5

SWEP.AimDownSightsTime = 0.35 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.35 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.96

-------------------------- SOUNDS

SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/arc9_doi/stg44/stg44_fp.wav"
SWEP.DistantShootSound = "weapons/arc9_doi/stg44/stg44_dist.wav"

SWEP.DryFireSound = "weapons/arc9_doi/stg44/handling/stg44_empty.wav"
SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ARC9DOI.AimIn
SWEP.ExitSightsSound = ARC9DOI.AimOut

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_1" -- Used for some muzzle effects.

SWEP.AfterShotEffect = "arc9_aftershoteffect"
SWEP.AfterShotParticle = nil -- Particle to spawn after shooting

SWEP.ShellModel = "models/weapons/arc9_doi/shells/545x39.mdl"
SWEP.ShellScale = 1.3

SWEP.ShellSmoke = true

SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.
SWEP.CamQCA = 4
SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.01, -5, 0.7),
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
SWEP.CustomizeRotateAnchor = Vector(15, -3.01, -3)

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

local path = "weapons/arc9_doi/stg44/handling/stg44_"

SWEP.Animations = {
    ["idle"] = { Source = "idle" },
    ["fire"] = { Mult = 0.9, Source = {
        "base_fire",
        "base_fire2",
        "base_fire3"
    } },
    ["fire_iron"] = { Mult = 0.9, Source = {
        "iron_fire_1",
        "iron_fire_2",
        "iron_fire_3",
    } },
    ["dryfire"] = { Source = "base_dryfire" },
    ["dryfire_iron"] = { Source = "iron_dryfire" },
    ["bash"] = { Source = "base_melee_bash" },
    ["reload"] = { Source = "base_reload", MinProgress = 0.75, EventTable = {
        {t = 15 / 30, s = path .. "magrelease.wav"},
        {t = 18 / 30, s = path .. "magout.wav"},
        {t = 62 / 30, s = path .. "magin.wav"},
    } },
    ["reload_empty"] = { Source = "base_reloadempty", MinProgress = 0.75, EventTable = {
        {t = 22 / 32, s = path .. "magrelease.wav"},
        {t = 24 / 32, s = path .. "magout.wav"},
        {t = 74 / 32, s = path .. "magin.wav"},
        {t = 108 / 32, s = path .. "boltback.wav"},
        {t = 118 / 32, s = path .. "boltrelease.wav"},
    } },
    ["ready"] = { Source = "base_ready", MinProgress = 0.75, FireASAP = true, EventTable = {
        {t = 0 / 32, s = ARC9DOI.Draw},
        {t = 24 / 32, s = path .. "boltback.wav"},
        {t = 35 / 32, s = path .. "boltrelease.wav"},
        {t = 55 / 32, s = ARC9DOI.LeanIn},
    } },
    ["draw"] = { Source = "base_draw", EventTable = {
        {t = 0, s = ARC9DOI.Draw},
    } },
    ["holster"] = { Source = "base_holster", EventTable = {
        {t = 0, s = ARC9DOI.Holster},
    } },
    ["firemode"] = { Source = "base_fireselect" },
    ["firemode_iron"] = { Source = "iron_fireselect" },
}

-------------------------- ATTACHMENTS

SWEP.CustomCamoTexture = "models/weapons/arc9_doi/stg44/weapon_stg_dm"
SWEP.CustomCamoScale = 3
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
    {
        PrintName = "OPTIC",
        Category = "doi_optic_zf4",
        Bone = "STG44",
        Pos = Vector(0, -6, 7.3),
        Ang = Angle(0, -90, 0),
        CorrectiveAng = Angle(0, 0, 0),
    },/*
    {
        PrintName = "BARREL",
        Category = {"doi_perk_bash", "doi_perk_barrel"},
        Bone = "STG44",
        Pos = Vector(0, 16, 4),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "AMMO",
        Category = {"doi_perk_sc_bullets", "doi_perk_hv_bullets"},
        Bone = "STG44",
        Pos = Vector(0, 1.25, -1),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "RECEIVER",
        Category = {"doi_perk_burst", "doi_perk_reload"},
        Bone = "STG44",
        Pos = Vector(0, -4, 3),
        Ang = Angle(0, -90, 0)
    },*/
    {
        PrintName = "REAR",
        Category = {"doi_perk_sling"},
        Bone = "STG44",
        Pos = Vector(0, -16, 2),
        Ang = Angle(0, -90, 0)
    },/*
    {
        PrintName = "CHARM",
        Category = "charm",
        Bone = "STG44",
        Pos = Vector(0.14, -5, 4.2),
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
        StickerModel = "models/weapons/arc9_doi/stickers/stg44_a.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/stg44_b.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/stg44_c.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/stg44_d.mdl"
    },*/
}