local ATT = {}

ATT.PrintName = "Super-X FRAG-12 Explosive Slug"
ATT.CompactName = "FRAG"
ATT.Icon = Material("entities/arc9_att_fas_ammo_shotgun.png", "mips smooth")
ATT.Description = [[High-explosive slug rounds.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_shotgun"

ATT.Model = "models/weapons/arc9_fas/accessories/ammo_12g_frag.mdl"
ATT.ShellModel = "models/weapons/arc9_fas/shells/12g_generic.mdl"
ATT.ShellMaterial = "models/weapons/arc9_fas/shells/12gauge_frag"

ATT.Num = 1
ATT.SpreadMult = 0

ATT.DamageMinMult = 0.1
ATT.DamageMaxMult = 0.1

ATT.ExplosionDamage = 40
ATT.ExplosionRadius = 128
ATT.ExplosionEffect = "fas_he_slug"
ATT.ImpactDecal = "smallscorch"
ATT.ImpactSound = "phx/explode00.wav"

ATT.PenetrationMult = 0
ATT.RicochetChanceMult = 0

ARC9.LoadAttachment(ATT, "fas_ammo_shotgun_frag")

ATT = {}

ATT.PrintName = "12x70 мм (СКП)"
ATT.CompactName = "12x70 мм (СКП)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_shotgun.png", "mips smooth")
ATT.Description = [[Патрон с калиберной свинцовой пулей 12/70 для ружей 12 калибра.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "12x70mm_ammo_shotgun"
ATT.Ammo = "12x70slugmm"
ATT.Free = true

ATT.Model = "models/weapons/arc9_fas/accessories/ammo_12g_slug.mdl"
ATT.ShellModel = "models/weapons/arc9_fas/shells/12g_generic.mdl"
ATT.ShellMaterial = "models/weapons/arc9_fas/shells/12gauge_slug"

ATT.Num = 1
ATT.SpreadMult = 0

ATT.DamageMinMult = 0.75
ATT.DamageMaxMult = 0.6

ATT.RecoilMult = 1.15

ATT.PenetrationMult = 2.5

ATT.RangeMinMult = 0.25
ATT.RangeMaxMult = 1.5

ARC9.LoadAttachment(ATT, "12x70mm_ammo_shotgun_slug")

ATT = {}

ATT.PrintName = "SpecMAX Triple-Hit"
ATT.CompactName = "TRIPLE"
ATT.Icon = Material("entities/arc9_att_fas_ammo_shotgun.png", "mips smooth")
ATT.Description = [[Shotgun shell with 3 pellets.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_shotgun"

ATT.Model = "models/weapons/arc9_fas/accessories/ammo_12g_triple.mdl"
ATT.ShellModel = "models/weapons/arc9_fas/shells/12g_generic.mdl"
ATT.ShellMaterial = "models/weapons/arc9_fas/shells/12gauge_triple"

ATT.Num = 3
ATT.SpreadMult = 0.5

ATT.DamageMinMult = 0.9
ATT.DamageMaxMult = 0.8

ATT.RecoilMult = 1.05

ATT.PenetrationMult = 1.5

ATT.RangeMinMult = 0.85
ATT.RangeMaxMult = 1.1

ARC9.LoadAttachment(ATT, "fas_ammo_shotgun_triple")

ATT = {}

ATT.PrintName = "12x70 мм (флешетты)"
ATT.CompactName = "12x70 мм (флешетты)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_shotgun.png", "mips smooth")
ATT.Description = [[Патрон, снаряженный заточенными флешеттами 12/70, для ружей 12 калибра. Далеко не самый эффективный патрон, но поверьте - вы бы точно не хотели оказаться по другую сторону дульного среза]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "12x70mm_ammo_shotgun"
ATT.Ammo = "12x70flechmm"
ATT.Free = true

ATT.Model = "models/weapons/arc9_fas/accessories/ammo_12g_slug.mdl"
ATT.ModelMaterial = "models/weapons/arc9_fas/shells/12gauge_flechette"
ATT.ShellModel = "models/weapons/arc9_fas/shells/12g_generic.mdl"
ATT.ShellMaterial = "models/weapons/arc9_fas/shells/12gauge_flechette"

ATT.Num = 4
ATT.SpreadMult = 0.15

ATT.DamageMinMult = 0.5
ATT.DamageMaxMult = 0.5

ATT.RecoilMult = 1.1

ATT.Penetration = 5

ATT.PhysBulletMuzzleVelocityMult = 1.15

ATT.HeadshotDamageMult = 2.5

ARC9.LoadAttachment(ATT, "12x70mm_ammo_shotgun_flechette")

ATT = {}

ATT.PrintName = "12x70 мм (8.5 картечь 'Магнум')"
ATT.CompactName = "12x70 мм (8.5 картечь 'Магнум')"
ATT.Icon = Material("entities/arc9_att_fas_ammo_shotgun.png", "mips smooth")
ATT.Description = [[Патрон, снаряженный 16-ю 8.5мм картечинами 12/70 для ружей 12 калибра.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "12x70mm_ammo_shotgun"
ATT.Ammo = "12x70magmm"
ATT.Free = true

ATT.Model = "models/weapons/arc9_fas/accessories/ammo_12g_slug.mdl"
ATT.ModelMaterial = "models/weapons/arc9_fas/shells/12gauge_magnum"
ATT.ShellModel = "models/weapons/arc9_fas/shells/12g_generic.mdl"
ATT.ShellMaterial = "models/weapons/arc9_fas/shells/12gauge_magnum"

ATT.RecoilMult = 1.5
ATT.VisualRecoilMult = 2

ATT.DamageMaxMult = 1.25
ATT.DamageMinMult = 0.5

ATT.RangeMinMult = 0.75
ATT.RangeMaxMult = 0.5

ATT.PhysBulletMuzzleVelocityMult = 1.1
ATT.PhysBulletDragMult = 1.5

ATT.SpreadMult = 1.25

ARC9.LoadAttachment(ATT, "12x70mm_ammo_shotgun_magnum")

ATT = {}

ATT.PrintName = "AAI Freedomfetti"
ATT.CompactName = "FREEDOM"
ATT.Icon = Material("entities/arc9_att_fas_ammo_shotgun.png", "mips smooth")
ATT.Description = [[Explosive confetti rounds.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_shotgun"

ATT.Model = "models/weapons/arc9_fas/accessories/ammo_12g_slug.mdl"
ATT.ModelMaterial = "models/weapons/arc9_fas/shells/12gauge_freedom"
ATT.ShellModel = "models/weapons/arc9_fas/shells/12g_generic.mdl"
ATT.ShellMaterial = "models/weapons/arc9_fas/shells/12gauge_freedom"

ATT.Num = 4

ATT.SpreadMult = 2

ATT.DamageMinMult = 0.1
ATT.DamageMaxMult = 0.1

ATT.ExplosionDamage = 10
ATT.ExplosionRadius = 128
ATT.ExplosionEffect = "fas_he_party"
ATT.ImpactDecal = "smallscorch"
ATT.ImpactSound = "phx/explode00.wav"

ATT.PenetrationMult = 0
ATT.RicochetChanceMult = 0

ARC9.LoadAttachment(ATT, "fas_ammo_shotgun_freedom")

ATT = {}

ATT.PrintName = "23x75 мм (Баррикада)"
ATT.CompactName = "23x75 мм (Баррикада)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_shotgun.png", "mips smooth")
ATT.Description = [[Патрон 23x75ммR 'Баррикада' с цельностальной остроконечной пулей, способной принудительно останавливать автомобили, повреждая их двигатель. Дальность применения до 100 метров.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ks23_ammo"
ATT.Ammo = "23x75barmm"
ATT.Free = true

ATT.Num = 1
ATT.SpreadMult = 0

ATT.DamageMinMult = 0.75
ATT.DamageMaxMult = 0.6

ATT.RecoilMult = 1.15

ATT.Penetration = 8

ATT.RangeMinMult = 0.25
ATT.RangeMaxMult = 1.5

ARC9.LoadAttachment(ATT, "fas_ks23_ammo_slug")

ATT = {}

ATT.PrintName = "23x75 мм (Звезда)"
ATT.CompactName = "23x75 мм (Звезда)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_shotgun.png", "mips smooth")
ATT.Description = [[Светозвуковой патрон 23х75ммR 'Звезда', предназначенный для психологического воздействия на противника.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ks23_ammo"
ATT.Ammo = "23x75zvezmm"
ATT.Free = true

ATT.Num = 0

ATT.MuzzleParticle = "grenade_flash"

ATT.Hook_PrimaryAttack = function(self)
    local flashorigin = self:GetShootPos()
    local flashpower = 1000
    local targets = ents.FindInSphere(flashorigin, flashpower)

    for _, k in pairs(targets) do
        if k:IsPlayer() then
            local dist = k:EyePos():Distance(flashorigin)
            local dp = (k:EyePos() - flashorigin):Dot(k:EyeAngles():Forward())

            local time = Lerp( dp, 1, 0.25 )

            time = Lerp( dist / flashpower, time, 0 )

            if k:VisibleVec( flashorigin ) and k != self:GetOwner() then
                k:ScreenFade( SCREENFADE.IN, Color( 255, 255, 255, 255 ), 0.5, time )
            else
                k:ScreenFade( SCREENFADE.IN, Color( 255, 255, 255, 255 ), 0.25, 0 )
            end

            k:SetDSP( 37, false )
        end
    end
end

ARC9.LoadAttachment(ATT, "fas_ks23_ammo_stun")