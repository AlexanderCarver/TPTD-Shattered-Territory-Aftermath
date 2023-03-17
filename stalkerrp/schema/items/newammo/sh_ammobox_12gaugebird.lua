ITEM.name = "Патроны калибра 12-го калибра (№9)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Дробь №9 применяются для стрельбы по бекасам, коростелям, дупелям, перепелам, куропаткам, вальдшнепам. Этим номером дроби можно охотиться на небольших зверей с расстояния до 50 шагов. Слишком мелкая, чтобы нормально убивать, однако доставит неудобства неприятелю."

ITEM.ammo = "12gaugebird"
ITEM.model = "models/lostsignalproject/items/ammo/12x70.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 25

ITEM.price = 320

ITEM.weight = 0.018
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end