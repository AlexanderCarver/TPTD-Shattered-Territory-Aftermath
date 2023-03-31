ITEM.name = "Патроны калибра 9x18 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Пистолетный унитарный патрон с бесфланцевой гильзой, созданный для замены патрона 7,62x25мм ТТ. Разработан Б.В. Сёминым в 1951 году."

ITEM.ammo = "9x18mm"
ITEM.model = "models/lostsignalproject/items/ammo/9x18.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 450

ITEM.weight = 0.011
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный калибр", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end