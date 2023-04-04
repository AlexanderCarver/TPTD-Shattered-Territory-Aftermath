ITEM.name = "Патроны «QuakeMaker»"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 9x19мм Парабеллум QuakeMaker с экспансивной свинцовой пулей массой 8 грамм в легкой стальной гильзе с закраиной из анодированного в красный алюминия. Предназначен для защиты дома и тренировочной стрельбы. Благодаря своей конструкции, патрон обеспечивает выдающееся останавливающее действие, а также вызывает серьезное травмирующее воздействие на цель после попадания. Имеет значительно более низкую начальную скорость по сравнению с другими патронами того же калибра."

ITEM.ammo = "9x19mm"
ITEM.model = "models/lostsignalproject/items/ammo/9x19.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 1440

ITEM.weight = 0.008
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон калибра 9x19 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end