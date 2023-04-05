ITEM.name = "Цинк c патронами 9x17 мм (10ТК)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Данный патрон имеет калибр 10ТК т.е. его диаметр 10мм что является увеличенным диаметром патронника у СХП, длина патрона 21мм, вальцовка звездой - при выстреле немного раскрывается. (состоит из - гильза, капсуль и пороховой заряд)."

ITEM.ammo = "9x18blkmm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 800

ITEM.price = 11520

ITEM.weight = 0.005
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон калибра 9x18 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Пистолетная гильза", Color(64, 224, 208))

end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end