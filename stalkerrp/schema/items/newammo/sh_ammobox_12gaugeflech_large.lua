ITEM.name = "Средний коробок под патроны калибра 12-го калибра (дротики)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Металлическая стрела-дротик размером с карандаш; особый тип авиационного оружия, разработанный в начале XX века и применявшийся ВВС противоборствующих сторон при атаках скоплений пехоты и кавалерии противника в боях Первой мировой войны, во время Гражданской войны в России. "

ITEM.ammo = "12gaugeflech"
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