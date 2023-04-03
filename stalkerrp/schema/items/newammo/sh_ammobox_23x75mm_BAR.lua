ITEM.name = "Патроны калибра 23x75 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 23x75ммR «Баррикада» с цельностальной остроконечной пулей, способной принудительно останавливать автомобили, повреждая их двигатель. Дальность применения до 100 метров."

ITEM.ammo = "23x75barmm"
ITEM.model = "models/lostsignalproject/items/ammo/12x70.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 10

ITEM.price = 480

ITEM.weight = 0.010
ITEM.flatweight = 0.05  

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Ружейный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end