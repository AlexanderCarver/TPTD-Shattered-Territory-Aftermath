ITEM.name = "Патроны 5.45x39 мм (Т гс)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 5.45х39 мм Т гс (Индекс ГРАУ - 7Т3) с трассирующей пулей массой 13 грамм со свинцовым сердечником. в биметаллической оболочке. в стальной гильзе. Предназначен для целеуказания и корректировки огня в бою (цвет трассера: Красный). Патрон Т (Трассирующий) был представлен в 1974 году вместе с патроном ПС гс (Индекс ГРАУ - 7Н6) для обеспечения возможности отслеживания стрельбы для вооружения 5.45х39 мм. а также хорошей пробивной и поражающей способности против брони базового уровня защиты. Однако. из-за своей конструкции. пуля имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "5.45x39trr"
ITEM.model = "models/lostsignalproject/items/ammo/545x39.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 1200

ITEM.weight = 0.013
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 5.45x39 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end