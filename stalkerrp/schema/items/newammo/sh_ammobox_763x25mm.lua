ITEM.name = "Патроны калибра 7.63x25 мм"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Пистолетный унитарный патрон с бесфланцевой гильзой бутылочной формы с небольшой конусностью. Был разработан для пистолета Mauser C96 и запущен в производство в 1896 году. Основой для него стал патрон 7,65×25 мм Борхардт образца 1893 года. В свою очередь, немецкий патрон калибра 7,63×25 мм стал прототипом патрона 7,62×25 мм ТТ, имевшего практически одинаковый калибр с предшественником, чем пользовались немцы, заряжая трофейное советское оружие немецкими патронами 7,63×25 мм."

ITEM.ammo = "7.63x25mm"
ITEM.model = "models/lostsignalproject/items/misc/damaged_ammo.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 30

ITEM.price = 1320

ITEM.weight = 0.011
ITEM.flatweight = 0.05  

function ITEM:PopulateTooltipIndividual(tooltip)
  ix.util.PropertyDesc(tooltip, "Пистолетный патрон", Color(64, 224, 208))
  ix.util.PropertyDesc(tooltip, "Содержит порох", Color(64, 224, 208))
end

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end