ITEM.name = "Патроны калибра 7.62x39 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Крупнокалиберный патрон, разработанный в США. Он был создан в 1920-х годах в качестве боеприпаса для крупнокалиберного пулемёта Browning M1921. После Второй мировой войны патрон стандартизован в НАТО и выпускается различными странами-участниками НАТО по единым техническим условиям."

ITEM.ammo = "7.62x39mm"
ITEM.model = "models/lostsignalproject/items/ammo/762x39.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 2280

ITEM.weight = 0.046
ITEM.flatweight = 0.05  

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end