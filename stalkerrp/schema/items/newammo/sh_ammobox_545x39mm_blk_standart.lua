ITEM.name = "Патроны 7Х3 калибра 5.45x39 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "В конце 1970-х годов в ЦНИИТОЧМАШ в дополнение к боевым патронам Волковым В. И. и Иогансеном Б. А. был разработан холостой патрон. Холостой патрон предназначен для имитации звукового эффекта стрельбы из всех видов штатного оружия под патроны калибра 5.45 мм."

ITEM.ammo = "5.45x39blkmm"
ITEM.model = "models/lostsignalproject/items/ammo/545x39.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 1440

ITEM.weight = 0.013
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end