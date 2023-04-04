ITEM.name = "Патроны М21"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "с трассирующей пулей повышенной яркости, принят на вооружение ВВС в марте 1945 года; пуля патрона имела массу 665 гран (46 г) и длину 60,96 мм, трассирующий состав давал ярко-красную трассу до 503 м; вершинка пули окрашивалась в красный цвет."

ITEM.ammo = "12.7x99trrmm"
ITEM.model = "models/lostsignalproject/items/ammo/127x55.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 10

ITEM.price = 800

ITEM.weight = 0.046
ITEM.flatweight = 0.05  

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон калибра 12.7x99 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end