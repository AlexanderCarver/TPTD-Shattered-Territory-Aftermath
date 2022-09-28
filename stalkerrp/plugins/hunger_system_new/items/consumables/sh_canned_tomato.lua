ITEM.name = "Томаты, 160 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Консервированные помидоры, в состав которых обязательно входит уксусная кислота. Очень популярны на территории пост-советского пространства еще со времен СССР. Вам не терпится попробовать их."
ITEM.model = "models/lostsignalproject/items/consumable/canned_meat.mdl"

ITEM.price = 145
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.160
ITEM.flatweight = 0.038

ITEM.hunger = 15
ITEM.thirst = -10
ITEM.quantity = 1
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "аккуратно вскрывает консервированную банку и употребляет находящийся внутри продукт. Соленые помидоры имеют в себе очень много соленого сока и очень быстро заставляют рот покрываться слюной. Очень вкусно.", false)
end)

ITEM:DecideFunction()