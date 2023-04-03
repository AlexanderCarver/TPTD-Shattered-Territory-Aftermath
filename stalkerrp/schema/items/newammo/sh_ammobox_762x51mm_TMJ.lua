ITEM.name = "Патроны M61 калибра 7.62x51 мм NATO"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 7.62x51мм НАТО M61 с бронебойной пулей массой 11 грамм с сердечником из закаленной стали и плакированной биметаллической оболочкой, в латунной гильзе. Патрон был разработан в 1950-х годах на основе патрона .30-06 Springfield AP M2 для обеспечения вооруженных сил США бронебойной пулей для автоматического оружия калибра 7.62x51мм НАТО, способной пробивать самую современную специализированную броню 5-6 класса защиты, вдобавок обеспечивая значительное останавливающее воздействие. Однако, из-за своей конструкции, пуля имеет высокую вероятность отскока от различных поверхностей."

ITEM.ammo = "7.62x51tmjmm"
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