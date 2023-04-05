local ATT = {}

ATT.PrintName = "9x17mm (HST 380)"
ATT.CompactName = "9x17mm (HST 380)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[HST 380 Auto Micro был разработан для самообороны и использования в небольших пистолетах, таких как Smith & Wesson Bodyguard. Он имеет никелированный корпус и специальный капсюль, повышающий его надежность в полуавтоматическом ручном огнестрельном оружии. Он весит 99 гран и имеет глубокое коническое полое острие, обеспечивающее постоянное расширение.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "mac11_ammo_bullet"
ATT.Ammo = "9x17hpmm"
ATT.Free = true

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "mac11_ammo_hp")

---------------------------------------------------------------------
ATT = {}

ATT.PrintName = "9x18mm (ПБМ гж)"
ATT.CompactName = "9x18mm (ПБМ гж)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Armor piercing rounds pierce armor more effectively, allowing them to damage hardened targets, but are more likely to overpenetrate flesh.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "bizon_ammo_bullet"
ATT.Ammo = "9x18apmm"
ATT.Free = true

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "bizon_ammo_ap")
-------
ATT = {}

ATT.PrintName = "9x18mm (10ТК)"
ATT.CompactName = "9x18mm (10ТК)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_blank.png", "mips smooth")
ATT.Description = [[Utterly harmless.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "bizon_ammo_bullet"
ATT.Ammo = "9x18blkmm"
ATT.Free = true

ATT.Num = 0
ATT.RecoilMult = 0.1
ATT.VisualRecoilMult = 0.1

ARC9.LoadAttachment(ATT, "bizon_ammo_blank")
-------
ATT = {}

ATT.PrintName = "9x18mm (СП8 гж)"
ATT.CompactName = "9x18mm (СП8 гж)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[Hollowpoints break up in the body at sufficiently close ranges, but lose power at longer distance. In addition, they are much less likely to ricochet or penetrate surfaces.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "bizon_ammo_bullet"
ATT.Ammo = "9x18hpmm"
ATT.Free = true

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "bizon_ammo_hp")

---------------------------------------------------------------------
ATT = {}

ATT.PrintName = "9x19mm (ПБП гж)"
ATT.CompactName = "9x19mm (ПБП гж)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Патрон 9x19мм Парабеллум ПБП гж (Индекс ГРАУ - 7Н31) с бронебойной пулей массой 4,1 грамма с сердечником из закаленной углеродистой стали, в плакированной томпаком стальной оболочке, в биметаллической гильзе. Конструкция пули основана на опыте с различными бронебойными пистолетными патронами в конце 1990-х годов, направленных на нейтрализацию противника, оснащенного броней базового и среднего уровня защиты, а также способности пробивать легкие укрытия и автомобили, обладая при этом высокой начальной скоростью.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "9x19mm_ammo_bullet"
ATT.Ammo = "9x19apmm"
ATT.Free = true

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "9x19mm_ammo_ap")
-------
ATT = {}

ATT.PrintName = "9x19mm (QuakeMaker)"
ATT.CompactName = "9x19mm (QuakeMaker)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[Патрон 9x19мм Парабеллум QuakeMaker с экспансивной свинцовой пулей массой 11,9 грамм в легкой стальной гильзе с закраиной из анодированного в красный алюминия. Предназначен для защиты дома и тренировочной стрельбы. Благодаря своей конструкции, патрон обеспечивает выдающееся останавливающее действие, а также вызывает серьезное травмирующее воздействие на цель после попадания. Имеет значительно более низкую начальную скорость по сравнению с другими патронами того же калибра.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "9x19mm_ammo_bullet"
ATT.Ammo = "9x19hpmm"
ATT.Free = true

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "9x19mm_ammo_hp")
---------------------------------------------------------------------
ATT = {}

ATT.PrintName = ".45 ACP (AP)"
ATT.CompactName = ".45 ACP (AP)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Патрон .45 ACP (11.43x23мм) AP (Armor-Piercing - "Бронебойная") с двухкомпонентной бронебойной пулей с латунным поддоном и 7мм наконечником из закаленной стали. Несмотря на то, что пуля имеет среднюю начальную скорость относительно других патронов того же калибра, она обладает отличной убойностью и пробивной способностью против брони базового и среднего уровня защиты.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "45acp_ammo_bullet"
ATT.Ammo = "45apacp"
ATT.Free = true

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "45acp_ammo_ap")
-------
ATT = {}

ATT.PrintName = ".45 ACP (FMJ)"
ATT.CompactName = ".45 ACP (FMJ)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[Патрон .45 ACP (11.43x23мм) Match FMJ (Cartridge, Caliber .45, Ball, Match, M1911) с пулей массой 14,9 грамм со свинцовым сердечником, в медной оболочке, в латунной гильзе. Патрон изготовлен с повышенной точностью, чтобы удовлетворить потребности современного оружия калибра .45 ACP, используемого вооруженными силами США. Обладает значительной убойностью и пробивной способностью против брони базового и среднего уровня защиты.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "45acp_ammo_bullet"
ATT.Ammo = "45hpacp"
ATT.Free = true

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "45acp_ammo_hp")
---------------------------------------------------------------------
ATT = {}

ATT.PrintName = ".357 SIG (FMJ)"
ATT.CompactName = ".357 SIG (FMJ)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Цельнометаллический американский револьверный патрон .357 Magnum большой мощности, созданный компанией Smith & Wesson.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "357sig_ammo_bullet"
ATT.Ammo = "357apsig"
ATT.Free = true

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "357sig_ammo_ap")
-------
ATT = {}

