ITEM.name = "Зеленый горошек, 338 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Зелёный горошек, сохранённый с помощью способа консервации, сертифицированного ГОСТ'ом. Горох заготавливают с целью длительного хранения, пытаясь максимально сохранить витамины и питательные вещества. Сами консервы вырабатывают из молодых зёрен, когда они ещё нежны и богаты сахаром и витаминами. Очень вкусно."
ITEM.model = "models/banka.mdl"
ITEM.skin = 4

ITEM.price = 275
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.160
ITEM.flatweight = 0.038

ITEM.hunger = 14
ITEM.thirst = 5
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Неплохо утоляет голод", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достаёт консервированную банку и употребляет находяющийся внутри зеленый горошек.", false)
end)

ITEM:DecideFunction()