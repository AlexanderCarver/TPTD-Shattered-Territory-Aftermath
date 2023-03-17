ITEM.name = "Патроны калибра .300 Winchester Magnum"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон .300 Winchester Magnum был разработан в 1963 году известной американской оружейной фирмой «Винчестер» для охотничьих целей. Гильза была взята от британского охотничьего патрона фирмы Holland & Holland того же калибра. Это был четвёртый по счёту боеприпас, произведённый компанией Winchester."

ITEM.ammo = ".300wm"
ITEM.model = "models/kek1ch/ammo_86x70_fmj.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 1150

ITEM.weight = 0.013
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end