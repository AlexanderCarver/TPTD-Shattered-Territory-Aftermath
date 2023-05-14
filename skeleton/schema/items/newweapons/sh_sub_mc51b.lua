ITEM.name = "MC51B Vollmer"
ITEM.description= "Легкий пулемет MC51B Vollmer калибра 7.62x51 мм, разработанный в Германии и используемый как для боевых действий, так и для стрельбы на тренировочных площадках."
ITEM.longdesc = "MC51B Vollmer - это многоцелевое оружие, которое может быть использовано как для уничтожения пехоты, так и для подавления огня противника. Оно использует 7.62x51 мм патроны и имеет большой боевой запас. Пулемет легок и маневрен, что позволяет экипажу быстро перестраиваться и адаптироваться к изменяющейся обстановке на поле боя."
ITEM.model = "models/weapons/w_smg_mp5.mdl"
ITEM.class = "arc9_fas_mc51"
ITEM.weaponCategory = "primary" --primary - основное; secondary - вторичное; melee - оружие ближнего боя;
ITEM.price = 13000
ITEM.width = 3 --По кубикам распределение в инвентаре (измеряй кубиками модельку внутри гарриса); ЭТО ДЛИНА
ITEM.height = 2 --По кубикам распределение в инвентаре (измеряй кубиками модельку внутри гарриса); ЭТО ВЫСОТА

ITEM.bulletweight = 0.021 --Вес пули оставь дефолтный по калибру
ITEM.unloadedweight = 5 --Вес оружия

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