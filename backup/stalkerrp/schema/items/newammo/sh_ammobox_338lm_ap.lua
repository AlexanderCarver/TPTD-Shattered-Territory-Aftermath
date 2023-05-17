ITEM.name = "Патроны .338 (AP)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон .338 Lapua Magnum (8.6x70мм) AP с двухэлементной пулей массой 49 грамм с наконечником из карбида вольфрама и поддоном, в латунной гильзе. Патрон был разработан для увеличения антиматериальных возможностей винтовок .338 Lapua Magnum, и способен пробивать легкобронированный транспорт, проявляя превосходные результаты против самых современных средств индивидуалньой защиты 5-6 класса. Пуля также обладает разрушительным останавливающим и травмирующим воздействием на цель после попадания. Однако, из-за своей конструкции, она имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "338aplm"
ITEM.model = "models/kek1ch/ammo_86x70_fmj.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 15

ITEM.price = 1230

ITEM.weight = 0.049
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон калибра .338 Lapua Magnum", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит винтовочную гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end