ITEM.name = "Патроны калибра .44 Magnum"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Револьверный боеприпас высокой мощности, разработанный на базе удлиненного патрона .44 S&W Special. Помимо револьверов используется в некоторых карабинах и винтовках. Несмотря на обозначение калибра '.44', пули имеют диаметр около 10,9 мм."

ITEM.ammo = ".44magnum"
ITEM.model = "models/lostsignalproject/items/ammo/357.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 1260

ITEM.weight = 0.017
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end