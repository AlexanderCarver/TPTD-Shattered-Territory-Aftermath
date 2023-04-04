ITEM.name = "Патроны Т-45М1"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 7.62х39мм Т-45М1 гж (Индекс ГАУ - 57-Т-231ПМ1) с трассирующей пулей массой 18 грамм со свинцовым сердечником. в биметаллической оболочке. в биметаллической гильзе. Предназначен для целеуказания и корректировки огня в бою (цвет трассера: Красный). Является модернизизацией патрона Т-45 (индекс ГАУ - 57-T-231) и обеспечивает дальность трассера на более высокие расстояния. Несмотря на относительно простую конструкцию пули. она обладает хорошей пробивной способностью против брони базового и среднего уровня и значительным останавливающим воздействием. Однако. из-за своей конструкции. пуля имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "7.62x39trrmm"
ITEM.model = "models/lostsignalproject/items/ammo/762x39.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 20

ITEM.price = 1040

ITEM.weight = 0.018
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 7.62x39 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end