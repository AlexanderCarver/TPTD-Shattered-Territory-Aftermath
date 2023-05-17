ITEM.name = "Средний коробок под патроны калибра .50 Action Express"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон калибра 12,7мм, разработанный в 1988 году для израильского пистолета Desert Eagle. Один из самых мощных унитарных пистолетных патронов в мире. Имеет тупоконечную пулю, которая обуславливает огромное останавливающее действие данного патрона."

ITEM.ammo = "50ae"
ITEM.model = "models/lostsignalproject/items/ammo/50cal_hs.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 90

ITEM.price = 3591

ITEM.weight = 0.021
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end