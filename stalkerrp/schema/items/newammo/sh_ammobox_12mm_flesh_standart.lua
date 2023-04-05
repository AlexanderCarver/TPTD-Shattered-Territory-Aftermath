ITEM.name = "Патроны 12x70 (Флешетта)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон, снаряженный заточенными флешеттами 12/70, для ружей 12 калибра. Далеко не самый эффективный патрон, но поверьте - вы бы точно не хотели оказаться по другую сторону дульного среза."

ITEM.ammo = "12x70flechmm"
ITEM.model = "models/lostsignalproject/items/ammo/23mm.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 25

ITEM.price = 1400

ITEM.weight = 0.006
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Ружейный патрон 12-го калибра", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end