ITEM.name = "MG 42"
ITEM.description= "Немецкий пулемет MG 42 Второй мировой войны, отличался высокой скорострельностью и надежностью. Использовался на всех фронтах."
ITEM.longdesc = "MG42 был разработан в 1942 году и сразу же стал основным пулеметом немецкой армии. Он отличался высокой скорострельностью - до 1 200 выстрелов в минуту, а также высокой надежностью и точностью стрельбы. В сравнении с предшественником MG34, MG42 был легче и дешевле в производстве, что позволило более широко использовать его на поле боя. MG42 использовался в различных ролях - как оружие поддержки на передовой, так и в качестве зенитного орудия."
ITEM.model = "models/weapons/w_mach_m249para.mdl"
ITEM.class = "arc9_doi_mg34"
ITEM.weaponCategory = "primary" --primary - основное; secondary - вторичное; melee - оружие ближнего боя;
ITEM.price = 35000
ITEM.width = 6 --По кубикам распределение в инвентаре (измеряй кубиками модельку внутри гарриса); ЭТО ДЛИНА
ITEM.height = 2 --По кубикам распределение в инвентаре (измеряй кубиками модельку внутри гарриса); ЭТО ВЫСОТА

ITEM.bulletweight = 0.013 --Вес пули оставь дефолтный по калибру
ITEM.unloadedweight = 11.6 --Вес оружия

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