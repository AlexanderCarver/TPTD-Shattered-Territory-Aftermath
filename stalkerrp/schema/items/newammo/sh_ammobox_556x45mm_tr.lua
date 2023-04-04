ITEM.name = "Патроны 5.56x45 мм (M856)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Трассирующий патрон M856 используется в оружии M16A2 /3 / 4, серии M4 и M249 (среди прочего оружия НАТО калибра 5,56 мм). Этот патрон рассчитан на дальность стрельбы до 900 метров и имеет красный наконечник (оранжевый при соотношении 4 к 1 с M249)."

ITEM.ammo = "5.56x45mm"
ITEM.model = "models/lostsignalproject/items/ammo/556x45.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 1440

ITEM.weight = 0.013
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 5.56x45 мм NATO", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end