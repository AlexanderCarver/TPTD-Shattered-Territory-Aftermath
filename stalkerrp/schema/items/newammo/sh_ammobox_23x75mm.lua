ITEM.name = "Патроны 23x75 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Предназначен для стрельбы из специального карабина КС-23, имеющего нарезной ствол и подствольный магазин на 3 патрона. Калибр по дну нарезов 26 мм, что соответствует 4-му охотничьему калибру."

ITEM.ammo = "23x75mm"
ITEM.model = "models/lostsignalproject/items/ammo/12x70.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 10

ITEM.price = 480

ITEM.weight = 0.010
ITEM.flatweight = 0.05  

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Ружейный патрон калибра 23х75 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end