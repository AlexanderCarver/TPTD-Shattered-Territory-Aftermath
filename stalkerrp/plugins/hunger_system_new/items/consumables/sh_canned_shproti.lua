ITEM.name = "Шпроты, 240 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Консервы из копчёной рыбы, которые приготавливаются из свежей или мороженой рыбы разных видов длиной 7—12 см. Обычно употребляются вместе с гарниром."
ITEM.model = "models/banka3.mdl"

ITEM.price = 285
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.160
ITEM.flatweight = 0.038

ITEM.hunger = 20
ITEM.thirst = -15
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "аккуратно вскрывает консервированную банку и употребляет находящийся внутри продукт. Рыба солёная и быстро разжевывается, а терпкий сок, в котором она была законсервирована, отлично добавляет вкус. Очень хорошо.", false)
end)

ITEM:DecideFunction()