ITEM.name = "Патроны 9x19 мм (ПБМ гж)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 9x18 мм ПМ ПБМ гж (Индекс ГРАУ - 7Н25) с бронебойной пулей массой 7 грамм с сердечником из закаленной углеродистой стали, в биметаллической гильзе. Патрон был разработан в 1990-х годах для увеличения пробивной способности оружия 9x18мм ПМ, и, благодаря своей высокой начальной скорости, он способен пробивать броню базового и среднего уровня защиты на коротких дистанциях ценой увеличенной отдачи."

ITEM.ammo = "9x18apmm"
ITEM.model = "models/lostsignalproject/items/ammo/9x18_p.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 40

ITEM.price = 1680

ITEM.weight = 0.007
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон калибра 9x18 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end