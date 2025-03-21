ITEM.name = "M249"
ITEM.description= "Легкий пулемет M249 калибра 5.56x45 мм, который используется в армиях многих стран мира."
ITEM.longdesc = "M249 был разработан в США в 1970-х годах и впервые появился на вооружении американской армии в 1984 году. Этот пулемет отличается компактным размером, низким весом и высокой скорострельностью. Он способен производить до 1 000 выстрелов в минуту и использует калибр 5.56x45 мм. "
ITEM.model = "models/weapons/w_mach_m249para.mdl"
ITEM.class = "arc9_fas_m249"
ITEM.weaponCategory = "primary" --primary - основное; secondary - вторичное; melee - оружие ближнего боя;
ITEM.price = 27000
ITEM.width = 5 --По кубикам распределение в инвентаре (измеряй кубиками модельку внутри гарриса); ЭТО ДЛИНА
ITEM.height = 2 --По кубикам распределение в инвентаре (измеряй кубиками модельку внутри гарриса); ЭТО ВЫСОТА

ITEM.bulletweight = 0.013 --Вес пули оставь дефолтный по калибру
ITEM.unloadedweight = 7.5 --Вес оружия

ITEM.repair_PartsComplexity = 2 --ХЗ, чё это. Оставь.
ITEM.repair_PartsRarity = 2 --ХЗ, чё это. Оставь.

function ITEM:GetWeight()
  return self.unloadedweight + (self.bulletweight * self:GetData("ammo", 0))
end

ITEM.iconCam = {
	pos = Vector(10, -205, 2),
	ang = Angle(0, 90, 4.5),
	fov = 12.5,
}

ITEM.pacData = {
[1] = {
	["children"] = {
		[1] = {
			["children"] = {
				[1] = {
					["children"] = {
					},
					["self"] = {
						["Angles"] = Angle(180, 0, 0),
						["Model"] = "models/weapons/w_ops_ak74.mdl",
						["ClassName"] = "model",
						["Position"] =	Vector(11.522, -4.244, -1.16),
						["EditorExpand"] = true,
						["UniqueID"] = "3543431291",
						["Bone"] = "spine 2",
						["Name"] = "ak74",
					},
				},
			},
			["self"] = {
				["AffectChildrenOnly"] = true,
				["ClassName"] = "event",
				["UniqueID"] = "1053212402",
				["Event"] = "weapon_class",
				["EditorExpand"] = true,
				["Name"] = "weapon class find simple\"@@1\"",
				["Arguments"] = "cw_ak74@@0",
			},
		},
	},
	["self"] = {
		["ClassName"] = "group",
		["UniqueID"] = "1512342183",
		["EditorExpand"] = true,
	},
},
}