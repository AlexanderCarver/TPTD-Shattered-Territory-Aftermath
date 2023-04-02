AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "[TPTD: STA] Weapons"
SWEP.SubCategory = "Штурмовые винтовки"

SWEP.PrintName = "FG 42"

SWEP.Class = "Assault Rifle"

SWEP.Trivia = {
    Manufacturer = "Rheinmetall",
    Calibre = "7.92x57mm Mauser",
    Mechanism = "Gas-Operated Rotating Bolt",
    Origin = "Germany",
    Year = "1943"
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "New World Interactive",
}

SWEP.Description = [[Early selective-fire automatic rifle developed for paratrooper infantry. Offers tremendous power at a rapid fire rate, but with very slow handling.]]

SWEP.ViewModel = "models/weapons/arc9_doi/c_fg42.mdl"
SWEP.WorldModel = "models/weapons/w_rif_ak47.mdl"

SWEP.ViewModelFOVBase = 60

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-9, 5, -7),
    TPIKPos = Vector(-9, 5, -7),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = "0000000000000000000000"
SWEP.DefaultSkin = 0

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 60 -- Damage done at point blank range
SWEP.DamageMin = 40 -- Damage done at maximum range

SWEP.RangeMin = 0
SWEP.RangeMax = 7500

SWEP.ImpactForce = 8 -- Force that bullets apply on hit

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Penetration = 17 -- Units of wood that can be penetrated by this gun.
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

SWEP.PhysBulletMuzzleVelocity = 2400 * 12 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

-------------------------- MAGAZINE

SWEP.Ammo = "7.92x57mm" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.BarrelLength = 32

SWEP.DryFireDelay = 0.25
-------------------------- FIREMODES

SWEP.RPM = 750

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

SWEP.TriggerDelay = true
SWEP.TriggerDelayTime = 60 / 750 / 2
SWEP.TriggerDelayCancellable = false
SWEP.TriggerDelayRepeat = true
SWEP.TriggerStartFireAnim = true

-------------------------- RECOIL

SWEP.Recoil = 2

SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.75 -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 0.25
SWEP.RecoilRandomSide = 0.25

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilPatternDrift = 60

-------------------------- SPREAD

SWEP.Spread = 0 -- And so it shall be.

-------------------------- HANDLING

SWEP.FreeAimRadius = 15
SWEP.FreeAimRadiusMultSights = 0

SWEP.Sway = 0.75
SWEP.SwayMultSights = 0.1
SWEP.SwayMultMove = 1.5

SWEP.AimDownSightsTime = 0.42 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.42 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.92

-------------------------- SOUNDS

SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/arc9_doi/fg42/fg42_fp.wav"
SWEP.DistantShootSound = "weapons/arc9_doi/fg42/fg42_dist.wav"

SWEP.DryFireSound = "weapons/arc9_doi/fg42/handling/fg42_empty.wav"
SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ARC9DOI.AimIn
SWEP.ExitSightsSound = ARC9DOI.AimOut

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_1" -- Used for some muzzle effects.

SWEP.AfterShotEffect = "arc9_aftershoteffect"
SWEP.AfterShotParticle = nil -- Particle to spawn after shooting

SWEP.ShellModel = "models/weapons/arc9_doi/shells/762x51.mdl"
SWEP.ShellScale = 1.3

SWEP.ShellSmoke = true

SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.
SWEP.CamQCA = 6
SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.

SWEP.BulletBones = {
    [0] = "Bullet_1",
    [1] = "Bullet_1",
    [2] = "Bullets",
}

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.21, -5, 1.08),
    Ang = Angle(0.1, 0.6, 9),
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

-------------------------- Bipod

SWEP.Bipod = true
SWEP.RecoilUpMultBipod = 0.1
SWEP.SwayMultBipod = 0.1

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

local path = "weapons/arc9_doi/fg42/handling/fg42_"

