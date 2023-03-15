ITEM.name = "Коробка патронов"
ITEM.description = "Патроны калибра .40 Smith & Wesson."
ITEM.quantdesc =  "Количество паронов: %s штук."
ITEM.longdesc = "Распространённый пистолетный патрон американского происхождения. Разработка патрона была начата известной американской оружейной фирмой Smith & Wesson в 1986 году по заказу ФБР. Непосредственным поводом к началу работы послужил инцидент, когда в перестрелке два сотрудника ФБР погибли и пять других были ранены из-за недостаточной мощности их штатных пистолетов и револьверов под 9-мм патрон."

ITEM.ammo = ".40sw"
ITEM.model = "models/lostsignalproject/items/ammo/357.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 450

ITEM.weight = 0.011
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end