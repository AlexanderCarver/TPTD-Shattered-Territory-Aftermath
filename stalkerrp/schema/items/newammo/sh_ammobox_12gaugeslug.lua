ITEM.name = "Патроны калибра 12-го калибра (№1)"
ITEM.description = ""
ITEM.quantdesc =  "Количество патронов: %s штук."
ITEM.longdesc = "Одиночный патрон, предназначенный для использования в ружьях либо ином гладкоствольном оружии. Имеют цилиндрическую гильзу из латуни, бумаги или пластмассы, капсюль центрального боя, в качестве поражающего элемента используют специальные пули, дробь или картечь. Как правило, все эти элементы безоболочечные, изготовлены из свинца. Некоторые пули к гладкоствольному оружию способны стабилизироваться в полете. Дробь и картечь имеют низкую эффективную дальность стрельбы — как правило, не более 40-60 метров."

ITEM.ammo = "12gaugeslug"
ITEM.model = "models/lostsignalproject/items/ammo/12x76_jhp.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.ammoAmount = 25

ITEM.price = 650

ITEM.weight = 0.030
ITEM.flatweight = 0.05

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.ammoAmount))
  end