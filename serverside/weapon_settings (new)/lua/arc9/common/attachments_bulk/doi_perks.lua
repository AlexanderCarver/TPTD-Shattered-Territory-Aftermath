local ATT = {}

ATT.PrintName = [[Sling]]
ATT.CompactName = "SLING"
ATT.Description = [[Switch weapons faster.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_sling.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_sling", "doi_perk"}

ATT.DeployTimeMult = 0.5

ARC9.LoadAttachment(ATT, "doi_perk_sling")

ATT = {}

ATT.PrintName = [[Light Stock]]
ATT.CompactName = "STOCK"
ATT.Description = [[Aim down sights more quickly.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_stock.png", "mips smooth")
ATT.Free = true
ATT.SortOrder = 0

ATT.Category = {"doi_perk_stock", "doi_perk"}

ATT.AimDownSightsTimeMult = 0.9

ARC9.LoadAttachment(ATT, "doi_perk_stock")

ATT = {}

ATT.PrintName = [[Oiled Bolt]]
ATT.CompactName = "BOLT"
ATT.Description = [[Allows bolt-action rifles to fire more rapidly.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_bolt.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_bolt", "doi_perk"}

ATT.CycleTimeMult = 0.8

ARC9.LoadAttachment(ATT, "doi_perk_bolt")

ATT = {}

ATT.PrintName = [[Custom Parts]]
ATT.CompactName = "CUSTOM"
ATT.Description = [[Improves reload speed.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_reload.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_reload", "doi_perk"}

ATT.ReloadTimeMult = 0.85

ARC9.LoadAttachment(ATT, "doi_perk_reload")

ATT = {}

ATT.PrintName = [[Hi-Velocity Bullets]]
ATT.CompactName = "HI-VEL"
ATT.Description = [[Improves range and muzzle velocity.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_hv_bullets.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_hv_bullets", "doi_perk"}

ATT.PhysBulletMuzzleVelocityMult = 1.25
ATT.RangeMaxMult = 1.25

ARC9.LoadAttachment(ATT, "doi_perk_hv_bullets")

ATT = {}

ATT.PrintName = [[Explosive Bullets]]
ATT.CompactName = "EXPLOSIVE"
ATT.Description = [[Bullets explode on impact for extra damage.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_he_bullets.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_he_bullets", "doi_perk"}

ATT.ExplosionDamage = 10
ATT.ExplosionRadius = 100

ATT.ExplosionEffect = "doi_he_slug"
ATT.ImpactDecal = "smallscorch"
ATT.ImpactSound = "phx/explode00.wav"

ATT.PenetrationMult = 0
ATT.RicochetChanceMult = 0

ARC9.LoadAttachment(ATT, "doi_perk_he_bullets")

ATT = {}

ATT.PrintName = [[Bash]]
ATT.CompactName = "BASH"
ATT.Description = [[Provides close-range melee option. Not as effective as a bayonet.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_bash.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_bash", "doi_perk"}

ATT.Bash = true
ATT.BashDamage = 80
ATT.BashRange = 64
ATT.BashLungeRange = 256
ATT.PreBashTime = 0.25
ATT.PostBashTime = 0.75
ATT.BashDamageType = DMG_CLUB

ARC9.LoadAttachment(ATT, "doi_perk_bash")

ATT = {}

ATT.PrintName = [[Recoil Buffer]]
ATT.CompactName = "RECOIL"
ATT.Description = [[Reduce felt recoil with a custom recoil system.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_recoil.png", "mips smooth")

ATT.SortOrder = 0

ATT.RecoilMult = 0.8

ATT.Category = {"doi_perk_recoil", "doi_perk"}

ARC9.LoadAttachment(ATT, "doi_perk_recoil")

ATT = {}

ATT.PrintName = [[Machined Springs]]
ATT.CompactName = "SPRING"
ATT.Description = [[Allows automatic weapons to fire more rapidly.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_spring.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_spring", "doi_perk"}

ATT.RPMMult = 1.1

ARC9.LoadAttachment(ATT, "doi_perk_spring")

ATT = {}

ATT.PrintName = [[Hollow-Point Bullets]]
ATT.CompactName = "HOLLOW"
ATT.Description = [[Improves damage at close range.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_hp_bullets.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_hp_bullets", "doi_perk"}

ATT.DamageMaxMult = 1.05

ARC9.LoadAttachment(ATT, "doi_perk_hp_bullets")

ATT = {}

ATT.PrintName = [[Auto Sear]]
ATT.CompactName = "AUTOMATIC"
ATT.Description = [[Allows fully-automatic fire.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_auto.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_auto", "doi_perk"}

ATT.RPMMult = 2

ATT.Firemodes = {
    {
        Mode = -1
    }
}

ARC9.LoadAttachment(ATT, "doi_perk_auto")

ATT = {}

ATT.PrintName = [[Holster]]
ATT.CompactName = "HOLSTER"
ATT.Description = [[Switch weapons faster.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_holster.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_holster", "doi_perk"}

ATT.DeployTimeMult = 0.75

ARC9.LoadAttachment(ATT, "doi_perk_holster")

ATT = {}

ATT.PrintName = [[Pistol Stock]]
ATT.CompactName = "STOCK"
ATT.Description = [[Reduce recoil.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_pistolstock.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_pistolstock", "doi_perk"}

ATT.RecoilMult = 0.75
ATT.AimDownSightsTimeMult = 1.15

ARC9.LoadAttachment(ATT, "doi_perk_pistolstock")

ATT = {}

ATT.PrintName = [[Hair Trigger]]
ATT.CompactName = "TRIGGER"
ATT.Description = [[Reduce trigger delay.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_trigger.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_trigger", "doi_perk"}

ATT.TriggerDelayTimeMult = 0.1

ARC9.LoadAttachment(ATT, "doi_perk_trigger")

ATT = {}

ATT.PrintName = [[Steel-Core Bullets]]
ATT.CompactName = "STEEL"
ATT.Description = [[Improves material penetration.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_sc_bullets.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_sc_bullets", "doi_perk"}

ATT.PenetrationMult = 2
ATT.PenetrationDeltaMult = 2.5

ARC9.LoadAttachment(ATT, "doi_perk_sc_bullets")

ATT = {}

ATT.PrintName = [[Burst Mod]]
ATT.CompactName = "BURST"
ATT.Description = [[Converts weapon to a 2-round burst, increasing fire rate.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_burst.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_burst", "doi_perk"}

ATT.RPM = 1000

ATT.Firemodes = {
    {
        Mode = 2
    }
}

ATT.RunawayBurst = true
ATT.PostBurstDelay = 0.11

ARC9.LoadAttachment(ATT, "doi_perk_burst")

ATT = {}

ATT.PrintName = [[Heavy Barrel]]
ATT.CompactName = "BARREL"
ATT.Description = [[Heavy barrel reduces barrel sway, improving accuracy.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_barrel.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_barrel", "doi_perk"}

ATT.RecoilSideMult = 0.5

ARC9.LoadAttachment(ATT, "doi_perk_barrel")

ATT = {}

ATT.PrintName = [[Extended Magazine]]
ATT.CompactName = "MAG"
ATT.Description = [[Extended magazine allows the weapon to fire more times before reloading.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_mag.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_mag", "doi_perk"}

ARC9.LoadAttachment(ATT, "doi_perk_mag")

ATT = {}

ATT.PrintName = [[Slug Rounds]]
ATT.CompactName = "SLUG"
ATT.Description = [[A single shotgun slug with more power but less spread.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_slug_bullets.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_slug_bullets", "doi_perk"}

ATT.Num = 1
ATT.DamageMult = 0.5
ATT.Spread = 0

ARC9.LoadAttachment(ATT, "doi_perk_slug_bullets")

ATT = {}

ATT.PrintName = [[Tight Choke]]
ATT.CompactName = "CHOKE"
ATT.Description = [[Reduces spread on shotguns, and improves damage at range.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_choke.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_choke", "doi_perk"}

ATT.SpreadMult = 0.75
ATT.RangeMaxMult = 1.25

ARC9.LoadAttachment(ATT, "doi_perk_choke")

ATT = {}

ATT.PrintName = [[Silencer]]
ATT.CompactName = "SILENCER"
ATT.Description = [[Silences the weapon.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_silencer.png", "mips smooth")

ATT.Silencer = true
ATT.ShootVolumeMult = 0.75
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.Category = {"doi_perk_silencer", "doi_perk"}

ARC9.LoadAttachment(ATT, "doi_perk_silencer")