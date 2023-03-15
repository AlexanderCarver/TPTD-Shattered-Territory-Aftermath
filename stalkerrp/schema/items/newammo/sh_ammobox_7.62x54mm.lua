ITEM.name = "Коробка патронов"
ITEM.description = "Патроны калибра 7.62x54 мм."
ITEM.quantdesc =  "Количество паронов: %s штук."
ITEM.longdesc = "Унитарный винтовочный патрон с гильзой с выступающей закраиной размерностью 7,62x53,72 мм, общей максимальной длиной патрона 77,16 мм, диаметром пули 7,62 мм и дульной энергией 3500 Дж. Очень мощная штука."

ITEM.ammo = "7.62x54mm"
ITEM.model = "models/lostsignalproject/items/ammo/762x54.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 60

ITEM.price = 1050

ITEM.weight = 0.009
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end