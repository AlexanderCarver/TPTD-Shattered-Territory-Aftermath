AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "[TPTD: STA] Weapons"
SWEP.SubCategory = "Пулемёты"

SWEP.PrintName = "MG 34"

SWEP.Class = "Machine Gun"

SWEP.Trivia = {
    Manufacturer = "Rheinmetall",
    Calibre = "7.92x57mm Mauser",
    Mechanism = "Recoil-Operated Rotating Bolt",
    Origin = "Germany",
    Year = "1934"
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "New World Interactive",
}

SWEP.Description = [[Considered the first general-purpose machine gun, the MG 34 was the most advanced machine gun in the world when it was introduced.

Very inaccurate unless bipod is deployed.]]

SWEP.ViewModel = "models/weapons/arc9_doi/c_mg34.mdl"
SWEP.WorldModel = "models/weapons/w_mach_m249para.mdl"

SWEP.ViewModelFOVBase = 60

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-6, 4, -8),
    TPIKPos = Vector(-6, 4, -8),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = "0400000000000000000000"
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

SWEP.PhysBulletMuzzleVelocity = 2510 * 12 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

-------------------------- MAGAZINE

SWEP.Ammo = "7.92x57mm" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 50 -- Self-explanatory.
SWEP.SupplyLimit = 4 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.BarrelLength = 32

SWEP.DryFireDelay = 0.25
-------------------------- FIREMODES

SWEP.RPM = 1000

SWEP.Firemodes = {
    {
        Mode = -1,
        PrintName = "FAST"
    },
    {
        Mode = -1,
        PrintName = "SLOW",
        RPM = 600,
        RecoilPatternDriftMult = 0.1
    },
}

SWEP.TriggerDelay = true
SWEP.TriggerDelayTime = 0.1
SWEP.TriggerDelayCancellable = true
SWEP.TriggerDelayRepeat = false
SWEP.TriggerStartFireAnim = false

-------------------------- RECOIL

SWEP.Recoil = 2

SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 1 -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 0.75
SWEP.RecoilRandomSide = 0.75

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilPatternDrift = 180

-------------------------- SPREAD

SWEP.Spread = 0 -- And so it shall be.

-------------------------- HANDLING

SWEP.FreeAimRadius = 15
SWEP.FreeAimRadiusMultSights = 0

SWEP.Sway = 2.5
SWEP.SwayMultSights = 0.1
SWEP.SwayMultMove = 1.5

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.90

-------------------------- SOUNDS

SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/arc9_doi/mg34/mg34_fp.wav"
SWEP.DistantShootSound = "weapons/arc9_doi/mg34/mg34_dist.wav"

SWEP.DryFireSound = "weapons/arc9_doi/mg34/handling/mg34_empty.wav"
SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ARC9DOI.AimIn
SWEP.ExitSightsSound = ARC9DOI.AimOut

SWEP.HookP_TranslateSound = function(self, data)
    if data.name == "shootsound" then
        data.channel = CHAN_AUTO
    end

    return data
end

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_minimi" -- Used for some muzzle effects.

SWEP.AfterShotEffect = "arc9_aftershoteffect"
SWEP.AfterShotParticle = nil -- Particle to spawn after shooting

SWEP.ShellModel = "models/weapons/arc9_doi/shells/762x51.mdl"
SWEP.ShellScale = 1.3

SWEP.ShellSmoke = true

SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.
SWEP.CamQCA = 5
SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.031, -5, 1.75) * 1.3,
    Ang = Angle(0, 0.1, 0),
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
SWEP.CustomizeRotateAnchor = Vector(21.5, -3.165, -3)

SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0, 8, 4)
SWEP.CustomizeSnapshotAng = Angle(0, 0, 0)
SWEP.CustomizeNoRotate = false

SWEP.BipodPos = Vector(0, 0, 0)
SWEP.BipodAng = Angle(0, 0, 0)

SWEP.PeekPos = Vector(2, 0, -2)
SWEP.PeekAng = Angle(0, 0, 0)

SWEP.HeightOverBore = 1

SWEP.BulletBones = {
    [0] = "Ammo_00",
    [1] = "Ammo_01",
    [2] = "Ammo_02",
    [3] = "Ammo_03",
    [4] = "Ammo_04",
}

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

