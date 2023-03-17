ITEM.name = "Граната 40 мм (M433 HEDP)"
ITEM.description = ""
ITEM.quantdesc =  "Количество гранат: %s штук. "
ITEM.longdesc = "Применяется в качестве боеприпаса для стрелковых и подствольных гранатомётов. 40-мм выстрел с осколочной гранатой повышенной поражающей способности, оснащённой взрывателем мгновенного действия, который взводится после выстрела, на расстоянии 15-30 метров от дульного среза."

ITEM.ammo = "M433HEDP"
ITEM.model = "models/kali/weapons/mgsv/magazines/ammunition/40mm grenade.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 1

ITEM.price = 720

ITEM.weight = 0.350
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end