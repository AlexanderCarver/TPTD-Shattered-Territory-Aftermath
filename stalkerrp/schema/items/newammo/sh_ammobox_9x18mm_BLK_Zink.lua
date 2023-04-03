ITEM.name = "Цинк под патроны калибра 9x18 10ТК"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Данный патрон имеет калибр 10ТК т.е. его диаметр 10мм что является увеличенным диаметром патронника у СХП, длина патрона 21мм, вальцовка звездой - при выстреле немного раскрывается. (состоит из - гильза, капсуль и пороховой заряд)."

ITEM.ammo = "9x18blkmm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 800

ITEM.price = 23040

ITEM.weight = 0.010
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный калибр", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end