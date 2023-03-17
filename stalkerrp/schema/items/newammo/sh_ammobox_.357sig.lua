ITEM.name = "Патроны калибра .357 SIG"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Пистолетный патрон повышенной мощности, созданный в 1994 году швейцарской компанией SIG Sauer совместно с американской компанией Federal Cartridge на основе гильзы калибра .40 S&W. Ввиду высокой точности и хороших останавливающего и пробивного действий используется рядом полицейских департаментов и секретной службой США. Крайне новая находка для нашего времени."

ITEM.ammo = ".357sig"
ITEM.model = "models/lostsignalproject/items/ammo/357.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 620

ITEM.weight = 0.008
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end