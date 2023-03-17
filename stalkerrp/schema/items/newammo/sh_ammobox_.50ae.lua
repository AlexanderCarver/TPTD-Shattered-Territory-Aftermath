ITEM.name = "Патроны калибра .50 Action Express"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон калибра 12,7мм, разработанный в 1988 году для израильского пистолета Desert Eagle. Один из самых мощных унитарных пистолетных патронов в мире. Имеет тупоконечную пулю, которая обуславливает огромное останавливающее действие данного патрона."

ITEM.ammo = ".50ae"
ITEM.model = "models/lostsignalproject/items/ammo/50cal_hs.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 620

ITEM.weight = 0.019
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end