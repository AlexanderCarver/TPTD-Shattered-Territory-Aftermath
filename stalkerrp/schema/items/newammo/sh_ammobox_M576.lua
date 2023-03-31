ITEM.name = "Граната 40 мм (M576)"
ITEM.description = ""
ITEM.quantdesc =  "Количество гранат: %s штук. "
ITEM.longdesc = "Применяется в качестве боеприпаса для стрелковых и подствольных гранатомётов. 40-мм картечный выстрел M576. Используется при зачистках помещений и эффективного поражения небронированных целей."

ITEM.ammo = "M576"
ITEM.model = "models/kali/weapons/mgsv/magazines/ammunition/40mm grenade.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 1

ITEM.price = 580

ITEM.weight = 0.320
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Гранатомётный выстрел", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит дробь", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end