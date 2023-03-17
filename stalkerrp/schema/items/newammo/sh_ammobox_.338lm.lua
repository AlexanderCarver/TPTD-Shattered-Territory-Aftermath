ITEM.name = "Патроны калибра .338 Lapua Magnum"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Специальный снайперский патрон для стрельбы на большие дистанции, на сегодняшний момент широко используется также охотниками и стрелками-спортсменами. Целью разработки патрона было создать боеприпас и винтовку под него с возможностью прогнозируемой стрельбы по «ростовой мишени» до 1800 м, то есть винтовку, способную стрелять дальше, чем .300 Win.Mag и при этом легче, чем винтовки под патрон .50 BMG."

ITEM.ammo = ".338lm"
ITEM.model = "models/kek1ch/ammo_86x70_fmj.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 1250

ITEM.weight = 0.013
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end