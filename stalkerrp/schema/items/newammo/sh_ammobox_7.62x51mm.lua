ITEM.name = "Коробка патронов"
ITEM.description = "Патроны калибра 7.62x51 мм NATO."
ITEM.quantdesc =  "Количество паронов: %s штук."
ITEM.longdesc = "Стандартный винтовочно-пулемётный боеприпас стран — участниц НАТО. Принят в 1954 году под обозначением T65, впоследствии неоднократно модернизирован. Этот патрон разрабатывался после Второй мировой войны как облегчённый вариант устаревшего .30-06, в расчёте на достижение той же баллистики и энергетики боеприпаса при уменьшении его размеров за счёт меньшего по массе заряда более мощного и современного пороха в уменьшенной гильзе."

ITEM.ammo = "7.62x51mm"
ITEM.model = "models/lostsignalproject/items/ammo/762x51.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 60

ITEM.price = 950

ITEM.weight = 0.004
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end