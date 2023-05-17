ITEM.name = "Средний коробок под M62 Tracer патроны калибра 7.62x51 мм NATO"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 7.62x51мм НАТО M62 с трассирующей пулей массой 11 грамм с сердечником из свинцово-сурьмянистого сплава в биметаллической оболочке, в латунной гильзе. Предназначен для целеуказания и корректировки огня в бою (цвет трассера: Зеленый). Патрон был разработан для обеспечения возможности отслеживания стрельбы автоматического оружия калибра 7.62x51мм, используемого в вооруженных силах Соединенных Штатов, а также существенной пробивной способности против брони базового и среднего уровня защиты. Из-за своей конструкции, пуля имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "7.62x51trgmm"
ITEM.model = "models/lostsignalproject/items/ammo/762x51.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 60

ITEM.price = 3078

ITEM.weight = 0.011
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end