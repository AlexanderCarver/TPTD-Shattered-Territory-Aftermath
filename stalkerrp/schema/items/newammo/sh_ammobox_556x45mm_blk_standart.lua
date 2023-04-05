ITEM.name = "Патроны М200"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Холостой патрон предназначен для имитации звукового эффекта стрельбы из всех видов штатного оружия под патроны 5.56 мм. Патрон используется с дульной втулкой. которая обеспечивает давление пороховых газов. необходимое для работы автоматики оружия."

ITEM.ammo = "5.56x45blkmm"
ITEM.model = "models/lostsignalproject/items/ammo/556x45.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 720

ITEM.weight = 0.012
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 5.56x45 мм NATO", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end