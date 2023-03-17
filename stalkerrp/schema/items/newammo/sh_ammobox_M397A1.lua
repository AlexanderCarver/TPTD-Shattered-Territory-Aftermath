ITEM.name = "Граната 40 мм (M397A1)"
ITEM.description = ""
ITEM.quantdesc =  "Количество гранат: %s штук. "
ITEM.longdesc = "Применяется в качестве боеприпаса для стрелковых и подствольных гранатомётов. 40мм выстрел с осколочной гранатой, модификация выстрела с подпрыгивающей гранатой."

ITEM.ammo = "M397A1"
ITEM.model = "models/kali/weapons/mgsv/magazines/ammunition/40mm grenade.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 1

ITEM.price = 680

ITEM.weight = 0.330
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end