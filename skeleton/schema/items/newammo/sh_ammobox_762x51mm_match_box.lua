ITEM.name = "Цинк c патронами 7.62x51 (M993)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 7.62x51 мм НАТО M993 с бронебойной пулей массой 24 грамма с наконечником из карбида вольфрама на алюминиевом сердечнике, в медной оболочке, в латунной гильзе. Патрон был разработан в 1990-х годах, чтобы предоставить личному составу вооруженных сил США возможность пробивать легкие укрытия и легкобронированный транспорт, а также обеспечивать выдающиеся результаты против самых современных специализированных средств защиты 5-6 класса."

ITEM.ammo = "7.62x51matchmm"
ITEM.model = "models/lostsignalproject/items/misc/small_case.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 400

ITEM.price = 26640

ITEM.weight = 0.024
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон калибра 7.62x51 мм NATO", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит винтовочную гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end