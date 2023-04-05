ITEM.name = "Патроны 12.7x99 мм (M962)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Разработан компанией Винчестер в середине 1980-х годов, пуля патрона состоит из полимерного поддона красного цвета, подкалиберного вольфрамового сердечника."

ITEM.ammo = "12.7x99apmm"
ITEM.model = "models/lostsignalproject/items/ammo/127x55.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 10

ITEM.price = 1000

ITEM.weight = 0.046
ITEM.flatweight = 0.05  

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон калибра 12.7x99 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end