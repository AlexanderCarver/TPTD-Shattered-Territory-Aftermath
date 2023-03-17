ITEM.name = "Граната 40 мм (M381 HE)"
ITEM.description = ""
ITEM.quantdesc =  "Количество гранат: %s штук. "
ITEM.longdesc = "Применяется в качестве боеприпаса для стрелковых и подствольных гранатомётов. 40мм выстрел с осколочной гранатой, оснащённой взрывателем мгновенного действия, который взводится после выстрела, на расстоянии 2-3 метра от дульного среза."

ITEM.ammo = "M381HE"
ITEM.model = "models/kali/weapons/mgsv/magazines/ammunition/40mm grenade.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 1

ITEM.price = 650

ITEM.weight = 0.340
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end