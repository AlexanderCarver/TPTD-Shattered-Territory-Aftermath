ITEM.name = "Prospekt Militia Passport"
ITEM.model = "models/kek1ch/book1.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A book bound by staples with a red cover. The cover reads; 'Prospekt Militia Official Service Passport'."
ITEM.price = 0

ITEM.functions.use = {
	name = "Write",
	icon = "icon16/pencil.png",
	OnRun = function(item)
		local client = item.player
		local id = item:GetID()
		if (id) then
			netstream.Start(client, "receivePaper", id, item:GetData("PaperData") or "")
		end
		return false
	end
}
