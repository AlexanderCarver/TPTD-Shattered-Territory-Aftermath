ITEM.name = "Выстрел для гранатомёта"
ITEM.description = "Граната 40 мм (M576)."
ITEM.quantdesc =  "Количество: %s штук. "
ITEM.longdesc = "Применяется в качестве боеприпаса для стрелковых и подствольных гранатомётов. 40-мм картечный выстрел M576. Используется при зачистках помещений и эффективного поражения небронированных целей."

ITEM.ammo = "M576"
ITEM.model = "models/kali/weapons/mgsv/magazines/ammunition/40mm grenade.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 1

ITEM.price = 580

ITEM.weight = 0.320
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end