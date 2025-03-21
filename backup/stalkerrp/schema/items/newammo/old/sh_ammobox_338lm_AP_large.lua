ITEM.name = "Средний коробок под патроны .338 Lapua Magnum AP"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон .338 Lapua Magnum (8.6x70мм) AP с двухэлементной пулей массой 20 грамм с наконечником из карбида вольфрама и поддоном, в латунной гильзе. Патрон был разработан для увеличения антиматериальных возможностей винтовок калибра .338 Lapua Magnum, и способен пробивать легкобронированный транспорт, проявляя превосходные результаты против самых современных средств индивидуалньой защиты 5-6 класса. Пуля также обладает разрушительным останавливающим и травмирующим воздействием на цель после попадания. Однако, из-за своей конструкции, она имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "338aplm"
ITEM.model = "models/kek1ch/ammo_86x70_fmj.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 2778

ITEM.weight = 0.020
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end