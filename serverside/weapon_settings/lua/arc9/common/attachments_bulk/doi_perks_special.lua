local ATT = {}

ATT.PrintName = [[Bayonet]]
ATT.CompactName = "BAYONET"
ATT.Description = [[Provides close-range melee option with excellent lunge range.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_bayonet.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_bayonet"}

ATT.Bash = true
ATT.BashDamage = 100
ATT.BashRange = 64
ATT.BashLungeRange = 512
ATT.PreBashTime = 0.1
ATT.PostBashTime = 0.75
ATT.BashDamageType = DMG_SLASH

ARC9.LoadAttachment(ATT, "doi_perk_bayonet")

ATT = {}

ATT.PrintName = [[Grenade Launcher]]
ATT.CompactName = "GL"
ATT.Description = [[Mount a grenade launching device to fire rifle grenades.]]
ATT.Icon = Material("entities/arc9_att_doi_perk_gl.png", "mips smooth")

ATT.SortOrder = 0

ATT.Category = {"doi_perk_gl"}


ATT.UBGL = true
ATT.UBGLAmmo = "smg1_grenade"
ATT.UBGLClipSize = 1
ATT.UBGLFiremode = 1
ATT.UBGLFiremodeName = "GRENADE"
ATT.UBGLChamberSize = 0
ATT.ShootVolumeUBGL = 130

ATT.SpreadUBGL = 0

ATT.FirstShootSoundUBGL = false
ATT.HasSightsUBGL = true
ATT.TriggerDelayUBGL = false

ATT.ShootEntUBGL = "doi_proj_riflegrenade"
ATT.ShootEntForceUBGL = 2500

ATT.MuzzleParticleUBGL = "muzzleflash_m79"

ATT.ModelOffset = Vector(0, 0, 1)
ATT.ModelAngleOffset = Angle(0, 180, 0)

ATT.AimDownSightsTimeUBGL = 0.4

ARC9.LoadAttachment(ATT, "doi_perk_gl")