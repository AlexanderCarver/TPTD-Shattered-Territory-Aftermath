ITEM.name = "Энергетик Red Bull, 0,5л"
ITEM.description = "Маленькая баночка энергетика."
ITEM.longdesc = "Red Bull - один из самых узнаваемых энергетиков. Вы не сомневались, что найдете его и здесь, на Территории... Всё-таки, каждому нужна энергия, а он еще и окрыляет."
ITEM.model = "models/illusion/eftcontainers/hotrod.mdl"

ITEM.price = 120
ITEM.width = 1
ITEM.height = 1
ITEM.weight = 0.400
ITEM.flatweight = 0.050

ITEM.thirst = 15
ITEM.quantity = 1

ITEM.sound = "stalkersound/inv_drink_can.mp3"

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_staminarestore", 50, { amount = 1.5 })
	ix.chat.Send(item.player, "iteminternal", "достает маленькую алюминевую баночку с красными линиями, открывает ее и делает несколько глотков залпом, выпивая "..item.name..".", false)
end)

ITEM:DecideFunction()