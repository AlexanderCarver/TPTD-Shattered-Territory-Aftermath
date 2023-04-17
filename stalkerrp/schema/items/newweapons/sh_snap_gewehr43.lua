ITEM.name = "Gewehr 43" 
ITEM.description= "Германская самозарядная винтовка Gewehr 43 времён Второй мировой войны под калибр 7.92x57 мм Маузер" 
ITEM.longdesc = "Самозарядная винтовка времён Второй мировой войны, являющаяся модификацией более ранней винтовки Gewehr 41 с изменённой газоотводной системой, схожей с таковой у советской винтовки СВТ-40."
ITEM.model = "models/weapons/w_snip_scout.mdl"
ITEM.class = "arc9_doi_g43"
ITEM.weaponCategory = "primary" 
ITEM.price = 9600
ITEM.width = 4
ITEM.height = 2 

ITEM.bulletweight = 0.013 --Вес пули оставь дефолтный по калибру
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