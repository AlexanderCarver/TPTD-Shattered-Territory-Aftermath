AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "[TPTD: STA] Weapons"
SWEP.SubCategory = "Пистолеты-пулемёты"

SWEP.PrintName = "M712 Schnellfeuer"

SWEP.Class = "Submachine Gun"

SWEP.Trivia = {
    Manufacturer = "Mauser",
    Calibre = "7.63x25 Mauser",
    Mechanism = "Short Recoil",
    Origin = "Germany",
    Year = "1932"
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "New World Interactive",
}

SWEP.Description = [[Rapid fire carbine version of the C96 pistol made for export to South American and Chinese markets.]]

SWEP.ViewModel = "models/weapons/arc9_doi/c_c96_carbine.mdl"
SWEP.WorldModel = "models/weapons/w_pist_glock18.mdl"

SWEP.ViewModelFOVBase = 60

SWEP.Slot = 1

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-6, 3.5, -6),
    TPIKPos = Vector(-6, 3.5, -6),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = "0000"
SWEP.DefaultSkin = 0

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 50 -- Damage done at point blank range
SWEP.DamageMin = 20 -- Damage done at maximum range

SWEP.RangeMin = 0
SWEP.RangeMax = 6500

SWEP.ImpactForce = 4 -- Force that bullets apply on hit

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Penetration = 6 -- Units of wood that can be penetrated by this gun.
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

SWEP.PhysBulletMuzzleVelocity = 1500 * 12 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

-------------------------- MAGAZINE

SWEP.Ammo = "pistol" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 20 -- Self-explanatory.
SWEP.SupplyLimit = 0 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.BarrelLength = 20

SWEP.DryFireDelay = 0.25
-------------------------- FIREMODES

SWEP.RPM = 800

SWEP.Firemodes = {
    {
        Mode = -1,
        DamageMult = 0.75
    },
    {
        Mode = 1,
        RPMMult = 0.5
    }
}

SWEP.ShotgunReload = false
SWEP.HybridReload = false

-------------------------- RECOIL

SWEP.Recoil = 1

SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.75 -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 0.25
SWEP.RecoilRandomSide = 0.25

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilPatternDrift = 30

-------------------------- SPREAD

SWEP.Spread = 0 -- And so it shall be.

-------------------------- HANDLING

SWEP.FreeAimRadius = 5
SWEP.FreeAimRadiusMultSights = 0

SWEP.Sway = 0.75
SWEP.SwayMultSights = 0.5
SWEP.SwayMultMove = 1.5

SWEP.AimDownSightsTime = 0.26 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.38 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.97

-------------------------- SOUNDS

SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/arc9_doi/c96carbine/c96carbine_fp.wav"
SWEP.DistantShootSound = "weapons/arc9_doi/c96carbine/c96carbine_dist.wav"

SWEP.DryFireSound = "weapons/arc9_doi/c96carbine/handling/c96carbine_empty.wav"
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
SWEP.CaseEffectQCA = 3 -- QC Attachment for shell ejection.
SWEP.CamQCA = 7
SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.025, -5, 1.5),
    Ang = Angle(0, 0.15, 0),
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
SWEP.CustomizePos = Vector(20, 32, 0)

SWEP.CustomizeRotateAnchor = Vector(15, -3.025, -3)

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

SWEP.AnimShoot = ACT_HL2MP_GESTURE_RANGE_ATTACK_AR2
SWEP.AnimReload = ACT_HL2MP_GESTURE_RELOAD_MAGIC
SWEP.NonTPIKAnimReload = ACT_HL2MP_GESTURE_RELOAD_AR2
SWEP.AnimDraw = false
SWEP.AnimMelee = ACT_GMOD_GESTURE_MELEE_SHOVE_2HAND

local path = "weapons/arc9_doi/c96carbine/handling/c96_"
local carbinepath = "weapons/arc9_doi/c96carbine/handling/c96carbine_"

