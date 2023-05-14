ITEM.name = "Патроны калибра 9x17 мм JHP (большая пачка)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон с экспансивной оболочечной пулей типа «Jacketed Pollow Point» (с углублением в носике пули)."

ITEM.ammo = "9x17hpmm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 120

ITEM.price = 3648

ITEM.weight = 0.010
ITEM.flatweight = 0.05 --не трогать

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный калибр", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end