local path = "weapons/arc9_doi/mg34/handling/mg34_"

SWEP.EnterBipodSound = path .. "bipoddeploy.wav"
SWEP.ExitBipodSound = path .. "bipodretract.wav"

SWEP.Animations = {
    ["idle"] = { Source = "base_idle", RareSource = "base_idle_fidget", Time = 1.9 },
    ["idle_iron"] = { Source = "base_idle" },
    ["fire"] = { Source = {
        "base_fire_1",
        "base_fire_2"
    } },
    ["fire_iron"] = { Source = {
        "iron_fire_1",
        "iron_fire_2"
    } },
    ["dryfire"] = { Source = "base_dryfire" },
    ["dryfire_iron"] = { Source = "iron_dryfire" },
    ["trigger"] = { Source = "base_dryfire", EventTable = {
        {t = 0, s = path .. "empty.wav"}
    } },
    ["trigger_iron"] = { Source = "iron_dryfire", EventTable = {
        {t = 0, s = path .. "empty.wav"}
    } },
    ["bash"] = { Source = "base_melee_bash" },
    ["firemode"] = { Source = "base_fireselect" },
    ["reload"] = { Source = "base_reload_half", MinProgress = 0.75, MagSwapTime = 3.5, EventTable = {
        {t = 30 / 32.5, s = path .. "coveropen.wav"},
        {t = 78 / 32.5, s = path .. "magout.wav"},
        {t = 83 / 32.5, s = path .. "magout_rattle.wav"},
        {t = 115 / 32.5, s = path .. "mag_fetch.wav"},
        {t = 158 / 32.5, s = path .. "magin.wav"},
        {t = 168 / 32.5, s = path .. "maghit.wav"},
        {t = 198 / 32.5, s = path .. "beltalign.wav"},
        {t = 234 / 32.5, s = path .. "coverclose.wav"},
        {t = 267 / 32.5, s = path .. "rattle.wav"},
        {t = 285 / 32.5, s = path .. "shoulder_weapon.wav"},
    } },
    ["reload_empty"] = { Source = "base_reload_empty", MinProgress = 0.75, MagSwapTime = 3.5, EventTable = {
        {t = 30 / 32.5, s = path .. "coveropen.wav"},
        {t = 68 / 32.5, s = path .. "boltback.wav"},
        {t = 76 / 32.5, s = path .. "boltrelease.wav"},
        {t = 98 / 32.5, s = path .. "rattle.wav"},
        {t = 132 / 32.5, s = path .. "magout.wav"},
        {t = 136 / 32.5, s = path .. "magout_rattle.wav"},
        {t = 150 / 32.5, s = path .. "mag_fetch.wav"},
        {t = 213 / 32.5, s = path .. "magin.wav"},
        {t = 222 / 32.5, s = path .. "maghit.wav"},
        {t = 252 / 32.5, s = path .. "beltalign.wav"},
        {t = 288 / 32.5, s = path .. "coverclose.wav"},
        {t = 323 / 32.5, s = path .. "rattle.wav"},
        {t = 338 / 32.5, s = path .. "shoulder_weapon.wav"},
    } },
    ["ready"] = { Source = "base_ready", MinProgress = 0.75, FireASAP = true, EventTable = {
        {t = 0 / 30, s = ARC9DOI.Draw},
        {t = 24 / 30, s = path .. "boltrelease.wav"},
        {t = 41 / 30, s = ARC9DOI.LeanIn},
    } },
    ["draw"] = { Source = "base_draw", EventTable = {
        {t = 0, s = ARC9DOI.Draw},
    } },
    ["holster"] = { Source = "base_holster", EventTable = {
        {t = 0, s = ARC9DOI.Holster},
    } },
    ["draw_empty"] = { Source = "base_draw", EventTable = {
        {t = 0, s = ARC9DOI.Draw},
    } },
    ["holster_empty"] = { Source = "base_holster", EventTable = {
        {t = 0, s = ARC9DOI.Holster},
    } },
    ["enter_bipod"] = { Source = "deployed_in", EventTable = {
        {t = 19 / 36, s = path .. "deploygroundhit.wav"},
        {t = 46 / 36, s = path .. "rattle.wav"},
        {t = 65 / 36, s = path .. "shoulder_weapon.wav"},
    } },
    ["exit_bipod"] = { Source = "deployed_out", EventTable = {
        {t = 25 / 36, s = path .. "rattle.wav"},
        {t = 39 / 36, s = path .. "shoulder_weapon.wav"},
    } },
    ["idle_bipod"] = { Source = "deployed_idle" },
    ["idle_iron_bipod"] = { Source = "deployed_iron_idle" },
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
    ["reload_bipod"] = { Source = "deployed_reload_half", MinProgress = 0.75, EventTable = {
        {t = 30 / 32.5, s = path .. "coveropen.wav"},
        {t = 78 / 32.5, s = path .. "magout.wav"},
        {t = 83 / 32.5, s = path .. "magout_rattle.wav"},
        {t = 115 / 32.5, s = path .. "mag_fetch.wav"},
        {t = 158 / 32.5, s = path .. "magin.wav"},
        {t = 168 / 32.5, s = path .. "maghit.wav"},
        {t = 198 / 32.5, s = path .. "beltalign.wav"},
        {t = 234 / 32.5, s = path .. "coverclose.wav"},
        {t = 267 / 32.5, s = path .. "rattle.wav"},
        {t = 285 / 32.5, s = path .. "shoulder_weapon.wav"},
    } },
    ["reload_bipod_empty"] = { Source = "deployed_reload_empty", MinProgress = 0.75, EventTable = {
        {t = 30 / 32.5, s = path .. "coveropen.wav"},
        {t = 68 / 32.5, s = path .. "boltback.wav"},
        {t = 76 / 32.5, s = path .. "boltrelease.wav"},
        {t = 98 / 32.5, s = path .. "rattle.wav"},
        {t = 132 / 32.5, s = path .. "magout.wav"},
        {t = 136 / 32.5, s = path .. "magout_rattle.wav"},
        {t = 150 / 32.5, s = path .. "mag_fetch.wav"},
        {t = 213 / 32.5, s = path .. "magin.wav"},
        {t = 222 / 32.5, s = path .. "maghit.wav"},
        {t = 252 / 32.5, s = path .. "beltalign.wav"},
        {t = 288 / 32.5, s = path .. "coverclose.wav"},
        {t = 323 / 32.5, s = path .. "rattle.wav"},
        {t = 338 / 32.5, s = path .. "shoulder_weapon.wav"},
    } },
}

