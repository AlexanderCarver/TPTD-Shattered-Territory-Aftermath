ITEM.name = "Патроны калибра 7.62x39 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Немецкий винтовочно-пулемётный унитарный патрон с гильзой бутылочной формы с невыступающей закраиной."

ITEM.ammo = "7.62x39mm"
ITEM.model = "models/lostsignalproject/items/ammo/762x39.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 60

ITEM.price = 3192

ITEM.weight = 0.013
ITEM.flatweight = 0.05  

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end