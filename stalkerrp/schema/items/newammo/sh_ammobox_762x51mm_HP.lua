ITEM.name = "Патроны калибра ТПЗ SP 7.62x51 мм NATO"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 7.62x51мм с пулей массой 11 грамм с мягким наконечником (Soft-Point) со свинцовым сердечником, в биметаллической полуоболочке, в стальной гильзе. Произведен на Тульском Патронном Заводе. Патрон универсален и предназначен как для охоты и самообороны, так и для развлекательной и спортивной стрельбы. Также способен пробивать броню базового уровня защиты. Однако, из-за своей конструкции, пуля имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "7.62x51hpmm"
ITEM.model = "models/lostsignalproject/items/ammo/762x51.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 20

ITEM.price = 1080

ITEM.weight = 0.011
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Винтовочный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end