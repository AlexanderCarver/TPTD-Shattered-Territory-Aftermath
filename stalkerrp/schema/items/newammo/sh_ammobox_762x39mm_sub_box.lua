ITEM.name = "Цинк с патронами 7.62x39 мм (УС гж)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Утяжеленный патрон 7.62x39 мм УС гж (Индекс ГАУ - 57-Н-231У) с дозвуковой пулей массой 20 грамм с заостренным термоупрочненным стальным сердечником. с биметаллической оболочкой. в биметаллической гильзе с уменьшенным зарядом. Патрон УС (Уменьшенной Скорости) был разработан в 1950-х годах для использования в сочетании с глушителем ПБС-1. обеспечивая снижение шума оружия 7.62x39 мм. Пуля обладает хорошей пробивной способностью против брони базового уровня защиты. однако имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "7.62x39submm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 400

ITEM.price = 18000

ITEM.weight = 0.020
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 7.62x39 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end