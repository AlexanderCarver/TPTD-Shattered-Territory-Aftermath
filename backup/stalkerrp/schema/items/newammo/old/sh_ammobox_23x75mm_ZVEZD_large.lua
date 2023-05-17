ITEM.name = "Средний коробок с патронами «Звезда» калибра 23x75 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Светозвуковой патрон 23х75ммR «Звезда», предназначенный для психологического воздействия на противника."

ITEM.ammo = "23x75zvezmm"
ITEM.model = "models/lostsignalproject/items/ammo/12x70.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 1368

ITEM.weight = 0.010
ITEM.flatweight = 0.05  

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Ружейный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end