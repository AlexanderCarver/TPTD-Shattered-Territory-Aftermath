ITEM.name = "Средний коробок под патроны .357 SIG FMJ"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Американский револьверный патрон .357 Magnum большой мощности, созданный компанией Smith & Wesson."

ITEM.ammo = "357apsig"
ITEM.model = "models/lostsignalproject/items/ammo/357.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 120

ITEM.price = 4104

ITEM.weight = 0.017
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end