ITEM.name = "Вода (грязная), 0,5л"
ITEM.description = "Бутилированная вода, отлично утоляющая жажду."
ITEM.longdesc = "Вода неизвестного происхождения, залитая в первую подвернушуюся бутылку. Не очень правильный выбор, если у Вас есть другие источники воды..."
ITEM.model = "models/lostsignalproject/items/consumable/tea.mdl"

ITEM.price = 50
ITEM.width = 1
ITEM.height = 2
ITEM.weight = 0.200
ITEM.flatweight = 0.030

ITEM.thirst = 18
ITEM.quantity = 2

ITEM.sound = "stalkersound/inv_drink_flask.mp3"

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает бежевую бутылку и делает несколько глотков, заметно морщась в приступе брезгливости, убирая ее обратно. Это точно "..item.name..".", false)
end)

ITEM:DecideFunction()