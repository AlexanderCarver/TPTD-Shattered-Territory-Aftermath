AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "[TPTD: STA] Weapons"
SWEP.SubCategory = "Винтовки"

SWEP.PrintName = "Karabiner 98k"

SWEP.Class = "Rifle"

SWEP.Trivia = {
    Manufacturer = "Mauser",
    Calibre = "7.92x57mm Mauser",
    Mechanism = "Bolt Action",
    Origin = "Germany",
    Year = "1935"
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "New World Interactive",
}

SWEP.Description = [[Standard bolt-action rifle used by German forces during the Second World War.]]

SWEP.ViewModel = "models/weapons/arc9_doi/c_kar98k.mdl"
SWEP.WorldModel = "models/weapons/w_snip_scout.mdl"

SWEP.ViewModelFOVBase = 60

SWEP.Slot = 3

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-8, 4, -7),
    TPIKPos = Vector(-8, 4, -4),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = "0500000000000000000000"
SWEP.DefaultSkin = 1

-------------------------- DAMAGE PROFILE

SWEP.DamageMax = 115 -- Damage done at point blank range
SWEP.DamageMin = 50 -- Damage done at maximum range

SWEP.RangeMin = 0
SWEP.RangeMax = 19000

SWEP.ImpactForce = 8 -- Force that bullets apply on hit

SWEP.DamageRand = 0 -- Damage varies randomly per shot by this fraction. 0.1 = +- 10% damage per shot.

SWEP.Penetration = 20 -- Units of wood that can be penetrated by this gun.
SWEP.PenetrationDelta = 0.25 -- The damage multiplier after all penetration distance is spent.

SWEP.RicochetAngleMax = 45 -- Maximum angle at which a ricochet can occur. Between 1 and 90. Angle of 0 is impossible but would theoretically always ricochet.
SWEP.RicochetChance = 0.5 -- If the angle is right, what is the chance that a ricochet can occur?

SWEP.DamageType = DMG_BULLET -- The damage type of the gun.

SWEP.BodyDamageMults = {
    [HITGROUP_HEAD] = 2.5,
    [HITGROUP_CHEST] = 1.25,
    [HITGROUP_STOMACH] = 1.1,
    [HITGROUP_LEFTARM] = 1,
    [HITGROUP_RIGHTARM] = 1,
    [HITGROUP_LEFTLEG] = 0.75,
    [HITGROUP_RIGHTLEG] = 0.75,
}


-------------------------- PHYS BULLET BALLISTICS

SWEP.PhysBulletMuzzleVelocity = 2500 * 12 -- Physical bullet muzzle velocity in Hammer Units/second. 1 HU != 1 inch.

-------------------------- MAGAZINE

SWEP.Ammo = "7.92x57mm" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 5 -- Self-explanatory.
SWEP.SupplyLimit = 6 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.BarrelLength = 32

SWEP.ShotgunReload = true
SWEP.HybridReload = true

SWEP.DryFireDelay = 0.25
-------------------------- FIREMODES

SWEP.RPM = 60 / 0.1

SWEP.Firemodes = {
    {
        Mode = 1,
        PrintName = "BOLT"
    }
}

SWEP.ManualAction = true

-------------------------- RECOIL

SWEP.Recoil = 1

SWEP.RecoilUp = 2 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.25 -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 0
SWEP.RecoilRandomSide = 0

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

SWEP.AimDownSightsTime = 0.34 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.34 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95

-------------------------- SOUNDS

SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/arc9_doi/kar98/kar98_fp.wav"
SWEP.DistantShootSound = "weapons/arc9_doi/kar98/kar98_dist.wav"

SWEP.ShootSoundUBGL = "weapons/arc9_doi/kar98/kar98_gl_fp.wav"

SWEP.DryFireSound = "weapons/arc9_doi/kar98/handling/kar98_empty.wav"
SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ARC9DOI.AimIn
SWEP.ExitSightsSound = ARC9DOI.AimOut

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_m24" -- Used for some muzzle effects.

SWEP.AfterShotEffect = "arc9_aftershoteffect"
SWEP.AfterShotParticle = nil -- Particle to spawn after shooting

SWEP.ShellModel = "models/weapons/arc9_doi/shells/762x51.mdl"
SWEP.ShellScale = 1.3

SWEP.ShellSmoke = true

SWEP.NoShellEject = true
SWEP.NoShellEjectManualAction = true

SWEP.ManualActionNoLastCycle = true

SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.CaseEffectQCA = 2 -- QC Attachment for shell ejection.
SWEP.CamQCA = 7
SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.

SWEP.BulletBones = {
    [0] = "K98_Reload_Round",
    [1] = "K98_Bullet_1",
    [2] = "K98_Bullet_2",
}

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.335, -5, 1.9),
    Ang = Angle(0, 0.45, 0),
    Magnification = 1,
    ViewModelFOV = 60
}