-------------------------- ATTACHMENTS

SWEP.CustomCamoTexture = "models/weapons/arc9_doi/mg34/weapon_mg34_dm"
SWEP.CustomCamoScale = 1.5
SWEP.CustomCamoScale_Priority = 2
SWEP.CustomBlendFactor = 1

SWEP.AttachmentElements = {
    ["camo"] = {
        Skin = 1
    },
    ["doi_perk_mag"] = {
        ClipSize = 75
    }
}
/*
SWEP.Attachments = {
    {
        PrintName = "OPTIC",
        Category = "doi_optic_zf4",
        Bone = "Lid",
        Pos = Vector(0.1, -2, 1.8),
        Ang = Angle(0, -90, 0),
        CorrectiveAng = Angle(-0.25, 0.334, 0),
    },
    {
        PrintName = "BARREL",
        Category = {"doi_perk_bash", "doi_perk_barrel"},
        Bone = "Weapon",
        Pos = Vector(0, 16, 1),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "AMMO",
        Category = {"doi_perk_sc_bullets", "doi_perk_hv_bullets"},
        Bone = "Weapon",
        Pos = Vector(0, 3, 1),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "RECEIVER",
        Category = {"doi_perk_spring", "doi_perk_trigger"},
        Bone = "Weapon",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "REAR",
        Category = {"doi_perk_mag", "doi_perk_stock"},
        Bone = "Weapon",
        Pos = Vector(0, -14, -2),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "CHARM",
        Category = "charm",
        Bone = "Lid",
        Pos = Vector(1.11, -6.5, -1),
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
        StickerModel = "models/weapons/arc9_doi/stickers/mg34_a.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/mg34_b.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/mg34_c.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/mg34_d.mdl"
    },
}*/