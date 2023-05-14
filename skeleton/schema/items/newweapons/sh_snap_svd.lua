ITEM.name = "СВД" 
ITEM.description= "Самозарядная снайперская винтовка СВД под калибр 7.62x54 мм" 
ITEM.longdesc = "Снайперская винтовка Драгунова — советская самозарядная снайперская винтовка, разработанная в 1957—1963 годах группой конструкторов под руководством Драгунова и принятая на вооружение Советской Армии."
ITEM.model = "models/weapons/w_snip_scout.mdl"
ITEM.class = "arc9_fas_svd"
ITEM.weaponCategory = "primary" 
ITEM.price = 14500
ITEM.width = 5
ITEM.height = 2 

ITEM.bulletweight = 0.025 --Вес пули оставь дефолтный по калибру
ITEM.unloadedweight = 4.3 --Вес оружия

ITEM.repair_PartsComplexity = 2 
ITEM.repair_PartsRarity = 2 

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