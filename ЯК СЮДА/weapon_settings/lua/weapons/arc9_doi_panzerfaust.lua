AddCSLuaFile()

SWEP.Base = "arc9_base"

SWEP.Spawnable = true
SWEP.Category = "[TPTD: STA] Weapons"
SWEP.SubCategory = "Взрывчатка"

SWEP.PrintName = "Panzerfaust"

SWEP.Class = "Anti-Tank Launcher"

SWEP.Trivia = {
    Manufacturer = "Hugo Schneider AG",
    Calibre = "149mm",
    Mechanism = "Recoilless Gun",
    Origin = "Germany",
    Year = "1943"
}

SWEP.Credits = {
    Author = "Arctic",
    Assets = "New World Interactive",
}

SWEP.Description = [[Disposable one-shot anti-tank weapon.]]

SWEP.ViewModel = "models/weapons/arc9_doi/c_panzerfaust.mdl"
SWEP.WorldModel = "models/weapons/w_rocket_launcher.mdl"

SWEP.ViewModelFOVBase = 60

SWEP.Slot = 4

SWEP.MirrorVMWM = true
SWEP.WorldModelOffset = {
    Pos = Vector(-5, 5, -8),
    TPIKPos = Vector(-5, 5, -8),
    Ang = Angle(-5, 0, 180),
    Scale = 1
}
SWEP.NoTPIKVMPos = true

SWEP.DefaultBodygroups = ""
SWEP.DefaultSkin = 0

-------------------------- DAMAGE PROFILE

SWEP.ShootEnt = "doi_proj_panzerfaust"
SWEP.ShootEntForce = 10000

-------------------------- MAGAZINE

SWEP.Ammo = "RPG_Round" -- What ammo type this gun uses.

SWEP.ChamberSize = 0 -- The amount of rounds this gun can chamber.
SWEP.ClipSize = 1 -- Self-explanatory.
SWEP.SupplyLimit = 2 -- Amount of magazines of ammo this gun can take from an ARC9 supply crate.

SWEP.ReloadWhileSprint = true -- This weapon can reload while the user is sprinting.
SWEP.ReloadInSights = false -- This weapon can aim down sights while reloading.

SWEP.BarrelLength = 32

SWEP.DryFireDelay = 0.25
-------------------------- FIREMODES

SWEP.RPM = 1000

SWEP.Firemodes = {
    {
        Mode = 1,
    }
}

SWEP.AutoReload = true
SWEP.Disposable = true

-------------------------- RECOIL

SWEP.Recoil = 1

SWEP.RecoilUp = 1 -- Multiplier for vertical recoil
SWEP.RecoilSide = 0.25 -- Multiplier for vertical recoil

SWEP.RecoilRandomUp = 0.5
SWEP.RecoilRandomSide = 0.5

SWEP.RecoilAutoControl = 1 -- Multiplier for automatic recoil control.

SWEP.RecoilPatternDrift = 60

-------------------------- SPREAD

SWEP.Spread = 0 -- And so it shall be.

-------------------------- HANDLING

SWEP.FreeAimRadius = 5
SWEP.FreeAimRadiusMultSights = 0

SWEP.Sway = 1.25
SWEP.SwayMultSights = 0.5
SWEP.SwayMultMove = 1.5

SWEP.AimDownSightsTime = 0.5 -- How long it takes to go from hip fire to aiming down sights.
SWEP.SprintToFireTime = 0.5 -- How long it takes to go from sprinting to being able to fire.

SWEP.SpeedMult = 0.95

-------------------------- SOUNDS

SWEP.ShootVolume = 125
SWEP.ShootVolumeActual = 1
SWEP.ShootPitch = 100
SWEP.ShootPitchVariation = 0.05

SWEP.ShootSound = "weapons/arc9_doi/panzerfaust/panzerfaust_fp.wav"
SWEP.DistantShootSound = "weapons/arc9_doi/panzerfaust/panzerfaust_dist.wav"

SWEP.DryFireSound = "weapons/arc9_doi/universal/uni_launcher_empty.wav"
SWEP.DryFireSingleAction = false

