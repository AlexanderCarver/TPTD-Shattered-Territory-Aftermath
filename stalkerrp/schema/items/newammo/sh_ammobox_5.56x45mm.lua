ITEM.name = "Коробка патронов"
ITEM.description = "Патроны калибра 5.56x45 мм NATO."
ITEM.quantdesc =  "Количество паронов: %s штук."
ITEM.longdesc = "Малоимпульсный промежуточный патрон с бесфланцевой гильзой бутылочной формы, принятый на вооружение странами НАТО в 1980-х годах. Аналогами данного патрона являются: Советский патрон 5,45x39 мм, который создавался с учётом опыта американцев создания и применения этого типа патрона."

ITEM.ammo = "5.56x45mm"
ITEM.model = "models/lostsignalproject/items/ammo/556x45.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 80

ITEM.price = 720

ITEM.weight = 0.004
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end