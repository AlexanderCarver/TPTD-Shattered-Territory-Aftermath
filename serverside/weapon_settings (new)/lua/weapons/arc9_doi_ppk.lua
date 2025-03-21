AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "[TPTD: STA] Weapons"
SWEP.SubCategory = "Пистолеты"

SWEP.PrintName = "PPK"

SWEP.Class = "Pistol"

SWEP.Trivia = {
    Manufacturer = "Carl Walther Waffenfabrik",
    Calibre = ".32 ACP",
    Mechanism = "Straight Blowback",
    Origin = "Germany",
    Year = "1929"
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "New World Interactive",
}

SWEP.Description = [[Classic "Police Pistol" common in pre-War Germany. Fires a somewhat anemic cartridge.]]

SWEP.ViewModel = "models/weapons/arc9_doi/c_ppk.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

SWEP.ViewModelFOVBase = 60

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-9, 3.5, -4),
    TPIKPos = Vector(-9, 3.5, -4),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = ""
SWEP.DefaultSkin = 0

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 24 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

SWEP.RangeMin = 0
SWEP.RangeMax = 2400

SWEP.ImpactForce = 3 -- Force that bullets apply on hit

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Penetration = 3 -- Units of wood that can be penetrated by this gun.
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

SWEP.PhysBulletMuzzleVelocity = 1050 * 12 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

-------------------------- MAGAZINE

SWEP.Ammo = "7.65x17mm" -- What ammo type this gun uses.

SWEP.ChamberSize = 1 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 8 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.BarrelLength = 8

SWEP.DryFireDelay = 0.25
-------------------------- FIREMODES

SWEP.RPM = 600

SWEP.Firemodes = {
    {
        Mode = 1,
    }
}

SWEP.ShotgunReload = false
SWEP.HybridReload = false

-------------------------- RECOIL

SWEP.Recoil = 0.75

SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.1 -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 0.5
SWEP.RecoilRandomSide = 0.5

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilPatternDrift = 60

-------------------------- SPREAD

SWEP.Spread = 0 -- And so it shall be.

-------------------------- HANDLING

SWEP.FreeAimRadius = 5
SWEP.FreeAimRadiusMultSights = 0

SWEP.Sway = 1.5
SWEP.SwayMultSights = 0.5
SWEP.SwayMultMove = 1.5

SWEP.AimDownSightsTime = 0.22 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.22 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 1

-------------------------- SOUNDS

SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/arc9_doi/ppk/ppk_fp.wav"
SWEP.DistantShootSound = "weapons/arc9_doi/ppk/ppk_dist.wav"

SWEP.DryFireSound = "weapons/arc9_doi/ppk/handling/ppk_empty.wav"
SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ARC9DOI.AimIn
SWEP.ExitSightsSound = ARC9DOI.AimOut

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_pistol_red" -- Used for some muzzle effects.

SWEP.AfterShotEffect = "arc9_aftershoteffect"
SWEP.AfterShotParticle = nil -- Particle to spawn after shooting

SWEP.ShellModel = "models/weapons/arc9_doi/shells/9x19.mdl"
SWEP.ShellScale = 1.3

SWEP.ShellSmoke = true

SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.
SWEP.CamQCA = 1
SWEP.CamCoolView = true -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-2.49, 0, 0.7),
    Ang = Angle(0, 0, 0),
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
SWEP.CrouchPos = Vector(0, 0, 1.5)
SWEP.CrouchAng = Angle(0, 0, 0)

-- Position when sprinting or safe
SWEP.RestPos = Vector(0, 0, -8)
SWEP.RestAng = Angle(0, 45, 0)


SWEP.HolsterPos = Vector(0, 0, -5)
SWEP.HolsterAng = Angle(0, -15, 25)

SWEP.SprintMidPoint = {
    Pos = Vector(4, 0, -4),
    Ang = Angle(0, 0, 0)
}

-- Position for customizing
SWEP.CustomizeAng = Angle(90, 0, 0)
SWEP.CustomizePos = Vector(14, 32, 0)

SWEP.CustomizeRotateAnchor = Vector(15, -2.49, -3)

SWEP.CustomizeSnapshotFOV = 90
SWEP.CustomizeSnapshotPos = Vector(0, -2, 4)
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
SWEP.HoldTypeNPC = "pistol"

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false
SWEP.AnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

local path = "weapons/arc9_doi/ppk/handling/ppk_"