SWEP.EnterSightsSound = ARC9DOI.AimIn
SWEP.ExitSightsSound = ARC9DOI.AimOut

-------------------------- EFFECTS

SWEP.MuzzleParticle = "muzzleflash_m79" -- Used for some muzzle effects.

SWEP.AfterShotEffect = "arc9_aftershoteffect"
SWEP.AfterShotParticle = nil -- Particle to spawn after shooting

SWEP.NoShellEject = true

SWEP.MuzzleEffectQCA = 1 -- QC Attachment that controls muzzle effect.
SWEP.CamQCA = 2
SWEP.CamCoolView = false -- Enable to use procedural camera movement. Set CamQCA to muzzle QCA or something.

-------------------------- POSITIONS

SWEP.IronSights = {
    Pos = Vector(-3.36, -5, 0.7),
    Ang = Angle(0, 0, 7),
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

SWEP.CustomizeRotateAnchor = Vector(15, -1.695, -3) * 1.3

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

SWEP.BulletBones = {
    [1] = "PANZ_WARHEAD"
}

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

local path = "weapons/arc9_doi/panzerfaust/handling/panzerfaust_"

SWEP.Animations = {
    ["idle"] = { Source = "base_idle" },
    ["idle_empty"] = { Source = "empty_idle" },
    ["idle_iron"] = { Source = "iron_idle" },
    ["idle_iron_empty"] = { Source = "iron_empty" },
    ["fire"] = { Source = "base_fire" },
    ["fire_empty"] = { Source = "base_fire" },
    ["fire_iron"] = { Source =  "iron_fire"},
    ["enter_sights"] = { Source = "iron_idle" },
    ["enter_sights_empty"] = { Source = "iron_empty" },
    ["fire_iron_empty"] = { Source = "iron_fire" },
    ["dryfire"] = { Source = "base_dryfire" },
    ["dryfire_iron"] = { Source = "iron_dryfire" },
    ["bash"] = { Source = "base_melee_bash" },
    ["bash_empty"] = { Source = "empty_melee_bash" },
    ["reload"] = { Source = "base_reload", MinProgress = 0.75, MagSwapTime = 0.75, Mult = 0.9,  EventTable = {
        {t = 59 / 31, s = path .. "pinout.wav"},
        {t = 92 / 31, s = path .. "sightup.wav"},
        {t = 119 / 31, s = path .. "shoulder.wav"},
    } },
    ["ready"] = { Source = "base_ready", MinProgress = 1, FireASAP = true, EventTable = {
        {t = 0 / 30, s = ARC9DOI.Draw},
        {t = 35 / 31, s = path .. "pinout.wav"},
        {t = 68 / 31, s = path .. "sightup.wav"},
        {t = 95 / 31, s = path .. "shoulder.wav"},
    } },
    ["draw"] = { Source = "base_ready", EventTable = {
        {t = 0 / 30, s = ARC9DOI.Draw},
        {t = 35 / 31, s = path .. "pinout.wav"},
        {t = 68 / 31, s = path .. "sightup.wav"},
        {t = 95 / 31, s = path .. "shoulder.wav"},
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

SWEP.CustomCamoTexture = "models/weapons/arc9_doi/panzerfaust/weapon_panzerfaust_camo"
SWEP.CustomCamoScale = 1.25
SWEP.CustomCamoScale_Priority = 2
SWEP.CustomBlendFactor = 1

SWEP.AttachmentElements = {
    ["camo"] = {
        Skin = 1
    },
}

SWEP.Attachments = {
    {
        PrintName = "CHARM",
        Category = "charm",
        Bone = "PANZ_Sight",
        Pos = Vector(0.5, 0.75, 0),
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
        StickerModel = "models/weapons/arc9_doi/stickers/panzerfaust_a.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/panzerfaust_b.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/panzerfaust_c.mdl"
    },
    {
        PrintName = "STICKER",
        Category = "stickers",
        StickerModel = "models/weapons/arc9_doi/stickers/panzerfaust_d.mdl"
    },
}