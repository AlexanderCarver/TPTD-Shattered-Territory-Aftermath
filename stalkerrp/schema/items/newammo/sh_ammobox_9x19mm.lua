ITEM.name = "Коробка патронов"
ITEM.description = "Патроны калибра 9x19 мм."
ITEM.quantdesc =  "Количество паронов: %s штук."
ITEM.longdesc = "Пистолетный унитарный патрон с бесфланцевой гильзой цилиндрической формы с небольшой конусностью, разработанный в 1902 году австрийским оружейником Георгом Люгером под созданный им в 1898 году самозарядный пистолет Пистолет Люгера."

ITEM.ammo = "9x19mm"
ITEM.model = "models/lostsignalproject/items/ammo/9x19.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 400

ITEM.weight = 0.008
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end