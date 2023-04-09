ITEM.name = "Glock 20"
ITEM.description= "Самозарядный пистолет фирмы Glock калибра 10 мм."
ITEM.longdesc = " Glock 20 - это пистолет большого калибра с пластиковой рамкой. Он разработан для использования как вооружение сил правопорядка, так и для гражданской самообороны. Glock 20 имеет простой и надежный дизайн, круглую рукоятку и нарезку на стволе. Он может быть использован для охоты на крупную дичь или для защиты в условиях экстремальной опасности."
ITEM.model = "models/weapons/w_pist_glock18.mdl"
ITEM.class = "arc9_fas_g20"
ITEM.weaponCategory = "secondary" --primary - основное; secondary - вторичное; melee - оружие ближнего боя;
ITEM.price = 2800
ITEM.width = 2 --По кубикам распределение в инвентаре (измеряй кубиками модельку внутри гарриса); ЭТО ДЛИНА
ITEM.height = 1 --По кубикам распределение в инвентаре (измеряй кубиками модельку внутри гарриса); ЭТО ВЫСОТА

ITEM.bulletweight = 0.012 --Вес пули оставь дефолтный по калибру
ITEM.unloadedweight = 0.7 --Вес оружия

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