ITEM.name = "Средний коробок под патроны MK 255 Mod 0 (RRLP) калибра 5.56x45 мм NATO"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 5.56x45мм НАТО MK 255 Mod 0 (RRLP) с пулей массой 13 грамма с медно-полимерным композитным сердечником. с медной рубашкой. в латунной гильзе. Патрон был разработан под названием RRLP (Reduced Ricochet Limited Penetration - Уменьшенной Рикошетируемости и Ограниченной Пробиваемости). чтобы существенно снизить сопутствующий ущерб от рикошетов и чрезмерного пробивания во время тренировок и операций на близких дистанциях. а также обеспечить значительную поражающую способность."

ITEM.ammo = "5.56x45submm"
ITEM.model = "models/lostsignalproject/items/ammo/556x45.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 90

ITEM.price = 4104

ITEM.weight = 0.013
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end