ITEM.name = "Средний коробок под патроны M855 калибра 5.56x45 мм NATO"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 5.56x45мм НАТО M855 с пулей массой 13 грамм со стальным наконечником-пенетратором над свинцовым сердечником. с медной оболочкой. в латунной гильзе. Патрон был разработан в 1980-х годах как эквивалент патрона FN SS109 для вооружения калибра 5.56x45мм. используемого в армии США. Благодаря своей конструкции. пуля в этом патроне обладает хорошей пробивной и поражающей способностью против брони базового уровня защиты. однако имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "5.56x45apmm"
ITEM.model = "models/lostsignalproject/items/ammo/556x45.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 90

ITEM.price = 4104

ITEM.weight = 0.013
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end