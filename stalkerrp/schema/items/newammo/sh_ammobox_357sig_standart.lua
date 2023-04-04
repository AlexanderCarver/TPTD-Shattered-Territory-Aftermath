ITEM.name = "Патроны .357 SIG"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Револьверный патрон повышенной мощности, созданный в 1994 году швейцарской компанией SIG Sauer совместно с американской компанией Federal Cartridge на основе гильзы .40 S&W. Ввиду высокой точности и хороших останавливающего и пробивного действий используется рядом полицейских департаментов и секретной службой США. Крайне новая находка для нашего времени."

ITEM.ammo = "357sig"
ITEM.model = "models/lostsignalproject/items/ammo/357.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 40

ITEM.price = 1440

ITEM.weight = 0.017
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Револьверный патрон калибра .357 SIG", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end