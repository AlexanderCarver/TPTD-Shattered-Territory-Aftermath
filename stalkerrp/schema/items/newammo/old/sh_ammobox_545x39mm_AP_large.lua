ITEM.name = "Средний коробок под патроны БС калибра 5.45x39 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 5.45x39мм БС гс (Индекс ГРАУ — 7Н24) со специальной бронебойной пулей БС массой 11 грамм с заостренным сердечником из карбида вольфрама. с биметаллической оболочкой. в стальной гильзе. Пуля БС (Бронебойный Сердечник) была разработана в ЦНИИТочМаш в 1998 году для значительного увеличения пробивной способности российского оружия калибра 5.45x39мм. что привело к выдающимся результатам против некоторых специализированных моделей 5-6 класса защиты. несмотря на относительно низкую начальную скорость пули по сравнению с другими патронами. Однако. из-за своей конструкции. она имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "5.45x39apmm"
ITEM.model = "models/lostsignalproject/items/ammo/545x39.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 90

ITEM.price = 3762

ITEM.weight = 0.011
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end