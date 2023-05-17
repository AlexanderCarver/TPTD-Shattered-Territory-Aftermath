ITEM.name = "Средний коробок под патроны УС гж калибра 7.62x39 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Утяжеленный патрон 7.62x39мм УС гж (Индекс ГАУ - 57-Н-231У) с дозвуковой пулей массой 18 грамм с заостренным термоупрочненным стальным сердечником. с биметаллической оболочкой. в биметаллической гильзе с уменьшенным зарядом. Патрон УС (Уменьшенной Скорости) был разработан в 1950-х годах для использования в сочетании с глушителем ПБС-1. обеспечивая снижение шума оружия калибра 7.62x39мм. Пуля обладает хорошей пробивной способностью против брони базового уровня защиты. однако имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "7.62x39submm"
ITEM.model = "models/lostsignalproject/items/ammo/762x39.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 60

ITEM.price = 2964

ITEM.weight = 0.018
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end