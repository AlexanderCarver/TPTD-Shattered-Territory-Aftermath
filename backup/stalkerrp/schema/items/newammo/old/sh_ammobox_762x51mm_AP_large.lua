ITEM.name = "Средний коробок под патроны M80 калибра 7.62x51 мм NATO"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 7.62x51мм НАТО M80 с пулей массой 11 грамм с сердечником из свинцово-сурьмянистого сплава в биметаллической оболочке, в латунной гильзе. Этот патрон был принят в вооруженных силах США в качестве замены патрона 7.62x51мм НАТО M59 после войны во Вьетнаме в качестве стандартного боеприпаса. Обеспечивает значительное останавливающее воздействие и хорошую пробивную способность против брони базового и среднего уровня защиты. Однако, из-за своей конструкции, пуля имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "7.62x51apmm"
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