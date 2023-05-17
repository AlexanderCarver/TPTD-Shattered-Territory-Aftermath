ITEM.name = "Шпроты, 240 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Консервы из копчёной рыбы, которые приготавливаются из свежей или мороженой рыбы разных видов длиной 7—12 см. Обычно употребляются вместе с гарниром."
ITEM.model = "models/banka3.mdl"

ITEM.price = 312
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.120
ITEM.flatweight = 0.026

ITEM.hunger = 22
ITEM.thirst = -16
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Хорошо утоляет голод", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Вызывает жажду", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достаёт консервированную банку и употребляет находяющуюся внутри рыбу.", false)
end)

ITEM:DecideFunction()