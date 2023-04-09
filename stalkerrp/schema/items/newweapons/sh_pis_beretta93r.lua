ITEM.name = "Beretta 93R"
ITEM.description= "Автоматический пистолет Beretta 93R калибра 9x19 мм с возможностью стрельбы очередью."
ITEM.longdesc = "Beretta 93R - это итальянский автоматический пистолет, который имеет возможность стрельбы очередью. Он был разработан для использования силами правопорядка и спецназом, а также для гражданской самообороны. Beretta 93R имеет короткую ствольную коробку, удобную эргономичную рукоятку и стандартную планку для крепления дополнительного оборудования."
ITEM.model = "models/weapons/w_pist_elite_single.mdl"
ITEM.class = "arc9_fas_m93r"
ITEM.weaponCategory = "secondary" --primary - основное; secondary - вторичное; melee - оружие ближнего боя;
ITEM.price = 2500
ITEM.width = 2 --По кубикам распределение в инвентаре (измеряй кубиками модельку внутри гарриса); ЭТО ДЛИНА
ITEM.height = 1 --По кубикам распределение в инвентаре (измеряй кубиками модельку внутри гарриса); ЭТО ВЫСОТА

ITEM.bulletweight = 0.008 --Вес пули оставь дефолтный по калибру
ITEM.unloadedweight = 1.5 --Вес оружия

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