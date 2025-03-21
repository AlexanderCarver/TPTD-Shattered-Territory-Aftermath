ITEM.name = "Trenchcoat"
ITEM.model ="models/kek1ch/novice_outfit.mdl"
ITEM.newModel ="models/stalkerisaac/playermodel/male_01_anorak.mdl"
ITEM.description= "A trenchcoat."
ITEM.longdesc = "A regular leather trench coat. Has no special purpose other than to keep the wearer warm at night or protect from a blind dog bite. Although the trench coat is not particularly comfortable, it is often used by Bandits in the Zone - either because it allows them to hide in the dark or simply due to its 'cool' appearance."
ITEM.width = 2
ITEM.height = 3
ITEM.price = 500
ITEM.busflag = {"suits"}
ITEM.br = 0.05
ITEM.fbr = 3
ITEM.ar = 0.05
ITEM.far = 1
ITEM.repairCost = ITEM.price/100*1
ITEM.ballisticlevels = {"0","0","0","0","0"}
ITEM.img = ix.util.GetMaterial("vgui/hud/trenchcoat.png")

ITEM.weight = 1.800
ITEM.miscslots = 1

ITEM.bodyGroups = {
	["vest"] = 0,
	["torso"] = 2,
}

ITEM.functions.Lift = {
	name = "Lift Hood",
	tip = "equipTip",
	icon = "icon16/stalker/customize.png",
	OnRun = function(item)
	if item.player:GetBodygroup(1) != 3 then
		item.player:SetBodygroup(1, 3)
	else
		item.player:SetBodygroup(1, 2)
	end
		return false
	end,
	OnCanRun = function(item)
		return !IsValid(item.entity) and IsValid(item.player) and item:GetData("equip") == true
	end
}

ITEM.skincustom[1] = {
	name = "Skin 0",
	skingroup = 0,
}
ITEM.skincustom[2] = {
	name = "Skin 1",
	skingroup = 1,
}
ITEM.skincustom[3] = {
	name = "Skin 2",
	skingroup = 2,
}
ITEM.skincustom[4] = {
	name = "Skin 3",
	skingroup = 3,
}
ITEM.skincustom[5] = {
	name = "Skin 4",
	skingroup = 4,
}
ITEM.skincustom[6] = {
	name = "Skin 5",
	skingroup = 5,
}
ITEM.skincustom[7] = {
	name = "Skin 6",
	skingroup = 6,
}
ITEM.skincustom[8] = {
	name = "Skin 7",
	skingroup = 7,
}
ITEM.skincustom[9] = {
	name = "Skin 8",
	skingroup = 8,
}
ITEM.skincustom[10] = {
	name = "Skin 9",
	skingroup = 9,
}
ITEM.skincustom[11] = {
	name = "Skin 10",
	skingroup = 10,
}
ITEM.skincustom[12] = {
	name = "Skin 11",
	skingroup = 11,
}
ITEM.skincustom[13] = {
	name = "Skin 12",
	skingroup = 12,
}
ITEM.skincustom[14] = {
	name = "Skin 13",
	skingroup = 13,
}
ITEM.skincustom[15] = {
	name = "Skin 14",
	skingroup = 14,
}
ITEM.skincustom[16] = {
	name = "Skin 15",
	skingroup = 15,
}
ITEM.skincustom[17] = {
	name = "Skin 16",
	skingroup = 16,
}
ITEM.skincustom[18] = {
	name = "Skin 17",
	skingroup = 17,
}
ITEM.skincustom[19] = {
	name = "Skin 18",
	skingroup = 18,
}
ITEM.skincustom[20] = {
	name = "Skin 19",
	skingroup = 19,
}
ITEM.skincustom[21] = {
	name = "Skin 20",
	skingroup = 20,
}
ITEM.skincustom[22] = {
	name = "Skin 21",
	skingroup = 21,
}
ITEM.skincustom[23] = {
	name = "Skin 22",
	skingroup = 22,
}
ITEM.skincustom[24] = {
	name = "Skin 23",
	skingroup = 23,
}
ITEM.skincustom[25] = {
	name = "Skin 24",
	skingroup = 24,
}
ITEM.skincustom[26] = {
	name = "Skin 25",
	skingroup = 25,
}
ITEM.skincustom[27] = {
	name = "Skin 26",
	skingroup = 26,
}
ITEM.skincustom[28] = {
	name = "Skin 27",
	skingroup = 27,
}
ITEM.skincustom[29] = {
	name = "Skin 28",
	skingroup = 28,
}
ITEM.skincustom[30] = {
	name = "Skin 29",
	skingroup = 29,
}
ITEM.skincustom[31] = {
	name = "Skin 30",
	skingroup = 30,
}
ITEM.skincustom[32] = {
	name = "Skin 31",
	skingroup = 31,
}
ITEM.skincustom[33] = {
	name = "Skin 32",
	skingroup = 32,
}