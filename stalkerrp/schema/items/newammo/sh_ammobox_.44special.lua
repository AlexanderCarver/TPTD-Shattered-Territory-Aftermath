ITEM.name = "Коробка патронов"
ITEM.description = "Патроны калибра .44 Special."
ITEM.quantdesc =  "Количество паронов: %s штук."
ITEM.longdesc = "Револьверный патрон центрального воспламенения разработанный компанией Smith & Wesson в 1907 году как усиленный и удлиненный вариант боеприпаса .44 Russian. Изначально проектировался под револьвер Smith & Wesson Triple Lock. По баллистически характеристикам близок к патрону .44 Russian, хотя выгодно отличается от него использованием бездымного пороха."

ITEM.ammo = ".44special"
ITEM.model = "models/lostsignalproject/items/ammo/45cal.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 480

ITEM.weight = 0.013
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end