ITEM.name = "Патроны 23x75 (Звезда)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Светозвуковой патрон 23х75 мм R «Звезда», предназначенный для психологического воздействия на противника."

ITEM.ammo = "23x75zvezmm"
ITEM.model = "models/lostsignalproject/items/ammo/12x76_jhp.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 10

ITEM.price = 1500

ITEM.weight = 0.010
ITEM.flatweight = 0.05  

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Ружейный патрон калибра 23х75 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end