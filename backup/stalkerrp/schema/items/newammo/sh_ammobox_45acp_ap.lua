ITEM.name = "Патроны .45 ACP (AP)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Патрон .45 ACP (11.43x23мм) AP с двухкомпонентной бронебойной пулей с латунным поддоном и 7мм наконечником из закаленной стали. Несмотря на то, что пуля имеет среднюю начальную скорость относительно других патронов того же калибра, она обладает отличной убойностью и пробивной способностью против брони базового и среднего уровня защиты."

ITEM.ammo = "45apacp"
ITEM.model = "models/lostsignalproject/items/ammo/45cal.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 40

ITEM.price = 1800

ITEM.weight = 0.015
ITEM.flatweight = 0.05

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон калибра .45 ACP", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит пистолетную гильзу", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end