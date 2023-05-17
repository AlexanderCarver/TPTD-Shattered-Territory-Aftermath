ITEM.name = "Томаты, 160 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Консервированные помидоры, в состав которых обязательно входит уксусная кислота. Очень популярны на территории пост-советского пространства еще со времен СССР. Вам не терпится попробовать их."
ITEM.model = "models/lostsignalproject/items/consumable/canned_meat.mdl"

ITEM.price = 125
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.160
ITEM.flatweight = 0.024

ITEM.hunger = 14
ITEM.thirst = -12
ITEM.quantity = 1
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Неплохо утоляет голод", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Вызывает жажду", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достаёт консервированную банку и употребляет находяющиеся внутри соленые томаты.", false)
end)

ITEM:DecideFunction()