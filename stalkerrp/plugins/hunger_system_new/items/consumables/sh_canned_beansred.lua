ITEM.name = "Красная фасоль в томатном соусе, 160 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Бобы красной фасоли, которые были подвергнуты процессу консерации вместе с томатным соусом. Достаточно соленые и отлично утоляют голод."
ITEM.model = "models/lostsignalproject/items/consumable/chili.mdl"

ITEM.price = 145
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.160
ITEM.flatweight = 0.038

ITEM.hunger = 25
ITEM.thirst = -10
ITEM.quantity = 1
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "аккуратно вскрывает консервированную банку и употребляет находящийся внутри продукт. Фасоль в томатном соусе достаточно вкусная, чтобы утолить аппетит, однако ее лучше всего употреблять вместе с макаронами.", false)
end)

ITEM:DecideFunction()