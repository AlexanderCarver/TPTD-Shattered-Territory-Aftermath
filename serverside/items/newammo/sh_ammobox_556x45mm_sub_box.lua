ITEM.name = "Цинк с патронами 5.56x45 мм (MK 255 Mod 0)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 5.56x45 мм НАТО MK 255 Mod 0 (RRLP) с пулей массой 12 грамма с медно-полимерным композитным сердечником. с медной рубашкой. в латунной гильзе. Патрон был разработан под названием RRLP (Reduced Ricochet Limited Penetration - Уменьшенной Рикошетируемости и Ограниченной Пробиваемости). чтобы существенно снизить сопутствующий ущерб от рикошетов и чрезмерного пробивания во время тренировок и операций на близких дистанциях. а также обеспечить значительную поражающую способность."

ITEM.ammo = "5.56x45submm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 600

ITEM.price = 28080

ITEM.weight = 0.012
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 5.56x45 мм NATO", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end