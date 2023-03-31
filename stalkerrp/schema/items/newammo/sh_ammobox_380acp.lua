ITEM.name = "Патроны калибра .380 ACP"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Пистолетный унитарный патрон центрального воспламенения с бесфланцевой гильзой цилиндрической формы, разработанный Джоном Браунингом в 1908 году для фирмы Colt на основе патрона 9x20 мм SR Browning Long. Гильза патрона цилиндрической формы с невыступающей закраиной, образованной кольцевой проточкой."

ITEM.ammo = ".380acp"
ITEM.model = "models/lostsignalproject/items/ammo/357.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 650

ITEM.weight = 0.006
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end