SWEP.Animations = {
    ["idle"] = { Source = "base_idle" },
    ["idle_empty"] = { Source = "empty_idle" },
    ["fire"] = { Mult = 0.667, Source = {
        "base_fire",
        "base_fire2",
    } },
    ["fire_iron"] = { Mult = 0.667, Source = {
        "iron_fire_1",
        "iron_fire_2",
        "iron_fire_3",
    } },
    ["fire_empty"] = { Mult = 1, Source = "base_firelast" },
    ["fire_iron_empty"] = { Mult = 1, Source = "iron_firelast" },
    ["dryfire"] = { Source = "base_dryfire" },
    ["dryfire_iron"] = { Source = "iron_dryfire" },
    ["bash"] = { Source = "base_melee_end" },
    ["bash_empty"] = { Source = "base_melee_end_empty" },
    ["reload"] = { Source = "base_reload", MinProgress = 0.75, EventTable = {
        {t = 35 / 33, s = path .. "magrelease.wav"},
        {t = 40 / 33, s = path .. "magout.wav"},
        {t = 50 / 33, s = path .. "mag_fetch.wav"},
        {t = 107 / 33, s = path .. "magin.wav"},
        {t = 117 / 33, s = path .. "maghit.wav"},
        {t = 142 / 33, s = path .. "rattle.wav"},
    } },
    ["reload_empty"] = { Source = "base_reloadempty", MinProgress = 0.75, EventTable = {
        {t = 30 / 33, s = path .. "boltback.wav"},
        {t = 88 / 33, s = path .. "magrelease.wav"},
        {t = 93 / 33, s = path .. "magout.wav"},
        {t = 103 / 33, s = path .. "mag_fetch.wav"},
        {t = 160 / 33, s = path .. "magin.wav"},
        {t = 166 / 33, s = path .. "maghit.wav"},
        {t = 193 / 33, s = path .. "rattle.wav"},
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
    ["firemode"] = { Source = "base_fireselect" },
    ["firemode_iron"] = { Source = "iron_fireselect" },
    ["firemode_empty"] = { Source = "base_fireselect_empty" },
    ["firemode_iron_empty"] = { Source = "iron_fireselect_empty" },
    ["enter_bipod"] = { Source = "deployed_in", EventTable = {
        {t = 20 / 36, s = ARC9DOI.BipodInStart},
        {t = 28 / 36, s = ARC9DOI.BipodInEnd},
    } },
    ["exit_bipod"] = { Source = "deployed_out", EventTable = {
        {t = 30 / 36, s = ARC9DOI.BipodRetract},
    } },
    ["enter_bipod_empty"] = { Source = "deployed_in_empty", EventTable = {
        {t = 20 / 36, s = ARC9DOI.BipodInStart},
        {t = 28 / 36, s = ARC9DOI.BipodInEnd},
    } },
    ["exit_bipod_empty"] = { Source = "deployed_out_empty", EventTable = {
        {t = 30 / 36, s = ARC9DOI.BipodRetract},
    } },
    ["idle_bipod"] = { Source = "deployed_idle" },
    ["idle_iron_bipod"] = { Source = "deployed_iron_idle" },
    ["idle_bipod_empty"] = { Source = "deployed_idle_empty" },
    ["idle_iron_bipod_empty"] = { Source = "deployed_iron_idle_empty" },
    ["fire_bipod"] = { Source = {
        "deployed_fire_1",
        "deployed_fire_2"
    } },
    ["fire_iron_bipod"] = { Source = {
        "deployed_iron_fire_1",
        "deployed_iron_fire_2"
    } },
    ["dryfire_bipod"] = { Source = "deployed_dryfire" },
    ["dryfire_iron_bipod"] = { Source = "deployed_iron_dryfire" },
    ["firemode_bipod"] = { Source = "deployed_fireselect" },
    ["trigger_bipod"] = { Source = "deployed_dryfire", EventTable = {
        {t = 0, s = path .. "empty.wav"}
    } },
    ["trigger_iron_bipod"] = { Source = "deployed_iron_dryfire", EventTable = {
        {t = 0, s = path .. "empty.wav"}
    } },
    ["reload_bipod"] = { Source = "deployed_reload", MinProgress = 0.75, MagSwapTime = 2, EventTable = {
        {t = 35 / 33, s = path .. "magrelease.wav"},
        {t = 40 / 33, s = path .. "magout.wav"},
        {t = 50 / 33, s = path .. "mag_fetch.wav"},
        {t = 107 / 33, s = path .. "magin.wav"},
        {t = 117 / 33, s = path .. "maghit.wav"},
        {t = 142 / 33, s = path .. "rattle.wav"},
    } },
    ["reload_bipod_empty"] = { Source = "deployed_reload_empty", MinProgress = 0.75, MagSwapTime = 2, EventTable = {
        {t = 30 / 33, s = path .. "boltback.wav"},
        {t = 88 / 33, s = path .. "magrelease.wav"},
        {t = 93 / 33, s = path .. "magout.wav"},
        {t = 103 / 33, s = path .. "mag_fetch.wav"},
        {t = 160 / 33, s = path .. "magin.wav"},
        {t = 166 / 33, s = path .. "maghit.wav"},
        {t = 193 / 33, s = path .. "rattle.wav"},
    } },
    ["firemode"] = { Source = "deployed_fireselect" },
    ["firemode_empty"] = { Source = "deployed_fireselect_empty" },
}

-------------------------- ATTACHMENTS

SWEP.CustomCamoTexture = "models/weapons/arc9_doi/fg42/weapon_fg42_dm"
SWEP.CustomCamoScale = 4
SWEP.CustomCamoScale_Priority = 2
SWEP.CustomBlendFactor = 1

SWEP.AttachmentElements = {
    ["camo"] = {
        Skin = 1
    },
    ["doi_perk_sling"] = {
        Bodygroups = {
            {3, 1}
        }
    },
    ["doi_perk_bayonet"] = {
        Bodygroups = {
            {2, 1}
        }
    }
}

SWEP.Attachments = {
    {
        PrintName = "BARREL",
        Category = {"doi_perk_bayonet"},
        Bone = "Weapon",
        Pos = Vector(0, 16, 4),
        Ang = Angle(0, -90, 0)
    },/*
    {
        PrintName = "AMMO",
        Category = {"doi_perk_sc_bullets", "doi_perk_hv_bullets"},
        Bone = "Weapon",
        Pos = Vector(0, 1.25, -1),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "RECEIVER",
        Category = {"doi_perk_trigger", "doi_perk_spring"},
        Bone = "Weapon",
        Pos = Vector(0, -4, 3),
        Ang = Angle(0, -90, 0)
    },*/
    {
        PrintName = "REAR",
        Category = {"doi_perk_sling"},
        Bone = "Weapon",
        Pos = Vector(0, -16, 2),
        Ang = Angle(0, -90, 0)
    },/*
    {
        PrintName = "CHARM",
        Category = "charm",
        Bone = "Weapon",
        Pos = Vector(0.6, -5, 1.5),
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
        StickerModel = "models/weapons/arc9_doi/stickers/fg42_a.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/fg42_b.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/fg42_c.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/fg42_d.mdl"
    },*/
}