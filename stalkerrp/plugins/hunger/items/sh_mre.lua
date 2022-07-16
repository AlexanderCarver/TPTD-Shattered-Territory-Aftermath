ITEM.name = "Тестовая упаковка"
ITEM.description = ""
ITEM.model = "models/weapons/w_packatm.mdl"
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 1.5 --1,5 килограмм
ITEM.iconCam = {
	pos = Vector(-4, 5.9, 200),
	ang = Angle(90, 0, 0),
	fov = 5.5
}
ITEM.functions.Open = {
	name = "Распаковать",
	icon = "icon16/briefcase.png",
	sound = "",
	OnRun = function(item)
		local position = item.player:GetItemDropPos()
		local client = item.player

		timer.Simple(0, function()
			for k, v in pairs(item.items) do
				if (IsValid(client) and client:GetCharacter() and !client:GetCharacter():GetInventory():Add(v)) then
					ix.item.Spawn(v, position)
				end
			end
		end)

		client:GetCharacter():GiveMoney(item.money[1])
	end
}
ITEM.items = {"water_special", "elitedobavki"}
ITEM.money = {0}