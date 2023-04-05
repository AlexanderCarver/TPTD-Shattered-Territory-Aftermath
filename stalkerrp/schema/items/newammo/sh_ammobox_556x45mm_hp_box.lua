ITEM.name = "Цинк с патронами 5.56x45 мм (HP)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон .223 Remington (5.56x45 мм) с экспансивной пулей массой 13 грамм со свинцовым сердечником. с биметаллической оболочкой. в стальной гильзе. Предназначен для охоты. домашней обороны и стрельбы по мишеням. Несмотря на то. что пуля не обладает полной энергией промежуточного патрона. она имеет значительную поражающую способность. а также оказывает существенное травмирующее воздействие на цель после удара. Не обладает пробивной способностью даже против брони базового уровня защиты."

ITEM.ammo = "5.56x45hpmm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 600

ITEM.price = 25920

ITEM.weight = 0.013
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 5.56x45 мм NATO", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end