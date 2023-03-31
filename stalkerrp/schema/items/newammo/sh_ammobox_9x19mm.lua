ITEM.name = "Патроны калибра 9x19 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Пистолетный унитарный патрон с бесфланцевой гильзой цилиндрической формы с небольшой конусностью, разработанный в 1902 году австрийским оружейником Георгом Люгером под созданный им в 1898 году самозарядный пистолет Пистолет Люгера."

ITEM.ammo = "9x19mm"
ITEM.model = "models/lostsignalproject/items/ammo/9x19.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 400

ITEM.weight = 0.008
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный калибр", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end