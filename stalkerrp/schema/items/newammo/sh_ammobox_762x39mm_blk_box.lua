ITEM.name = "Цинк с патронами ПХС-19"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "В 70-х годах XX века вместе с 7.62/30-мм стрелково-гранатомётным комплексом «Тишина» под индексом ГРАУ 7Щ2 был принят на вооружение специальный холостой патрон. созданный конструктором ЦНИИТОЧМАШ М.И. Лысенко на основе гильзы патрона обр. 1943 г. Патрон предназначен для метания гранат из 30-мм бесшумного подствольного гранатомета."

ITEM.ammo = "7.62x39blkmm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 600

ITEM.price = 25920

ITEM.weight = 0.018
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 7.62x39 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end