ITEM.name = "Коробка патронов"
ITEM.description = "Патроны калибра 10 мм."
ITEM.quantdesc =  "Количество паронов: %s штук."
ITEM.longdesc = "Патрон был разработан шведской компанией Norma Precision в 1983 году для пистолета Bren Ten, спроектированного американской фирмой Dornaus & Dixon Enterprises с целью замены Colt M1911. Калибр был выбран из-за высокой мощности, и по идее предусматривался для замены популярного патрона .45 ACP."

ITEM.ammo = "10mm"
ITEM.model = "models/lostsignalproject/items/ammo/357.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 550

ITEM.weight = 0.012
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end