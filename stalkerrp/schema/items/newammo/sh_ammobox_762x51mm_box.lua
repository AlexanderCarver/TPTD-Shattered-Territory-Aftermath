ITEM.name = "Цинк под патроны калибра 7.62x51 мм NATO"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Стандартный винтовочно-пулемётный боеприпас стран — участниц НАТО. Принят в 1954 году под обозначением T65, впоследствии неоднократно модернизирован. Этот патрон разрабатывался после Второй мировой войны как облегчённый вариант устаревшего .30-06, в расчёте на достижение той же баллистики и энергетики боеприпаса при уменьшении его размеров за счёт меньшего по массе заряда более мощного и современного пороха в уменьшенной гильзе."

ITEM.ammo = "7.62x51mm"
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