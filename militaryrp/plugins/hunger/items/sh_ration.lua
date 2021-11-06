ITEM.name = "Рацион"
ITEM.description = "Небольшая упаковка с едой."
ITEM.model = "models/weapons/w_packatc.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.iconCam = {
	pos = Vector(-4, 5.9, 200),
	ang = Angle(90, 0, 0),
	fov = 5.5
}
ITEM.functions.Open = {
	icon = "icon16/briefcase.png",
	sound = "minerva/ration_open.wav",
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
ITEM.items = {"water_ration", "dobavki_ration"}
ITEM.money = {0}