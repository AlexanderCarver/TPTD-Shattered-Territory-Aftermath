ITEM.name = "Патроны калибра .22 Long Rifle"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон был разработан в 1887 году фирмой «J. Stevens Arm & Tool Company» и является мировым рекордсменом по числу выпущенных и израсходованных патронов. В настоящее время этот патрон — один из немногих оставшихся в широком использовании патронов кольцевого воспламенения. Достаточно мелкий калибр."

ITEM.ammo = ".22lr"
ITEM.model = "models/lostsignalproject/items/ammo/357.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 350

ITEM.weight = 0.003
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end