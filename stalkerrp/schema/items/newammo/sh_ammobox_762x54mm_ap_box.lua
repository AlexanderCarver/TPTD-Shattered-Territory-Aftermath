ITEM.name = "Цинк с патронами СНБ гж"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 7.62x54ммR СНБ гж (Индекс ГРАУ - 7Н14) с бронебойной пулей массой 11 грамм с заостренным термоупрочненным стальным сердечником над свинцовым поддоном, в биметаллической оболочке, в биметаллической гильзе. Патрон СНБ (Снайперский с Бронебойной пулей) был разработан в середине 1990-х годов как модернизация патрона 7.62x54ммR ПС гж с целью улучшения его пробивной способности при стрельбе из снайперских винтовок. Обладает высокой бронепробиваемостью даже против брони 5-6 класса защиты и существенным останавливающим действием."

ITEM.ammo = "7.62x54apmm"
ITEM.model = "models/lostsignalproject/items/misc/small_case.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 400

ITEM.price = 19440

ITEM.weight = 0.011
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон калибра 7.62x54 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end