SWEP.IronSightsUBGL = {
    Pos = Vector(-1.21, -5, 5),
    Ang = Angle(0, 0.45, 0),
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
SWEP.CustomizeRotateAnchor = Vector(21.5, -1.21, -3)

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

SWEP.HideBones = {
    86,
    87,
    88,
    89,
    90,
    85,
    98,
    99,
    79
}

local path = "weapons/arc9_doi/kar98/handling/kar98_"

local bulletin = {
    path .. "bulletin_1.wav",
    path .. "bulletin_2.wav",
    path .. "bulletin_3.wav",
    path .. "bulletin_4.wav",
}

SWEP.Animations = {
    ["idle"] = { Source = "idle" },
    ["idle_empty"] = { Source = "empty_idle" },
    ["idle_uncycled"] = { Source = "empty_idle" },
    ["fire"] = { Source = "base_fire_start" },
    ["fire_empty"] = { Source = "base_fire_last" },
    ["fire_iron"] = { Source = "iron_fire_start" },
    ["fire_iron_empty"] = { Source = "iron_fire_last" },
    ["dryfire"] = { Source = "base_dryfire" },
    ["dryfire_iron"] = { Source = "iron_dryfire" },
    ["bash"] = { Source = "base_melee_end" },
    ["cycle"] = { Source = "base_fire_end", EjectAt = 0.5, MinProgress = 0.6, EventTable = {
        {t = 13 / 35, s = path .. "boltrelease.wav"},
        {t = 14 / 35, s = path .. "boltback.wav"},
        {t = 22 / 35, s = path .. "boltforward.wav"},
        {t = 26 / 35, s = path .. "boltlatch.wav"},
    } },
    ["cycle_iron"] = { Source = "iron_fire_end", EjectAt = 0.5, MinProgress = 0.6, EventTable = {
        {t = 13 / 35, s = path .. "boltrelease.wav"},
        {t = 14 / 35, s = path .. "boltback.wav"},
        {t = 22 / 35, s = path .. "boltforward.wav"},
        {t = 26 / 35, s = path .. "boltlatch.wav"},
    } },
    ["reload_empty"] = { Source = "base_reload_empty_clip", EjectAt = 0.85, MinProgress = 0.75, EventTable = {
        {t = 19 / 35, s = path .. "boltrelease.wav"},
        {t = 27 / 35, s = path .. "boltback.wav"},
        {t = 37 / 35, s = path .. "fetchmag.wav"},
        {t = 64 / 35, s = path .. "magin.wav"},
        {t = 80 / 35, s = path .. "roundsin.wav"},
        {t = 111 / 35, s = path .. "boltforward_stripperclip.wav"},
        {t = 119 / 35, s = path .. "stripperclip_eject.wav"},
    } },
    ["ready"] = { Source = "base_ready", MinProgress = 0.65, FireASAP = true, EventTable = {
        {t = 0 / 33, s = ARC9DOI.Draw},
        {t = 22 / 33, s = path .. "empty.wav"},
        {t = 47 / 33, s = path .. "boltrelease.wav"},
        {t = 54 / 33, s = path .. "boltback.wav"},
        {t = 68 / 33, s = path .. "boltforward.wav"},
        {t = 75 / 33, s = path .. "boltlatch.wav"},
        {t = 96 / 33, s = path .. "rattle.wav"},
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
    ["reload_start"] = { Source = "base_reload_start", Mult = 0.75, EventTable = {
        {t = 19 / 35.5, s = path .. "boltrelease.wav"},
        {t = 27 / 35.5, s = path .. "boltback.wav"},
    } },
    ["reload_start_empty"] = { Source = "base_reload_start_empty", Mult = 1, EjectAt = 0.85, EventTable = {
        {t = 19 / 35.5, s = path .. "boltrelease.wav"},
        {t = 27 / 35.5, s = path .. "boltback.wav"},
    } },
    ["reload_insert"] = { Source = "base_reload_insert", Mult = 0.75, MinProgress = 0.5, MagSwapTime = 0.5, EventTable = {
        {t = 14 / 35.5, s = bulletin},
    } },
    ["reload_finish"] = { Source = "base_reload_end", EventTable = {
        {t = 14 / 35.5, s = path .. "boltforward.wav"},
        {t = 21 / 35.5, s = path .. "boltlatch.wav"},
    } },
    ["enter_ubgl"] = { Source = "glsetup_in", RestoreAmmo = 1, EventTable = {
        {t = 17 / 33.5, s = path .. "rattle.wav"},
        {t = 54 / 33.5, s = path .. "gl_load1.wav"},
        {t = 63 / 33.5, s = path .. "gl_load2.wav"},
        {t = 97 / 33.5, s = path .. "rattle.wav"},
        {t = 110 / 33.5, s = path .. "shoulder.wav"},
    } },
    ["exit_ubgl"] = { Source = "glsetup_out", EventTable = {
        {t = 12 / 33.5, s = path .. "rattle.wav"},
        {t = 36 / 33.5, s = path .. "gl_remove.wav"},
        {t = 81 / 33.5, s = path .. "rattle.wav"},
        {t = 108 / 33.5, s = path .. "shoulder.wav"},
    } },
    ["exit_ubgl_glempty"] = { Source = "glsetup_out_empty", EventTable = {
        {t = 19 / 30.5, s = path .. "boltrelease.wav"},
        {t = 21 / 30.5, s = path .. "boltback.wav"},
        {t = 28 / 30.5, s = path .. "boltforward.wav"},
        {t = 32 / 30.5, s = path .. "boltlatch.wav"},
    } },
    ["idle_ubgl"] = { Source = "glsetup_idle" },
    ["idle_ubgl_empty"] = { Source = "glsetup_idle_empty" },
    ["reload_ubgl"] = { Source = "glsetup_reload", EventTable = {
        {t = 17 / 33.5, s = path .. "rattle.wav"},
        {t = 54 / 33.5, s = path .. "gl_load1.wav"},
        {t = 63 / 33.5, s = path .. "gl_load2.wav"},
        {t = 118 / 33.5, s = path .. "boltrelease.wav"},
        {t = 126 / 33.5, s = path .. "boltback.wav"},
        {t = 136 / 33.5, s = path .. "boltforward.wav"},
        {t = 145 / 33.5, s = path .. "boltlatch.wav"},
        {t = 166 / 33.5, s = path .. "rattle.wav"},
        {t = 168 / 33.5, s = path .. "shoulder.wav"},
    }  },
    ["fire_ubgl"] = { Source = "glsetup_iron_fire" }
}

-------------------------- ATTACHMENTS

SWEP.CustomCamoTexture = "models/weapons/arc9_doi/kar98k/weapon_kar98k_worn_dm"
SWEP.CustomCamoScale = 2
SWEP.CustomCamoScale_Priority = 2
SWEP.CustomBlendFactor = 1

SWEP.AttachmentElements = {
    ["camo"] = {
        Skin = 3
    },
    ["doi_perk_sling"] = {
        Bodygroups = {
            {3, 1}
        }
    },
    ["doi_perk_stock"] = {
        Skin = 0
    },
    ["doi_perk_bayonet"] = {
        Bodygroups = {
            {4, 1}
        }
    },
    ["doi_perk_gl"] = {
        Bodygroups = {
            {5, 1}
        }
    },
    ["doi_optic_k98"] = {
        HybridReload = false
    },
    ["doi_optic_k98_4x"] = {
        HybridReload = false
    }
}

SWEP.Hook_ModifyBodygroups = function(self, data)
    local mdl = data.model

    if self:HasElement("camo") then
        mdl:SetSkin(5)
        if self:HasElement("doi_perk_reload") then
            mdl:SetSkin(4)
        end
    else
        if self:HasElement("doi_perk_stock") then
            if self:HasElement("doi_perk_reload") then
                mdl:SetSkin(0)
            else
                mdl:SetSkin(2)
            end
        else
            if self:HasElement("doi_perk_reload") then
                mdl:SetSkin(3)
            else
                mdl:SetSkin(1)
            end
        end
    end
end

SWEP.Attachments = {
    {
        PrintName = "OPTIC",
        Category = "doi_optic_k98",
        ExcludeElements = {"doi_perk_gl"},
        Bone = "k98",
        Pos = Vector(0.575, -5.1, 3.9),
        Ang = Angle(0, -90, 0),
        CorrectiveAng = Angle(-0.25, 0.334, 0),
        MergeSlots = {2}
    },
    {
        PrintName = "OPTIC",
        Category = "doi_optic_k98_4x",
        ExcludeElements = {"doi_perk_gl"},
        Bone = "k98",
        Pos = Vector(0.25, -7.5, 4.2),
        Ang = Angle(0, -90, 0),
        CorrectiveAng = Angle(0.125, 0.25, 0),
        Hidden = true
    },
    {
        PrintName = "BARREL",
        Category = {"doi_perk_bayonet"},
        Bone = "k98",
        Pos = Vector(0, 16, 3),
        Ang = Angle(0, -90, 0)
    },/*
    {
        PrintName = "AMMO",
        Category = {"doi_perk_he_bullets", "doi_perk_hv_bullets"},
        Bone = "k98",
        Pos = Vector(0, -2, 2),
        Ang = Angle(0, -90, 0)
    },
    {
        PrintName = "RECEIVER",
        Category = {"doi_perk_bolt", "doi_perk_reload"},
        Bone = "k98",
        Pos = Vector(0, -8, 2),
        Ang = Angle(0, -90, 0)
    },*/
    {
        PrintName = "REAR",
        Category = {"doi_perk_sling"},
        Bone = "k98",
        Pos = Vector(0, -18, 0),
        Ang = Angle(0, -90, 0)
    },/*
    {
        PrintName = "CHARM",
        Category = "charm",
        Bone = "k98",
        Pos = Vector(1.75, -6, 2),
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
        StickerModel = "models/weapons/arc9_doi/stickers/k98_a.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/k98_b.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/k98_c.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/k98_d.mdl"
    },*/
}