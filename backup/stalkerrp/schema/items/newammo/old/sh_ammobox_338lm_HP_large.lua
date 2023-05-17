ITEM.name = "Средний коробок под патроны .338 Lapua Magnum TAC-X"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Гражданский патрон .338 Lapua Magnum (8.6x70мм) TAC-X с экспансивной медной пулей массой 20 грамм, в латунной гильзе. Пуля обеспечивает хорошую передачу энергии на больших дистанциях и предназначена для охоты на крупную дичь, так как обладает превосходным останавливающим действием для своего калибра и способна вызывать критическое травмирующее воздействие на цель после удара. Однако, несмотря на высокую энергию калибра .338 Lapua Magnum и конструкцию пули, она не обладает бронебойными свойствами и имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "338hplm"
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