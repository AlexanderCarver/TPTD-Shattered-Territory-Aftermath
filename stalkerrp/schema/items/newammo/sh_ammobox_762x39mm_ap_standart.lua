ITEM.name = "Патроны БП гж"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 7.62x39мм БП гж (Индекс ГРАУ - 7Н23) с бронебойной пулей массой 18 грамм с сердечником из закаленной углеродистой стали. с плакированной томпаком биметаллической оболочкой. в биметаллической гильзе. Пуля БП была разработана в 1990-х годах на основе 7.62x39мм ПС гж для улучшения ее конструкции и пробивной способности. Был выбран более длинный и узкий армированный стальной сердечник. позволяющий пробивать броню базового и среднего уровня защиты. обеспечивая значительное останавливающее воздействие. Однако. из-за своей конструкции. пуля имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "7.62x39apmm"
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