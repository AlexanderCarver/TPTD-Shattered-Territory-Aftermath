ITEM.name = "Патроны 9x17 мм (JHP)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Пистолетный унитарный патрон центрального воспламенения с бесфланцевой гильзой цилиндрической формы, разработанный Джоном Браунингом в 1908 году для фирмы Colt на основе патрона 9×20 мм SR Browning Long. Вариант с экспансивной оболочечной пулей типа «Jacketed Hollow Point» (с углублением в носике пули)."

ITEM.ammo = "9x17hpmm"
ITEM.model = "models/lostsignalproject/items/ammo/9x18_p.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 40

ITEM.price = 1560 

ITEM.weight = 0.007
ITEM.flatweight = 0.05 --не трогать

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон калибра 9x17 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Пистолетная гильза", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end