ITEM.name = "Цинк c патронами 5.45x39 мм (БС)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 5.45x39 мм БС гс (Индекс ГРАУ — 7Н24) со специальной бронебойной пулей БС массой 10 грамм с заостренным сердечником из карбида вольфрама. с биметаллической оболочкой. в стальной гильзе. Пуля БС (Бронебойный Сердечник) была разработана в ЦНИИТочМаш в 1998 году для значительного увеличения пробивной способности российского оружия 5.45х39 мм. что привело к выдающимся результатам против некоторых специализированных моделей 5-6 класса защиты. несмотря на относительно низкую начальную скорость пули по сравнению с другими патронами. Однако. из-за своей конструкции. она имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "5.45x39apmm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 600

ITEM.price = 30240

ITEM.weight = 0.010
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 5.45x39 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end