ATT.PrintName = ".357 SIG (HP)"
ATT.CompactName = ".357 SIG (HP)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[Экспансивный американский револьверный патрон .357 Magnum большой мощности, созданный компанией Smith & Wesson.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "357sig_ammo_bullet"
ATT.Ammo = "357hpsig"
ATT.Free = true

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "357sig_ammo_hp")
---------------------------------------------------------------------
ATT = {}

ATT.PrintName = "5.45x39 мм (БС)"
ATT.CompactName = "5.45x39 мм (БС)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Патрон 5.45x39мм БС гс (Индекс ГРАУ — 7Н24) со специальной бронебойной пулей БС массой 4.1 грамм с заостренным сердечником из карбида вольфрама. с биметаллической оболочкой. в стальной гильзе. Пуля БС (Бронебойный Сердечник) была разработана в ЦНИИТочМаш в 1998 году для значительного увеличения пробивной способности российского оружия калибра 5.45x39мм. что привело к выдающимся результатам против некоторых специализированных моделей 5-6 класса защиты. несмотря на относительно низкую начальную скорость пули по сравнению с другими патронами. Однако. из-за своей конструкции. она имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "545x39mm_ammo_bullet"
ATT.Ammo = "5.45x39apmm"
ATT.Free = true

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "545x39mm_ammo_ap")
-------
ATT = {}

