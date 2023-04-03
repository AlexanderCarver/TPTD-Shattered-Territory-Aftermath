ITEM.name = "Средний коробок под патроны калибра 9x17 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Пистолетный унитарный патрон центрального воспламенения с бесфланцевой гильзой цилиндрической формы, разработанный Джоном Браунингом в 1908 году для фирмы Colt на основе патрона 9×20 мм SR Browning Long."

ITEM.ammo = "9x17mm"
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