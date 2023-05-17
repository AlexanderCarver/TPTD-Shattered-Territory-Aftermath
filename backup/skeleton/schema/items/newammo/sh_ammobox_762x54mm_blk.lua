ITEM.name = "Патроны 7.62x54 мм (57-Х-340)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Холостой патрон предназначен для имитации звукового эффекта стрельбы из всех видов штатного оружия под патроны 7.62x54 мм. Патрон используется с дульной втулкой. которая обеспечивает давление пороховых газов. необходимое для работы автоматики оружия."

ITEM.ammo = "7.62x54blkmm"
ITEM.model = "models/lostsignalproject/items/ammo/762x54.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 20

ITEM.price = 540

ITEM.weight = 0.020
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон калибра 7.62x54 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит винтовочную гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end