ATT.PrintName = "5.45x39 мм (7Х3)"
ATT.CompactName = "5.45x39 мм (7Х3)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_blank.png", "mips smooth")
ATT.Description = [[В конце 1970-х годов в ЦНИИТОЧМАШ в дополнение к боевым патронам Волковым В. И. и Иогансеном Б. А. был разработан холостой патрон. Холостой патрон предназначен для имитации звукового эффекта стрельбы из всех видов штатного оружия под патроны калибра 5.45 мм.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "545x39mm_ammo_bullet"
ATT.Ammo = "5.45x39blkmm"
ATT.Free = true

ATT.Num = 0
ATT.RecoilMult = 0.1
ATT.VisualRecoilMult = 0.1

ARC9.LoadAttachment(ATT, "545x39mm_ammo_blank")
-------
ATT = {}

ATT.PrintName = "5.45x39 мм (HP)"
ATT.CompactName = "5.45x39 мм (HP)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[Патрон 5.45x39мм с экспансивной пулей (Hollow Point - "Экспансивная Полость") массой 3.6 грамм со свинцовым сердечником. с биметаллической полуоболочкой. в стальной гильзе. Предназначен для охоты. обороны дома и тренировочной стрельбы. Пуля обладает обильным расширением и энергией удара. что придает ей исключительную поражающую способность и травмирующее воздействие на цель после удара.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "545x39mm_ammo_bullet"
ATT.Ammo = "5.45x39hpmm"
ATT.Free = true

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "545x39mm_ammo_hp")
-------
ATT = {}

ATT.PrintName = "5.45x39 мм (УС)"
ATT.CompactName = "5.45x39 мм (УС)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_sub.png", "mips smooth")
ATT.Description = [[Утяжеленный патрон 5.45x39мм УС гс (Индекс ГРАУ - 7У1) с дозвуковой пулей массой 5.1 грамм с заостренным сердечником из карбида вольфрама с биметаллической оболочкой. в стальной гильзе с уменьшенным зарядом. Патрон УС (Уменьшенной Скорости) был разработан ЦНИИТочМаш в середине 1980-х годов для использования в автоматах АКС-74УБ и АКС-74УБН вместе с глушителем. обеспечивая цикличность стрельбы и снижение шума в дополнение к значительному поражающему воздействию. Но. несмотря на состав пули. она испытывает трудности с пробивной способностью даже против брони базового уровня защиты и. из-за своей конструкции. имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "545x39mm_ammo_bullet"
ATT.Ammo = "5.45x39submm"
ATT.Free = true

ATT.PhysBulletMuzzleVelocityMult = 0.85
ATT.PhysBulletGravityMult = 0.85
ATT.PenetrationMult = 0.75
ATT.RangeMinMult = 0.75

ATT.TracerNum = 0
ATT.RecoilMult = 0.9

ARC9.LoadAttachment(ATT, "545x39mm_ammo_sub")
-------
ATT = {}

ATT.PrintName = "5.45x39 мм (Т гс)"
ATT.CompactName = "5.45x39 мм (Т гс)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_trr.png", "mips smooth")
ATT.Description = [[Патрон 5.45х39мм Т гс (Индекс ГРАУ - 7Т3) с трассирующей пулей массой 3.2 грамм со свинцовым сердечником. в биметаллической оболочке. в стальной гильзе. Предназначен для целеуказания и корректировки огня в бою (цвет трассера: Красный). Патрон Т (Трассирующий) был представлен в 1974 году вместе с патроном ПС гс (Индекс ГРАУ - 7Н6) для обеспечения возможности отслеживания стрельбы для вооружения калибра 5.45x39мм. а также хорошей пробивной и поражающей способности против брони базового уровня защиты. Однако. из-за своей конструкции. пуля имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "545x39mm_ammo_bullet"
ATT.Ammo = "5.45x39trr"
ATT.Free = true

ATT.TracerNum = 1
ATT.TracerColor = Color(255, 25, 25)

ATT.TracerSizeAdd = 1

ATT.FancyBullets = true
ATT.HookP_ModifyBullet = function(swep, bullet)
    local d = swep:GetDamageDeltaAtRange(bullet.Travelled)

    if d == 0 then
        bullet.Color = Color(255, 25, 25)
    elseif d == 1 then
        bullet.Color = Color(0, 0, 0, 0)
    else
        local r = Lerp(d, 255, 0)
        local g = Lerp(d, 25, 0)
        local b = Lerp(d, 25, 0)
        local a = Lerp(d, 255, 0)

        bullet.Color = Color(r, g, b, a)
    end
end

ARC9.LoadAttachment(ATT, "545x39mm_ammo_trr")
---------------------------------------------------------------------
ATT = {}

ATT.PrintName = "5.56x45 мм НАТО (M855)"
ATT.CompactName = "5.56x45 мм НАТО (M855)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Патрон 5.56x45мм НАТО M855 с пулей массой 4 грамма со стальным наконечником-пенетратором над свинцовым сердечником. с медной оболочкой. в латунной гильзе. Патрон был разработан в 1980-х годах как эквивалент патрона FN SS109 для вооружения калибра 5.56x45мм. используемого в армии США. Благодаря своей конструкции. пуля в этом патроне обладает хорошей пробивной и поражающей способностью против брони базового уровня защиты. однако имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "556x45mm_ammo_bullet"
ATT.Ammo = "5.56x45apmm"
ATT.Free = true

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "556x45mm_ammo_ap")
-------
ATT = {}

ATT.PrintName = "5.56x45 мм НАТО (M200)"
ATT.CompactName = "5.56x45 мм НАТО (M200)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_blank.png", "mips smooth")
ATT.Description = [[Холостой патрон предназначен для имитации звукового эффекта стрельбы из всех видов штатного оружия под патроны калибра 5.56 мм. Патрон используется с дульной втулкой. которая обеспечивает давление пороховых газов, необходимое для работы автоматики оружия.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "556x45mm_ammo_bullet"
ATT.Ammo = "5.56x45blkmm"
ATT.Free = true

ATT.Num = 0
ATT.RecoilMult = 0.1
ATT.VisualRecoilMult = 0.1

ARC9.LoadAttachment(ATT, "556x45mm_ammo_blank")
-------
ATT = {}

ATT.PrintName = "5.56x45 мм НАТО (HP)"
ATT.CompactName = "5.56x45 мм НАТО (HP)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[Патрон .223 Remington (5.56x45мм) с экспансивной пулей массой 3.6 грамм со свинцовым сердечником, с биметаллической оболочкой, в стальной гильзе. Предназначен для охоты, домашней обороны и стрельбы по мишеням. Несмотря на то, что пуля не обладает полной энергией промежуточного патрона, она имеет значительную поражающую способность, а также оказывает существенное травмирующее воздействие на цель после удара.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "556x45mm_ammo_bullet"
ATT.Ammo = "5.56x45hpmm"
ATT.Free = true

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "556x45mm_ammo_hp")
-------
ATT = {}

ATT.PrintName = "5.56x45 мм НАТО (MK 255 Mod 0)"
ATT.CompactName = "5.56x45 мм НАТО (MK 255 Mod 0)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_sub.png", "mips smooth")
ATT.Description = [[Патрон 5.56x45мм НАТО MK 255 Mod 0 (RRLP) с пулей массой 4 грамма с медно-полимерным композитным сердечником. с медной рубашкой. в латунной гильзе. Патрон был разработан под названием RRLP (Reduced Ricochet Limited Penetration - "Уменьшенной Рикошетируемости и Ограниченной Пробиваемости"). чтобы существенно снизить сопутствующий ущерб от рикошетов и чрезмерного пробивания во время тренировок и операций на близких дистанциях. а также обеспечить значительную поражающую способность.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "556x45mm_ammo_bullet"
ATT.Ammo = "5.56x45submm"
ATT.Free = true

ATT.PhysBulletMuzzleVelocityMult = 0.85
ATT.PhysBulletGravityMult = 0.85
ATT.PenetrationMult = 0.75
ATT.RangeMinMult = 0.75

ATT.TracerNum = 0
ATT.RecoilMult = 0.9

ARC9.LoadAttachment(ATT, "556x45mm_ammo_sub")
-------
ATT = {}

ATT.PrintName = "5.56x45 мм НАТО (M856)"
ATT.CompactName = "5.56x45 мм НАТО (M856)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_trr.png", "mips smooth")
ATT.Description = [[Трассирующий патрон M856 используется в оружии M16A2 /3 / 4, серии M4 и M249 (среди прочего оружия НАТО калибра 5,56 мм). Этот патрон рассчитан на дальность стрельбы до 900 метров и имеет красный наконечник (оранжевый при соотношении 4 к 1 с M249).]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "556x45mm_ammo_bullet"
ATT.Ammo = "5.56x45trr"
ATT.Free = true

ATT.TracerNum = 1
ATT.TracerColor = Color(255, 25, 25)

ATT.TracerSizeAdd = 1

ATT.FancyBullets = true
ATT.HookP_ModifyBullet = function(swep, bullet)
    local d = swep:GetDamageDeltaAtRange(bullet.Travelled)

    if d == 0 then
        bullet.Color = Color(255, 25, 25)
    elseif d == 1 then
        bullet.Color = Color(0, 0, 0, 0)
    else
        local r = Lerp(d, 255, 0)
        local g = Lerp(d, 25, 0)
        local b = Lerp(d, 25, 0)
        local a = Lerp(d, 255, 0)

        bullet.Color = Color(r, g, b, a)
    end
end

ARC9.LoadAttachment(ATT, "556x45mm_ammo_trr")
---------------------------------------------------------------------
ATT = {}

ATT.PrintName = "7.62x39 мм (БП гж)"
ATT.CompactName = "7.62x39 мм (БП гж)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Патрон 7.62x39мм БП гж (Индекс ГРАУ - 7Н23) с бронебойной пулей массой 7.9 грамм с сердечником из закаленной углеродистой стали. с плакированной томпаком биметаллической оболочкой. в биметаллической гильзе. Пуля БП была разработана в 1990-х годах на основе 7.62x39мм ПС гж для улучшения ее конструкции и пробивной способности. Был выбран более длинный и узкий армированный стальной сердечник. позволяющий пробивать броню базового и среднего уровня защиты. обеспечивая значительное останавливающее воздействие. Однако. из-за своей конструкции. пуля имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x39mm_ammo_bullet"
ATT.Ammo = "7.62x39apmm"
ATT.Free = true

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "762x39mm_ammo_ap")
-------
ATT = {}

ATT.PrintName = "7.62x39 мм (ПХС-19)"
ATT.CompactName = "7.62x39 мм (ПХС-19)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_blank.png", "mips smooth")
ATT.Description = [[В 70-х годах XX века вместе с 7.62/30-мм стрелково-гранатомётным комплексом «Тишина» под индексом ГРАУ 7Щ2 был принят на вооружение специальный холостой патрон. созданный конструктором ЦНИИТОЧМАШ М.И. Лысенко на основе гильзы патрона обр. 1943 г. Патрон предназначен для метания гранат из 30-мм бесшумного подствольного гранатомета.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x39mm_ammo_bullet"
ATT.Ammo = "7.62x39blkmm"
ATT.Free = true

ATT.Num = 0
ATT.RecoilMult = 0.1
ATT.VisualRecoilMult = 0.1

ARC9.LoadAttachment(ATT, "762x39mm_ammo_blank")
-------
ATT = {}

ATT.PrintName = "7.62x39 мм (HP)"
ATT.CompactName = "7.62x39 мм (HP)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[Патрон 7.62x39мм с экспансивной пулей (Hollow Point) массой 8 грамм со свинцовым сердечником. с биметаллической полуоболочкой. в стальной гильзе. Предназначен для охоты. обороны дома и стрельбы. Пуля в этом патроне обладает отличным расширением и передачей энергии при ударе. что придает ей исключительное останавливающее и травмирующее воздействие на цель после попадания. что делает патрон хорошим выбором для охоты.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x39mm_ammo_bullet"
ATT.Ammo = "7.62x39hpmm"
ATT.Free = true

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "762x39mm_ammo_hp")
-------
ATT = {}

ATT.PrintName = "7.62x39 мм (УС гж)"
ATT.CompactName = "7.62x39 мм (УС гж)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_sub.png", "mips smooth")
ATT.Description = [[Утяжеленный патрон 7.62x39мм УС гж (Индекс ГАУ - 57-Н-231У) с дозвуковой пулей массой 12.6 грамм с заостренным термоупрочненным стальным сердечником. с биметаллической оболочкой. в биметаллической гильзе с уменьшенным зарядом. Патрон УС (Уменьшенной Скорости) был разработан в 1950-х годах для использования в сочетании с глушителем ПБС-1. обеспечивая снижение шума оружия калибра 7.62x39мм. Пуля обладает хорошей пробивной способностью против брони базового уровня защиты. однако имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x39mm_ammo_bullet"
ATT.Ammo = "7.62x39submm"
ATT.Free = true

ATT.PhysBulletMuzzleVelocityMult = 0.85
ATT.PhysBulletGravityMult = 0.85
ATT.PenetrationMult = 0.75
ATT.RangeMinMult = 0.75

ATT.TracerNum = 0
ATT.RecoilMult = 0.9

ARC9.LoadAttachment(ATT, "762x39mm_ammo_sub")
-------
ATT = {}

ATT.PrintName = "7.62x39 мм (Т-45М1 гж)"
ATT.CompactName = "7.62x39 мм (Т-45М1 гж)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_trr.png", "mips smooth")
ATT.Description = [[Патрон 7.62х39мм Т-45М1 гж (Индекс ГАУ - 57-Т-231ПМ1) с трассирующей пулей массой 7.6 грамм со свинцовым сердечником. в биметаллической оболочке. в биметаллической гильзе. Предназначен для целеуказания и корректировки огня в бою (цвет трассера: Красный). Является модернизизацией патрона Т-45 (индекс ГАУ - 57-T-231) и обеспечивает дальность трассера на более высокие расстояния. Несмотря на относительно простую конструкцию пули. она обладает хорошей пробивной способностью против брони базового и среднего уровня и значительным останавливающим воздействием. Однако. из-за своей конструкции. пуля имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x39mm_ammo_bullet"
ATT.Ammo = "7.62x39trrmm"
ATT.Free = true

ATT.TracerNum = 1
ATT.TracerColor = Color(255, 25, 25)

ATT.TracerSizeAdd = 1

ATT.FancyBullets = true
ATT.HookP_ModifyBullet = function(swep, bullet)
    local d = swep:GetDamageDeltaAtRange(bullet.Travelled)

    if d == 0 then
        bullet.Color = Color(255, 25, 25)
    elseif d == 1 then
        bullet.Color = Color(0, 0, 0, 0)
    else
        local r = Lerp(d, 255, 0)
        local g = Lerp(d, 25, 0)
        local b = Lerp(d, 25, 0)
        local a = Lerp(d, 255, 0)

        bullet.Color = Color(r, g, b, a)
    end
end

ARC9.LoadAttachment(ATT, "762x39mm_ammo_trr")
---------------------------------------------------------------------
ATT = {}

ATT.PrintName = "7.62x51 мм НАТО (M80)"
ATT.CompactName = "7.62x51 мм НАТО (M80)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Патрон 7.62x51мм НАТО M80 с пулей массой 9,5 грамм с сердечником из свинцово-сурьмянистого сплава в биметаллической оболочке, в латунной гильзе. Этот патрон был принят в вооруженных силах США в качестве замены патрона 7.62x51мм НАТО M59 после войны во Вьетнаме в качестве стандартного боеприпаса. Обеспечивает значительное останавливающее воздействие и хорошую пробивную способность против брони базового и среднего уровня защиты. Однако, из-за своей конструкции, пуля имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x51mm_ammo_bullet"
ATT.Ammo = "7.62x51apmm"
ATT.Free = true

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "762x51mm_ammo_ap")
-------
ATT = {}

ATT.PrintName = "7.62x51 мм НАТО (ТПЗ SP)"
ATT.CompactName = "7.62x51 мм НАТО (ТПЗ SP)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[Патрон 7.62x51мм с пулей массой 10,7 грамм с мягким наконечником (Soft-Point) со свинцовым сердечником, в биметаллической полуоболочке, в стальной гильзе. Произведен на Тульском Патронном Заводе. Патрон универсален и предназначен как для охоты и самообороны, так и для развлекательной и спортивной стрельбы. Также способен пробивать броню базового уровня защиты. Однако, из-за своей конструкции, пуля имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x51mm_ammo_bullet"
ATT.Ammo = "7.62x51hpmm"
ATT.Free = true

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "762x51mm_ammo_hp")
-------
ATT = {}

ATT.PrintName = "7.62x51 мм НАТО (M993)"
ATT.CompactName = "7.62x51 мм НАТО (M993)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_match.png", "mips smooth")
ATT.Description = [[Патрон 7.62x51мм НАТО M993 с бронебойной пулей массой 8,2 грамма с наконечником из карбида вольфрама на алюминиевом сердечнике, в медной оболочке, в латунной гильзе. Патрон был разработан в 1990-х годах, чтобы предоставить личному составу вооруженных сил США возможность пробивать легкие укрытия и легкобронированный транспорт, а также обеспечивать выдающиеся результаты против самых современных специализированных средств защиты 5-6 класса.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x51mm_ammo_bullet"
ATT.Ammo = "7.62x51matchmm"
ATT.Free = true

ATT.PhysBulletDragMult = 0.5
ATT.PhysBulletMuzzleVelocityMult = 1.25
ATT.PhysBulletGravityMult = 0.75
ATT.PenetrationMult = 0.8

ATT.DamageMaxMult = 0.9

ARC9.LoadAttachment(ATT, "762x51mm_ammo_match")
-------
ATT = {}

ATT.PrintName = "7.62x51 мм НАТО (M61)"
ATT.CompactName = "7.62x51 мм НАТО (M61)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_tmj.png", "mips smooth")
ATT.Description = [[Патрон 7.62x51мм НАТО M61 с бронебойной пулей массой 9,8 грамм с сердечником из закаленной стали и плакированной биметаллической оболочкой, в латунной гильзе. Патрон был разработан в 1950-х годах на основе патрона .30-06 Springfield AP M2 для обеспечения вооруженных сил США бронебойной пулей для автоматического оружия калибра 7.62x51мм НАТО, способной пробивать самую современную специализированную броню 5-6 класса защиты, вдобавок обеспечивая значительное останавливающее воздействие. Однако, из-за своей конструкции, пуля имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x51mm_ammo_bullet"
ATT.Ammo = "7.62x51tmjmm"
ATT.Free = true

ATT.PenetrationMult = 2.5
ATT.RicochetChanceMult = 2
ATT.DamageMinMult = 0.75

ARC9.LoadAttachment(ATT, "762x51mm_ammo_tmj")
-------
ATT = {}

ATT.PrintName = "7.62x51 мм НАТО (M62 Tracer)"
ATT.CompactName = "7.62x51 мм НАТО (M62 Tracer)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_trg.png", "mips smooth")
ATT.Description = [[Патрон 7.62x51мм НАТО M62 с трассирующей пулей массой 9,2 грамм с сердечником из свинцово-сурьмянистого сплава в биметаллической оболочке, в латунной гильзе. Предназначен для целеуказания и корректировки огня в бою (цвет трассера: Зеленый). Патрон был разработан для обеспечения возможности отслеживания стрельбы автоматического оружия калибра 7.62x51мм, используемого в вооруженных силах Соединенных Штатов, а также существенной пробивной способности против брони базового и среднего уровня защиты. Из-за своей конструкции, пуля имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x51mm_ammo_bullet"
ATT.Ammo = "7.62x51trgmm"
ATT.Free = true

ATT.TracerNum = 1
ATT.TracerColor = Color(25, 255, 25)

ATT.TracerSizeAdd = 1

ATT.FancyBullets = true
ATT.HookP_ModifyBullet = function(swep, bullet)
    local d = swep:GetDamageDeltaAtRange(bullet.Travelled)

    if d == 0 then
        bullet.Color = Color(25, 255, 25)
    elseif d == 1 then
        bullet.Color = Color(0, 0, 0, 0)
    else
        local r = Lerp(d, 25, 0)
        local g = Lerp(d, 255, 0)
        local b = Lerp(d, 25, 0)
        local a = Lerp(d, 255, 0)

        bullet.Color = Color(r, g, b, a)
    end
end

ARC9.LoadAttachment(ATT, "762x51mm_ammo_trg")
---------------------------------------------------------------------
ATT = {}

ATT.PrintName = "7.62x54 мм (СНБ гж)"
ATT.CompactName = "7.62x54 мм (СНБ гж)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Патрон 7.62x54ммR СНБ гж (Индекс ГРАУ - 7Н14) с бронебойной пулей массой 9,8 грамм с заостренным термоупрочненным стальным сердечником над свинцовым поддоном, в биметаллической оболочке, в биметаллической гильзе. Патрон СНБ (Снайперский с Бронебойной пулей) был разработан в середине 1990-х годов как модернизация патрона 7.62x54ммR ПС гж с целью улучшения его пробивной способности при стрельбе из снайперских винтовок. Обладает высокой бронепробиваемостью даже против брони 5-6 класса защиты и существенным останавливающим действием.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x54mm_ammo_bullet"
ATT.Ammo = "7.62x54apmm"
ATT.Free = true

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "762x54mm_ammo_ap")
-------
ATT = {}

ATT.PrintName = "7.62x54 мм (57-X-340)"
ATT.CompactName = "7.62x54 мм (57-X-340)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_blank.png", "mips smooth")
ATT.Description = [[Патрон состоит из гильзы бутылочной формы с выступающей закраиной (фланцем), капсюля-воспламенителя и метательного заряда из пороха марки Х. Гильза обжата в шестилучевую звезду. Холостой патрон.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x54mm_ammo_bullet"
ATT.Ammo = "7.62x54blkmm"
ATT.Free = true

ATT.Num = 0
ATT.RecoilMult = 0.1
ATT.VisualRecoilMult = 0.1

ARC9.LoadAttachment(ATT, "762x54mm_ammo_blank")
-------
ATT = {}

ATT.PrintName = "7.62x54 мм (ЛПС гж)"
ATT.CompactName = "7.62x54 мм (ЛПС гж)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[Патрон 7.62х54ммR ЛПС гж (Индекс ГРАУ - 57-Н-323С) с пулей массой 9,6 грамм со стальным сердечником, в биметаллической оболочке, в биметаллической гильзе. Патрон ЛПС (Легкая Пуля со Стальным сердечником) был принят на вооружение в 1953 году для советского оружия калибра 7.62x54ммR, и за эти годы претерпел множество изменений в материалах изготовления. Благодаря стальному сердечнику, пуля обладает хорошей бронепробиваемостью против базового и среднего уровня защиты и значительным останавливающим воздействием, однако она имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x54mm_ammo_bullet"
ATT.Ammo = "7.62x54hpmm"
ATT.Free = true

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "762x54mm_ammo_hp")
-------
ATT = {}

ATT.PrintName = "7.62x54 мм (Т-46М гж)"
ATT.CompactName = "7.62x54 мм (Т-46М гж)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_trg.png", "mips smooth")
ATT.Description = [[Патрон 7.62х54ммR Т-46М гж (Индекс ГРАУ - 7Т2М) с трассирующей пулей массой 9,6 грамм со свинцовым сердечником, в биметаллической оболочке, в биметаллической гильзе. Предназначен для целеуказания и корректировки огня в бою (цвет трассера: Зеленый). Является модернизирацией патрона Т-46 (Индекс ГРАУ - 7Т2) и обеспечивает возможность отслеживания на более дальних дистанциях. По баллистической эффективности аналогичен патрону ЛПС гж (Индекс ГРАУ - 57-Н-323С). Несмотря на относительно простую конструкцию, пуля имеет хорошую пробивную способность против брони базового и среднего уровня защиты и значительное останавливающее воздействие. Однако она имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "762x54mm_ammo_bullet"
ATT.Ammo = "7.62x54trgmm"
ATT.Free = true

ATT.TracerNum = 1
ATT.TracerColor = Color(25, 255, 25)

ATT.TracerSizeAdd = 1

ATT.FancyBullets = true
ATT.HookP_ModifyBullet = function(swep, bullet)
    local d = swep:GetDamageDeltaAtRange(bullet.Travelled)

    if d == 0 then
        bullet.Color = Color(25, 255, 25)
    elseif d == 1 then
        bullet.Color = Color(0, 0, 0, 0)
    else
        local r = Lerp(d, 25, 0)
        local g = Lerp(d, 255, 0)
        local b = Lerp(d, 25, 0)
        local a = Lerp(d, 255, 0)

        bullet.Color = Color(r, g, b, a)
    end
end

ARC9.LoadAttachment(ATT, "762x54mm_ammo_trg")
---------------------------------------------------------------------
ATT = {}

ATT.PrintName = ".338 Lapua Magnum (AP)"
ATT.CompactName = ".338 Lapua Magnum (AP)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Патрон .338 Lapua Magnum (8.6x70мм) AP с двухэлементной пулей массой 15.4 грамм с наконечником из карбида вольфрама и поддоном, в латунной гильзе. Патрон был разработан для увеличения антиматериальных возможностей винтовок калибра .338 Lapua Magnum, и способен пробивать легкобронированный транспорт, проявляя превосходные результаты против самых современных средств индивидуалньой защиты 5-6 класса. Пуля также обладает разрушительным останавливающим и травмирующим воздействием на цель после попадания. Однако, из-за своей конструкции, она имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "338lm_ammo_bullet"
ATT.Ammo = "338aplm"
ATT.Free = true

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "338aplm_ammo_ap")
-------
ATT = {}

ATT.PrintName = ".338 Lapua Magnum (TAC-X)"
ATT.CompactName = ".338 Lapua Magnum (TAC-X)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[Гражданский патрон .338 Lapua Magnum (8.6x70мм) TAC-X с экспансивной медной пулей массой 18.4 грамм, в латунной гильзе. Пуля обеспечивает хорошую передачу энергии на больших дистанциях и предназначена для охоты на крупную дичь, так как обладает превосходным останавливающим действием для своего калибра и способна вызывать критическое травмирующее воздействие на цель после удара. Однако, несмотря на высокую энергию калибра .338 Lapua Magnum и конструкцию пули, она не обладает бронебойными свойствами и имеет высокую вероятность отскока от различных поверхностей.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "338lm_ammo_bullet"
ATT.Ammo = "338hplm"
ATT.Free = true

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "338hplm_ammo_hp")
---------------------------------------------------------------------
ATT = {}

ATT.PrintName = "12.7x99 мм (M962)"
ATT.CompactName = "12.7x99 мм (M962)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Разработан компанией Винчестер в середине 1980-х годов, пуля патрона состоит из полимерного поддона красного цвета, подкалиберного вольфрамового сердечника.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "127x99mm_ammo_bullet"
ATT.Ammo = "12.7x99apmm"
ATT.Free = true

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "127x99mm_ammo_ap")
-------
ATT = {}

ATT.PrintName = "12.7x99 мм (Blank Cartridge)"
ATT.CompactName = "12.7x99 мм (Blank Cartridge)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_blank.png", "mips smooth")
ATT.Description = [[Принят на вооружение 25 мая 1935 года. Дульце гильзы закрывалось картонной прокладкой, фиксировавшейся каннелюрой и завальцовкой кромки дульца. Прокладка покрывалась красным лаком для герметизации.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "127x99mm_ammo_bullet"
ATT.Ammo = "12.7x99blkmm"
ATT.Free = true

ATT.Num = 0
ATT.RecoilMult = 0.1
ATT.VisualRecoilMult = 0.1

ARC9.LoadAttachment(ATT, "127x99mm_ammo_blank")
-------
ATT = {}

ATT.PrintName = "12.7x99 мм (M21)"
ATT.CompactName = "12.7x99 мм (M21)"
ATT.Icon = Material("entities/arc9_att_fas_ammo_trr.png", "mips smooth")
ATT.Description = [[Патрон с трассирующей пулей повышенной яркости, принят на вооружение ВВС в марте 1945 года; пуля патрона имела массу 664 гран (43 г) и длину 60,96 мм, трассирующий состав давал ярко-красную трассу до 503 м. Вершина пули окрашивалась в красный цвет.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "127x99mm_ammo_bullet"
ATT.Ammo = "12.7x99trrmm"
ATT.Free = true

ATT.TracerNum = 1
ATT.TracerColor = Color(255, 25, 25)

ATT.TracerSizeAdd = 1

ATT.FancyBullets = true
ATT.HookP_ModifyBullet = function(swep, bullet)
    local d = swep:GetDamageDeltaAtRange(bullet.Travelled)

    if d == 0 then
        bullet.Color = Color(255, 25, 25)
    elseif d == 1 then
        bullet.Color = Color(0, 0, 0, 0)
    else
        local r = Lerp(d, 255, 0)
        local g = Lerp(d, 25, 0)
        local b = Lerp(d, 25, 0)
        local a = Lerp(d, 255, 0)

        bullet.Color = Color(r, g, b, a)
    end
end

ARC9.LoadAttachment(ATT, "127x99mm_ammo_trr")
---------------------------------------------------------------------














ATT = {}

ATT.PrintName = "Red Tracers"
ATT.CompactName = "TR-R"
ATT.Icon = Material("entities/arc9_att_fas_ammo_trr.png", "mips smooth")
ATT.Description = [[Tracers are easier to see than standard tracer rounds, and in addition, "burn away" when at their maximum range, allowing you to easily visualize your weapon's capabilities.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_bullet"

ATT.TracerNum = 1
ATT.TracerColor = Color(255, 25, 25)

ATT.TracerSizeAdd = 1

ATT.FancyBullets = true
ATT.HookP_ModifyBullet = function(swep, bullet)
    local d = swep:GetDamageDeltaAtRange(bullet.Travelled)

    if d == 0 then
        bullet.Color = Color(255, 25, 25)
    elseif d == 1 then
        bullet.Color = Color(0, 0, 0, 0)
    else
        local r = Lerp(d, 255, 0)
        local g = Lerp(d, 25, 0)
        local b = Lerp(d, 25, 0)
        local a = Lerp(d, 255, 0)

        bullet.Color = Color(r, g, b, a)
    end
end

ARC9.LoadAttachment(ATT, "fas_ammo_trr")

ATT = {}

ATT.PrintName = "Green Tracers"
ATT.CompactName = "TR-G"
ATT.Icon = Material("entities/arc9_att_fas_ammo_trg.png", "mips smooth")
ATT.Description = [[Tracers are easier to see than standard tracer rounds, and in addition, "burn away" when at their maximum range, allowing you to easily visualize your weapon's capabilities.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_bullet"

ATT.TracerNum = 1
ATT.TracerColor = Color(25, 255, 25)

ATT.TracerSizeAdd = 1

ATT.FancyBullets = true
ATT.HookP_ModifyBullet = function(swep, bullet)
    local d = swep:GetDamageDeltaAtRange(bullet.Travelled)

    if d == 0 then
        bullet.Color = Color(25, 255, 25)
    elseif d == 1 then
        bullet.Color = Color(0, 0, 0, 0)
    else
        local r = Lerp(d, 25, 0)
        local g = Lerp(d, 255, 0)
        local b = Lerp(d, 25, 0)
        local a = Lerp(d, 255, 0)

        bullet.Color = Color(r, g, b, a)
    end
end

ARC9.LoadAttachment(ATT, "fas_ammo_trg")

ATT = {}

ATT.PrintName = "Armor Piercing"
ATT.CompactName = "AP"
ATT.Icon = Material("entities/arc9_att_fas_ammo_ap.png", "mips smooth")
ATT.Description = [[Armor piercing rounds pierce armor more effectively, allowing them to damage hardened targets, but are more likely to overpenetrate flesh.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_bullet"

ATT.DamageMinMult = 0.8
ATT.DamageMaxMult = 0.8
ATT.ArmorPiercingAdd = 0.25
ATT.PenetrationMult = 1.1

ARC9.LoadAttachment(ATT, "fas_ammo_ap")

ATT = {}

ATT.PrintName = "Overpressure +P"
ATT.CompactName = "+P"
ATT.Icon = Material("entities/arc9_att_fas_ammo_pp.png", "mips smooth")
ATT.Description = [[Overpressure rounds improve headshot damage, but pack a much greater kick.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_bullet"

ATT.HeadshotDamageMult = 1.5
ATT.RecoilMult = 1.15

ARC9.LoadAttachment(ATT, "fas_ammo_pp")

ATT = {}

ATT.PrintName = "Hollowpoints"
ATT.CompactName = "HP"
ATT.Icon = Material("entities/arc9_att_fas_ammo_hp.png", "mips smooth")
ATT.Description = [[Hollowpoints break up in the body at sufficiently close ranges, but lose power at longer distance. In addition, they are much less likely to ricochet or penetrate surfaces.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_bullet"

ATT.RangeMinMult = 1.25
ATT.DamageMinMult = 0.8

ATT.PenetrationMult = 0.25
ATT.RicochetChanceMult = 0.25

ARC9.LoadAttachment(ATT, "fas_ammo_hp")

ATT = {}

ATT.PrintName = "Total Metal Jacket"
ATT.CompactName = "TMJ"
ATT.Icon = Material("entities/arc9_att_fas_ammo_tmj.png", "mips smooth")
ATT.Description = [[Solid copper jacketed rounds improve material penetration and ricochet chance, but are slightly less effective at long range.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_bullet"

ATT.PenetrationMult = 2.5
ATT.RicochetChanceMult = 2
ATT.DamageMinMult = 0.75

ARC9.LoadAttachment(ATT, "fas_ammo_tmj")

ATT = {}

ATT.PrintName = "Match Grade"
ATT.CompactName = "MATCH"
ATT.Icon = Material("entities/arc9_att_fas_ammo_match.png", "mips smooth")
ATT.Description = [[Precision tooled rounds have a flatter trajectory and fly faster, but lighter rounds penetrate materials worse and have poor terminal ballistics.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_bullet"

ATT.PhysBulletDragMult = 0.5
ATT.PhysBulletMuzzleVelocityMult = 1.25
ATT.PhysBulletGravityMult = 0.75
ATT.PenetrationMult = 0.8

ATT.DamageMaxMult = 0.9

ARC9.LoadAttachment(ATT, "fas_ammo_match")

ATT = {}

ATT.PrintName = "Subsonic"
ATT.CompactName = "SUB"
ATT.Icon = Material("entities/arc9_att_fas_ammo_sub.png", "mips smooth")
ATT.Description = [[Low-charge rounds are invisible, and reduce recoil, but have reduced muzzle velocity and penetration.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_bullet"

ATT.PhysBulletMuzzleVelocityMult = 0.85
ATT.PhysBulletGravityMult = 0.85
ATT.PenetrationMult = 0.75
ATT.RangeMinMult = 0.75

ATT.TracerNum = 0
ATT.RecoilMult = 0.9

ARC9.LoadAttachment(ATT, "fas_ammo_sub")

ATT = {}

ATT.PrintName = "Blanks"
ATT.CompactName = "BLK"
ATT.Icon = Material("entities/arc9_att_fas_ammo_blank.png", "mips smooth")
ATT.Description = [[Utterly harmless.]]
ATT.MenuCategory = "ARC9 - Gunsmith Arms Source"
ATT.Category = "fas_ammo_bullet"

ATT.Num = 0
ATT.RecoilMult = 0.1
ATT.VisualRecoilMult = 0.1

ARC9.LoadAttachment(ATT, "fas_ammo_blank")