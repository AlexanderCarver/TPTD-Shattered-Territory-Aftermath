ITEM.name = "Цинк с патронами 7.62x39 мм (HP)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 7.62x39 мм с экспансивной пулей (Hollow Point) массой 17 грамм со свинцовым сердечником. с биметаллической полуоболочкой. в стальной гильзе. Предназначен для охоты. обороны дома и стрельбы. Пуля в этом патроне обладает отличным расширением и передачей энергии при ударе. что придает ей исключительное останавливающее и травмирующее воздействие на цель после попадания. что делает патрон хорошим выбором для охоты."

ITEM.ammo = "7.62x39hpmm"
ITEM.model = "models/lostsignalproject/items/misc/small_wood_box.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 400

ITEM.price = 17640

ITEM.weight = 0.017
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Штурмовой патрон калибра 7.62x39 мм", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end