ITEM.name = "Цинк с патронами 7.62x54 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Унитарный винтовочный патрон с гильзой с выступающей закраиной размерностью 7,62x53,72 мм, общей максимальной длиной патрона 77,16 мм, диаметром пули 7,62 мм и дульной энергией 3500 Дж. Очень мощная штука."

ITEM.ammo = "7.62x54mm"
ITEM.model = "models/lostsignalproject/items/misc/small_case.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 400

ITEM.price = 19440

ITEM.weight = 0.021
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон калибра 7.62x54 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит винтовочную гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end