SWEP.Animations = {
    ["idle"] = { Source = "base_idle" },
    ["idle_empty"] = { Source = "empty_idle" },
    ["idle_iron"] = { Source = "iron_idle" },
    ["idle_iron_emtpty"] = { Source = "iron_empty" },
    ["fire"] = { Source = {
        "base_fire",
        "base_fire2",
        "base_fire3"
    } },
    ["fire_empty"] = { Source = "base_firelast" },
    ["fire_iron"] = { Source = {
        "iron_fire_1",
        "iron_fire_2",
        "iron_fire_3"
    } },
    ["enter_sights"] = { Source = "iron_idle" },
    ["enter_sights_empty"] = { Source = "iron_empty" },
    ["fire_iron_empty"] = { Source = "iron_fire_last" },
    ["dryfire"] = { Source = "base_dryfire" },
    ["dryfire_iron"] = { Source = "iron_dryfire" },
    ["bash"] = { Source = "base_melee_bash" },
    ["bash_empty"] = { Source = "empty_melee_bash" },
    ["reload"] = { Source = "base_reload", MinProgress = 0.75, MagSwapTime = 1.25, Mult = 0.9,  EventTable = {
        {t = 7 / 30, s = path .. "magrelease.wav"},
        {t = 8 / 30, s = path .. "magout.wav"},
        {t = 49 / 30, s = path .. "magin.wav"},
        {t = 66 / 30, s = path .. "maghit.wav"},
    } },
    ["reload_empty"] = { Source = "base_reloadempty", MinProgress = 0.75, MagSwapTime = 1.25, Mult = 0.9, EventTable = {
        {t = 7 / 30, s = path .. "magrelease.wav"},
        {t = 8 / 30, s = path .. "magout.wav"},
        {t = 49 / 30, s = path .. "magin.wav"},
        {t = 66 / 30, s = path .. "maghit.wav"},
        {t = 89 / 30, s = path .. "boltback.wav"},
        {t = 92 / 30, s = path .. "boltrelease.wav"},
    } },
    ["ready"] = { Source = "base_ready", MinProgress = 1, FireASAP = true, EventTable = {
        {t = 0 / 30, s = ARC9DOI.PistolDraw},
        {t = 8 / 30, s = path .. "safety.wav"},
        {t = 14 / 30, s = path .. "boltback.wav"},
        {t = 20 / 30, s = path .. "boltrelease.wav"},
    } },
    ["draw"] = { Source = "base_draw", EventTable = {
        {t = 0, s = ARC9DOI.PistolDraw},
    } },
    ["holster"] = { Source = "base_holster", EventTable = {
        {t = 0, s = ARC9DOI.PistolHolster},
    } },
    ["draw_empty"] = { Source = "base_draw_empty", EventTable = {
        {t = 0, s = ARC9DOI.PistolDraw},
    } },
    ["holster_empty"] = { Source = "base_holster_empty", EventTable = {
        {t = 0, s = ARC9DOI.PistolHolster},
    } },
    ["idle_sprint"] = { Source = "base_sprint" },
    ["idle_sprint_empty"] = { Source = "base_sprint_empty" },
}

SWEP.InstantSprintIdle = true

-------------------------- ATTACHMENTS

SWEP.HookP_TranslateSound = function(self, data)
    if data.name == "shootsound" then
        data.channel = CHAN_AUTO
    end

    return data
end

SWEP.CustomCamoTexture = "models/weapons/arc9_doi/ppk/weapon_ppk_dm"
SWEP.CustomCamoScale = 2
SWEP.CustomCamoScale_Priority = 2
SWEP.CustomBlendFactor = 1

SWEP.AttachmentElements = {
    ["camo"] = {
        Skin = 1
    },
    ["doi_perk_mag"] = {
        ClipSize = 13
    }
}

SWEP.Hook_ModifyBodygroups = function(self, data)
    local mdl = data.model

    local clip1 = self:GetLoadedRounds()
    clip1 = math.min(clip1, 8)

    mdl:SetBodygroup(1, clip1)
end
/*
SWEP.Attachments = {
    {
        PrintName = "BARREL",
        Category = {"doi_perk_bash", "doi_perk_recoil"},
        Bone = "Weapon",
        Pos = Vector(0, 2, 0.5),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "AMMO",
        Category = {"doi_perk_hv_bullets", "doi_perk_hp_bullets"},
        Bone = "Weapon",
        Pos = Vector(0, -3, -3),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "RECEIVER",
        Category = {"doi_perk_auto", "doi_perk_reload"},
        Bone = "Weapon",
        Pos = Vector(0, 0, 0),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "GRIP",
        Category = {"doi_perk_holster", "doi_perk_mag"},
        Bone = "Weapon",
        Pos = Vector(0, -4, -1),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "CHARM",
        Category = "charm",
        Bone = "Slide",
        Pos = Vector(0.6, 2.8, -0.2),
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
        StickerModel = "models/weapons/arc9_doi/stickers/ppk_a.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/ppk_b.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/ppk_c.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/ppk_d.mdl"
    },
}*/