ITEM.name = "Средний коробок под патроны калибра 7.65x17 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Пистолетный патрон с гильзой, имеющей мало выступающую закраину. За время своего длительного существования имел множество наименований."

ITEM.ammo = "7.65x17mm"
ITEM.model = "models/lostsignalproject/items/misc/drugskit.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 90

ITEM.price = 3762

ITEM.weight = 0.006
ITEM.flatweight = 0.05  

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end