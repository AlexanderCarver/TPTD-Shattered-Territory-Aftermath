ITEM.name = "Средний коробок под патроны калибра .45 ACP"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Американский пистолетный унитарный патрон с бесфланцевой гильзой цилиндрической формы, разработанный в 1904 году. Принят на снабжение Армии США в 1911 году вместе с принятием на вооружение пистолета M1911. Был основным армейским пистолетным патроном США обе мировые войны."

ITEM.ammo = ".45acp"
ITEM.model = "models/lostsignalproject/items/ammo/45cal.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 120

ITEM.price = 4104

ITEM.weight = 0.021 
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end