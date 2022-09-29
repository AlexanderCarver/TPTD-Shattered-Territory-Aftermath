ITEM.name = "Сгущенное молоко, 380 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Пищевой продукт, получаемый частичным удалением воды из коровьего молока и другой дополнительной обработкой. В пост-советском пространстве в основном производится сгущённое молоко с сахаром, в просторечии называемое сгущёнкой. От одного взгляда на банку у Вас уже приятно ломит скулы и сосет под ложечкой."
ITEM.model = "models/banka.mdl"
ITEM.skin = 1

ITEM.price = 356
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.190
ITEM.flatweight = 0.032

ITEM.hunger = 24
ITEM.thirst = -16
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Сладости", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Вызывает жажду", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достаёт консервированную банку и употребляет находяющееся внутри сладкое сгущенное молоко.", false)
end)

ITEM:DecideFunction()