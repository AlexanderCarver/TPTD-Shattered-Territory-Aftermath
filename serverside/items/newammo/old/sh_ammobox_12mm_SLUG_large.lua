ITEM.name = "Средний коробок свинцовых калиберных пуль под 12-й калибр"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон с калиберной свинцовой пулей 12/70 для ружей 12 калибра."

ITEM.ammo = "12x70slugmm"
ITEM.model = "models/lostsignalproject/items/ammo/12x76.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 75

ITEM.price = 2992

ITEM.weight = 0.006
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Ружейный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end