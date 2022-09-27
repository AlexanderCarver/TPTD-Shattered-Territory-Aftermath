ITEM.name = "Вода, 0,5л"
ITEM.description = "Бутилированная вода, отлично утоляющая жажду."
ITEM.longdesc = "Запакованая бутылка чистой воды марки 'Шаянская'. Отличный выбор, чтобы утолить жажду или приготовить что-либо..."
ITEM.model = "models/lostsignalproject/items/consumable/mineral_water.mdl"

ITEM.price = 70
ITEM.width = 1
ITEM.height = 2
ITEM.weight = 0.200
ITEM.flatweight = 0.030

ITEM.thirst = 20
ITEM.quantity = 2

ITEM.sound = "stalkersound/inv_drink_flask.mp3"

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает светло-голубую бутылку и делает несколько глотков, убирая ее обратно. Это точно "..item.name..".", false)
end)

ITEM:DecideFunction()