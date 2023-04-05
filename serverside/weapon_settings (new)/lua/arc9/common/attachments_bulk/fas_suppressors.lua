local ATT = {}

ATT.PrintName = "Gemtech GM-45"
ATT.CompactName = "Gemtech GM-45"
ATT.Icon = Material("entities/arc9_att_fas_supp_gemtech.png", "mips smooth")
ATT.Description = [[Малокалиберный глушитель для пистолетов и пистолетов-пулемётов. Подходит для калибров: 9 мм, .45 ACP 10 мм, .357 SIG, .40 S&W и прочих малых калибров.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "9mm_supp_pistol"

ATT.Model = "models/weapons/arc9_fas/accessories/suppressor_gemtech.mdl"
ATT.Scale = 2

ATT.PhysBulletMuzzleVelocityMult = 1.05
ATT.RangeMaxMult = 1.2
ATT.RangeMinMult = 0.9

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.MoveSpeedMult = 1.1

ATT.Silencer = true
ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 1.1
ATT.RecoilRandomMult = 0.9

ARC9.LoadAttachment(ATT, "fas_supp_gemtech")

ATT = {}

ATT.PrintName = "KAC SOCOM-23 Silencer"
ATT.CompactName = "SOCOM"
ATT.Icon = Material("entities/arc9_att_fas_supp_socom.png", "mips smooth")
ATT.Description = [[Heavy pistol suppressor. Does more to improve performance at the cost of weight.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_supp_pistol"

ATT.Model = "models/weapons/arc9_fas/accessories/suppressor_socom.mdl"
ATT.Scale = 2


ATT.PhysBulletMuzzleVelocityMult = 1.1
ATT.RangeMaxMult = 1.5
ATT.RangeMinMult = 1.25

ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15
ATT.MoveSpeedMult = 1.15

ATT.Silencer = true
ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 1.15
ATT.RecoilRandomMult = 0.9

ARC9.LoadAttachment(ATT, "fas_supp_socom")

ATT = {}

ATT.PrintName = "PBS-4"
ATT.CompactName = "PBS4"
ATT.Icon = Material("entities/arc9_att_fas_supp_pbs4.png", "mips smooth")
ATT.Description = [[Советский надульный многокамерный глушитель расширительного типа, разработанный под патрон 5,45х39 мм в НИИ-61 для использования в составе стрелково-гранатомётного комплекса «Канарейка».]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "pbs4_supp_rifle"

ATT.Model = "models/weapons/arc9_fas/accessories/suppressor_pbs4.mdl"
ATT.Scale = 2

ATT.PhysBulletMuzzleVelocityMult = 1.05
ATT.RangeMaxMult = 1.2
ATT.RangeMinMult = 0.9

ATT.AimDownSightsTimeMult = 1.1
ATT.SprintToFireTimeMult = 1.1
ATT.MoveSpeedMult = 1.1

ATT.Silencer = true
ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 1.1
ATT.RecoilRandomMult = 0.9

ARC9.LoadAttachment(ATT, "fas_supp_pbs4")

ATT = {}

ATT.PrintName = "PBS"
ATT.CompactName = "PBS"
ATT.Icon = Material("entities/arc9_att_fas_supp_pbs1.png", "mips smooth")
ATT.Description = [[Советский надульный многокамерный глушитель расширительного типа, разработанный в НИИ-61 под штатное стрелковое оружие калибра 7,62×39 мм советского пехотного взвода для вооружения разведывательно-диверсионных частей и подразделений войсковой разведки ВС СССР.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "pbs_supp_rifle"

ATT.Model = "models/weapons/arc9_fas/accessories/suppressor_pbs1.mdl"
ATT.Scale = 2


ATT.PhysBulletMuzzleVelocityMult = 1.1
ATT.RangeMaxMult = 1.5
ATT.RangeMinMult = 1.25

ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15
ATT.MoveSpeedMult = 1.15

ATT.Silencer = true
ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 1.15
ATT.RecoilRandomMult = 0.9

ARC9.LoadAttachment(ATT, "fas_supp_pbs1")

ATT = {}

ATT.PrintName = "M762 RC2"
ATT.CompactName = "M762 RC2"
ATT.Icon = Material("entities/arc9_att_fas_supp_surefire.png", "mips smooth")
ATT.Description = [[Глушитель Surefire M762 RC2 для западного оружия, использующего калибр 7.62x51 мм.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "surefire_supp_rifle"

ATT.Model = "models/weapons/arc9_fas/accessories/suppressor_surefire.mdl"
ATT.Scale = 2


ATT.PhysBulletMuzzleVelocityMult = 1.1
ATT.RangeMaxMult = 1.5
ATT.RangeMinMult = 1.25

ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15
ATT.MoveSpeedMult = 1.15

ATT.Silencer = true
ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 1.15
ATT.RecoilRandomMult = 0.9

ARC9.LoadAttachment(ATT, "fas_supp_surefire")

ATT = {}

ATT.PrintName = "Cyma KAC M4 QD"
ATT.CompactName = "Cyma KAC M4 QD"
ATT.Icon = Material("entities/arc9_att_fas_supp_um4.png", "mips smooth")
ATT.Description = [[Многоканальный глушитель для западного оружия, использующего калибр 5.56x45 мм]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "kac_supp_rifle"

ATT.Model = "models/weapons/arc9_fas/accessories/suppressor_um4.mdl"
ATT.Scale = 2


ATT.PhysBulletMuzzleVelocityMult = 1.1
ATT.RangeMaxMult = 1.5
ATT.RangeMinMult = 1.25

ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15
ATT.MoveSpeedMult = 1.15

ATT.Silencer = true
ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 1.15
ATT.RecoilRandomMult = 0.9

ARC9.LoadAttachment(ATT, "fas_supp_um4")

ATT = {}

ATT.PrintName = "TX8C Ranger-12"
ATT.CompactName = "TX8C"
ATT.Icon = Material("entities/arc9_att_fas_supp_tx8.png", "mips smooth")
ATT.Description = [[Finnish silencer developed originally for the RK62, but adapted for use on shotguns.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_supp_shotgun"

ATT.Model = "models/weapons/arc9_fas/accessories/suppressor_tx8.mdl"
ATT.Scale = 3


ATT.PhysBulletMuzzleVelocityMult = 0.9
ATT.RangeMaxMult = 0.8
ATT.RangeMinMult = 0.9

ATT.AimDownSightsTimeMult = 1.15
ATT.SprintToFireTimeMult = 1.15
ATT.MoveSpeedMult = 1.15

ATT.Silencer = true
ATT.ShootVolumeMult = 0.8
ATT.MuzzleParticleOverride = "muzzleflash_suppressed"
ATT.MuzzleParticleOverride_Priority = 10
ATT.MuzzleDevice = true

ATT.RecoilUpMult = 1.15
ATT.RecoilRandomMult = 0.9

ARC9.LoadAttachment(ATT, "fas_supp_tx8")