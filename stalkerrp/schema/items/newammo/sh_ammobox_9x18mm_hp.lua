ITEM.name = "Патроны 9x18 мм (СП8 гж)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон 9х18мм ПМ СП8 гж с хрупкой экспансивной пулей массой 10 грамм с полимерным сердечником в головной части и свинцовым сердечником в хвостовой части, с латунной полуоболочкой, в биметаллической гильзе с уменьшенным зарядом. Разработан в середине 80-х годов в ЦНИИТочМаш для создания патрона с низкой бронепробиваемостью, позволяющего свести к минимуму разрушение и пробивание объектов с низкой структурной прочностью (например во время контртеррористических операций на самолетах) и при этом обеспечивающего значительное останавливающее и травмирующее воздействие при попадании."

ITEM.ammo = "9x18hpmm"
ITEM.model = "models/lostsignalproject/items/ammo/9x18_p.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 40

ITEM.price = 1280

ITEM.weight = 0.011
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Пистолетная гильза", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end