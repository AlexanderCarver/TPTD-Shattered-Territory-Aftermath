ITEM.name = "Цинк под патроны калибра 5.56x45 мм NATO"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Малоимпульсный промежуточный патрон с бесфланцевой гильзой бутылочной формы, принятый на вооружение странами НАТО в 1980-х годах. Аналогами данного патрона являются: Советский патрон 5,45x39 мм, который создавался с учётом опыта американцев создания и применения этого типа патрона."

ITEM.ammo = "5.56x45submm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 600

ITEM.price = 25920

ITEM.weight = 0.013
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end