SWEP.Animations = {
    ["idle"] = { Source = "base_idle" },
    ["idle_empty"] = { Source = "empty_idle" },
    ["idle_uncycled"] = { Source = "empty_idle" },
    ["fire"] = { Source = {
        "base_fire_1",
        "base_fire_2",
        "base_fire_3"
    } },
    ["fire_empty"] = { Source = "base_firelast" },
    ["fire_iron"] = { Source = {
        "iron_fire_1",
        "iron_fire_2",
        "iron_fire_3"
    } },
    ["fire_iron_empty"] = { Source = "iron_firelast" },
    ["dryfire"] = { Source = "base_dryfire" },
    ["dryfire_iron"] = { Source = "iron_dryfire" },
    ["bash"] = { Source = "base_melee_bash" },
    ["bash_empty"] = { Source = "base_melee_bash_empty" },
    ["reload"] = { Source = "base_reload", MinProgress = 0.75, MagSwapTime = 2, EventTable = {
        {t = 19 / 32, s = carbinepath .. "magrelease.wav"},
        {t = 25 / 32, s = carbinepath .. "magout.wav"},
        {t = 32 / 32, s = carbinepath .. "magfetch.wav"},
        {t = 64 / 32, s = carbinepath .. "magfiddle.wav"},
        {t = 71 / 32, s = carbinepath .. "magin.wav"},
        {t = 89 / 32, s = carbinepath .. "rattle.wav"},
    } },
    ["reload_empty"] = { Source = "base_reloadempty", MinProgress = 0.75, EventTable = {
        {t = 19 / 32, s = carbinepath .. "magrelease.wav"},
        {t = 25 / 32, s = carbinepath .. "magout.wav"},
        {t = 32 / 32, s = carbinepath .. "magfetch.wav"},
        {t = 64 / 32, s = carbinepath .. "magfiddle.wav"},
        {t = 71 / 32, s = carbinepath .. "magin.wav"},
        {t = 103 / 32, s = carbinepath .. "boltback.wav"},
        {t = 106 / 32, s = carbinepath .. "boltrelease.wav"},
        {t = 124 / 32, s = carbinepath .. "rattle.wav"},
    } },
    ["reload_40"] = { Source = "base_reload_ext", MinProgress = 0.75, MagSwapTime = 2, EventTable = {
        {t = 19 / 32, s = carbinepath .. "magrelease.wav"},
        {t = 25 / 32, s = carbinepath .. "magout.wav"},
        {t = 32 / 32, s = carbinepath .. "magfetch.wav"},
        {t = 64 / 32, s = carbinepath .. "magfiddle.wav"},
        {t = 71 / 32, s = carbinepath .. "magin.wav"},
        {t = 89 / 32, s = carbinepath .. "rattle.wav"},
    } },
    ["reload_empty_40"] = { Source = "base_reloadempty_ext", MinProgress = 0.75, EventTable = {
        {t = 19 / 32, s = carbinepath .. "magrelease.wav"},
        {t = 25 / 32, s = carbinepath .. "magout.wav"},
        {t = 32 / 32, s = carbinepath .. "magfetch.wav"},
        {t = 64 / 32, s = carbinepath .. "magfiddle.wav"},
        {t = 71 / 32, s = carbinepath .. "magin.wav"},
        {t = 103 / 32, s = carbinepath .. "boltback.wav"},
        {t = 106 / 32, s = carbinepath .. "boltrelease.wav"},
        {t = 124 / 32, s = carbinepath .. "rattle.wav"},
    } },
    ["ready"] = { Source = "base_ready", MinProgress = 1, FireASAP = true, EventTable = {
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
    ["draw_empty"] = { Source = "base_draw_empty", EventTable = {
        {t = 0, s = ARC9DOI.Draw},
    } },
    ["holster_empty"] = { Source = "base_holster_empty", EventTable = {
        {t = 0, s = ARC9DOI.Holster},
    } },
    ["firemode"] = { Source = "base_fireselect" },
    ["firemode_empty"] = { Source = "base_fireselect_empty" },
}

-------------------------- ATTACHMENTS

SWEP.CustomCamoTexture = "models/weapons/arc9_doi/c96/weapon_c96_dm"
SWEP.CustomCamoScale = 4
SWEP.CustomCamoScale_Priority = 2
SWEP.CustomBlendFactor = 1

SWEP.AttachmentElements = {
    ["camo"] = {
        Skin = 1
    },
    ["doi_perk_mag"] = {
        ClipSize = 30,
        Bodygroups = {
            {1, 1}
        },
        Hook_TranslateAnimation = function(self, anim)
            return anim .. "_40"
        end
    }
}

SWEP.Hook_ModifyElements = function(self, eles)
end

SWEP.Attachments = {
    {
        PrintName = "OPTICS",
        Category = "doi_optic_k98_zf4",
        Bone = "Weapon",
        Pos = Vector(-0.5, -1.4, 2),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "BARREL",
        Category = {"doi_perk_bash", "doi_perk_burst"},
        Bone = "Weapon",
        Pos = Vector(0, 6, 1),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "AMMO",
        Category = {"doi_perk_hp_bullets", "doi_perk_mag"},
        Bone = "Weapon",
        Pos = Vector(0, 1, -1),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "RECEIVER",
        Category = {"doi_perk_spring", "doi_perk_reload"},
        Bone = "Weapon",
        Pos = Vector(0, 0, 1),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "REAR",
        Category = {"doi_perk_holster", "doi_perk_stock"},
        Bone = "Weapon",
        Pos = Vector(0, -5, -2),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "CHARM",
        Category = "charm",
        Bone = "Weapon",
        Pos = Vector(0.65, -0.5, 0.85),
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
        StickerModel = "models/weapons/arc9_doi/stickers/m712_a.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/m712_b.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/m712_c.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/m712_d.mdl"
    },
}