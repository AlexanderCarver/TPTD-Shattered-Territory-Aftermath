ITEM.name = "Патроны калибра 12-го калибра (№00)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Дробь №00 с начала осеннего сезона применяются для стрельбы по гусям, косулям, а так же этим номером дроби можно охотиться на небольших зверей с расстояния до 60 метров. Дробь применяется в гладкоствольных охотничьих ружьях в качестве снаряда для поражения цели: либо дичи на охоте, либо летящей искусственной мишени на стенде. В принципе, подойдёт и для охоты на людей..."

ITEM.ammo = "12gauge00"
ITEM.model = "models/lostsignalproject/items/ammo/12x70.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 25

ITEM.price = 450

ITEM.weight = 0.024
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end