ITEM.name = "Патроны FMJ"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон .45 ACP (11.43x23мм) Match FMJ (Cartridge, Caliber .45, Ball, Match, M1911) с пулей массой 21 грамм со свинцовым сердечником, в медной оболочке, в латунной гильзе. Патрон изготовлен с повышенной точностью, чтобы удовлетворить потребности современного оружия .45 ACP, используемого вооруженными силами США. Обладает значительной убойностью и пробивной способностью против брони базового и среднего уровня защиты."

ITEM.ammo = "45hpacp"
ITEM.model = "models/lostsignalproject/items/ammo/45cal.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 1260

ITEM.weight = 0.021
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон калибра .45 ACP", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end