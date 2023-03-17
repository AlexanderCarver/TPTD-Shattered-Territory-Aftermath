ITEM.name = "Патроны калибра 12-го калибра (№000)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Дробь №000 с начала осеннего сезона применяются для стрельбы по косулям, глухарям, дрофам, а так же этим номером дроби можно охотиться на небольших зверей с расстояния до 70 метров. Помимо охоты, эта дробь используется в боевых дробовиках, из-за чего отлично подойдёт для убийства людей."

ITEM.ammo = "12gauge000"
ITEM.model = "models/lostsignalproject/items/ammo/12x70.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 25

ITEM.price = 550

ITEM.weight = 0.028
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end