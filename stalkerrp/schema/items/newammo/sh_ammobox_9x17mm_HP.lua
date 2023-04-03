ITEM.name = "Патроны калибра 9x17 JHP"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон с экспансивной оболочечной пулей типа «Jacketed Hollow Point» (с углублением в носике пули)."

ITEM.ammo = "9x17hpmm"
ITEM.model = "models/lostsignalproject/items/ammo/9x18_p.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 40

ITEM.price = 1280

ITEM.weight = 0.010
ITEM.flatweight = 0.05 --не трогать

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный калибр", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end