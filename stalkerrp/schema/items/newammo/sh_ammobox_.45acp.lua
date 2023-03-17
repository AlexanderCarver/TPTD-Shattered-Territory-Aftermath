ITEM.name = "Патроны калибра .45 ACP"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Американский пистолетный унитарный патрон с бесфланцевой гильзой цилиндрической формы, разработанный в 1904 году. Принят на снабжение Армии США в 1911 году вместе с принятием на вооружение пистолета M1911. Был основным армейским пистолетным патроном США обе мировые войны."

ITEM.ammo = ".45acp"
ITEM.model = "models/lostsignalproject/items/ammo/45cal.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 45

ITEM.price = 520

ITEM.weight = 0.015
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end