ITEM.name = "Руководство техника"
ITEM.desc = "Книга, которая может познакомить кого-то с искусством быть техническим специалистом."
ITEM.model = "models/lostsignalproject/items/misc/book2.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = "5000"
ITEM.flag = "A"


ITEM.functions.read = {
	name = "читать",
	icon = "icon16/stalker/read.png",
	OnCanRun = function(item)				
		return (!IsValid(item.entity))
	end,
	OnRun = function(item, data)
		local client = item.player
		local char = client:GetCharacter()
		local inv = char:GetInventory()

		
		client:GetCharacter():SetFlags("T")
		client:Notify("Technician flag added.")
		item.player:EmitSound("stalkersound/money.mp3")
		
		return true
	end,
}