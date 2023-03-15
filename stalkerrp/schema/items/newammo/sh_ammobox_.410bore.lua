ITEM.name = "Коробка патронов"
ITEM.description = "Патроны калибра .410 Bore."
ITEM.quantdesc =  "Количество паронов: %s штук."
ITEM.longdesc = "Считается самым маломощным ружейным патроном. Используется для спортивно-тренировочной и развлекательной стрельбы, самообороны и охоты на мелких животных. Кроме этого, применяется в отдельных моделях крупнокалиберных револьверов. К общим достоинствам этого вида боеприпасов стоит отнести низкую стоимость, умеренный вес и малую отдачу. Патрон выпускается различными производителями, в значительном количестве вариантов снаряжения, которые значительно отличаются друг от друга по своим характеристикам и качеству."

ITEM.ammo = ".410bore"
ITEM.model = "models/lostsignalproject/items/ammo/23mm.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 25

ITEM.price = 480

ITEM.weight = 0.006
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end