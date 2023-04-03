ITEM.name = "Цинк под M993 патроны калибра 7.62x51 мм NATO"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 7.62x51мм НАТО M993 с бронебойной пулей массой 5 грамма с наконечником из карбида вольфрама на алюминиевом сердечнике, в медной оболочке, в латунной гильзе. Патрон был разработан в 1990-х годах, чтобы предоставить личному составу вооруженных сил США возможность пробивать легкие укрытия и легкобронированный транспорт, а также обеспечивать выдающиеся результаты против самых современных специализированных средств защиты 5-6 класса."

ITEM.ammo = "7.62x51matchmm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 400

ITEM.price = 19440

ITEM.weight = 0.011
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end