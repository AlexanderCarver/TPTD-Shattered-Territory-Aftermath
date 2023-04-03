ITEM.name = "Патроны HP калибра 5.45x39 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 5.45x39мм с экспансивной пулей (Hollow Point - Экспансивная Полость) массой 11 грамм со свинцовым сердечником. с биметаллической полуоболочкой. в стальной гильзе. Предназначен для охоты. обороны дома и тренировочной стрельбы. Пуля обладает обильным расширением и энергией удара. что придает ей исключительную поражающую способность и травмирующее воздействие на цель после удара."

ITEM.ammo = "5.45x39hpmm"
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