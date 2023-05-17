ITEM.name = "Средний коробок под патроны «Blank Cartridge» калибра 12.7x99 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Принят на вооружение 25 мая 1935 года. Дульце гильзы закрывалось картонной прокладкой, фиксировавшейся каннелюрой и завальцовкой кромки дульца. Прокладка покрывалась красным лаком для герметизации."

ITEM.ammo = "12.7x99blkmm"
ITEM.model = "models/lostsignalproject/items/ammo/127x55.mdl"
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