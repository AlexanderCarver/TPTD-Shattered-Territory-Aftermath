ITEM.name = "Цинк с патронами 7.62x39 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Промежуточный патрон с невыступающей закраиной конструкции. Разработка была завершена к 1949 году, причём, несмотря на название, окончательный образец патрона сильно отличался от первоначального образца 1943 года, имевшего гильзу длиной 41 мм. В некоторых случаях патрон 7,62x39 мм упоминается как 7,62x39 мм M43."

ITEM.ammo = "7.62x39trrmm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 600

ITEM.price = 25920

ITEM.weight = 0.018
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 7.62x39 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end