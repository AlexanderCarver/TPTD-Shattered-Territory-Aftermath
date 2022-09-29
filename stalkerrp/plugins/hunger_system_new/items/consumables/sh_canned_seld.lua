ITEM.name = "Сельдь, 240 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Мясо вида промысловых рыб, обитающих в северной части Атлантического и Тихого океанов, подвергнутое консервации в собственном соку. Обычно употребляется с основными блюдами."
ITEM.model = "models/illusion/eftcontainers/herring.mdl"

ITEM.price = 308
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.120
ITEM.flatweight = 0.028

ITEM.hunger = 20
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
	ix.chat.Send(item.player, "iteminternal", "достаёт консервированную банку и употребляет находяющуюся внутри сельдь.", false)
end)

ITEM:DecideFunction()