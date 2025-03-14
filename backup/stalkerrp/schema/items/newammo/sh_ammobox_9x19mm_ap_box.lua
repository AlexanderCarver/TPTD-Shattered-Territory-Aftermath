ITEM.name = "Цинк c патронами 9х19 мм (ПБМ гж)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 9x19 мм Парабеллум ПБП гж (Индекс ГРАУ - 7Н31) с бронебойной пулей массой 8 грамма с сердечником из закаленной углеродистой стали, в плакированной томпаком стальной оболочке, в биметаллической гильзе. Конструкция пули основана на опыте с различными бронебойными пистолетными патронами в конце 1990-х годов, направленных на нейтрализацию противника, оснащенного броней базового и среднего уровня защиты, а также способности пробивать легкие укрытия и автомобили, обладая при этом высокой начальной скоростью."

ITEM.ammo = "9x19mm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 800

ITEM.price = 32400

ITEM.weight = 0.009
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон калибра 9x19 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит пистолетную гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end