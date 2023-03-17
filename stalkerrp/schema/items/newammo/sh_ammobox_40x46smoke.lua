ITEM.name = "Граната 40 мм (дымовая)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Применяется в качестве боеприпаса для стрелковых и подствольных гранатомётов. Внутри гранаты располагается химическое вещество, которое при спуске взрывателя создаёт плотное дымововое облако, необходимое для тактических маневров."

ITEM.ammo = "40x46smoke"
ITEM.model = "models/kali/weapons/mgsv/magazines/ammunition/40mm grenade.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 1

ITEM.price = 520

ITEM.weight = 0.320
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end