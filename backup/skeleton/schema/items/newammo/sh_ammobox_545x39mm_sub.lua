ITEM.name = "Патроны 5.45x39 мм (УС)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Тяжеленный патрон 5.45х39 мм УС гс (Индекс ГРАУ - 7У1) с дозвуковой пулей массой 11 грамм с заостренным сердечником из карбида вольфрама с биметаллической оболочкой. в стальной гильзе с уменьшенным зарядом. Патрон УС (Уменьшенной Скорости) был разработан ЦНИИТочМаш в середине 1980-х годов для использования в автоматах АКС-74УБ и АКС-74УБН вместе с глушителем. обеспечивая цикличность стрельбы и снижение шума в дополнение к значительному поражающему воздействию. Но. несмотря на состав пули. она испытывает трудности с пробивной способностью даже против брони базового уровня защиты и. из-за своей конструкции. имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "5.45x39submm"
ITEM.model = "models/lostsignalproject/items/ammo/545x39.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 1260

ITEM.weight = 0.012
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 5.45x39 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end