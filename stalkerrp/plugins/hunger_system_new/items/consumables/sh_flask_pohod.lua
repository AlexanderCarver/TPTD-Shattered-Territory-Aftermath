ITEM.name = "Походная фляга, 0,5 л"
ITEM.description = "Переносная ёмкость для хранения воды."
ITEM.longdesc = "Небольшая туристическая фляга родом из ближайшего туристического магазина. В неё умещается пол литра воды."
ITEM.model = "models/lostsignalproject/items/consumable/flask.mdl"

ITEM.price = 620
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.090
ITEM.flatweight = 0.420

ITEM.isDrink = true

--ITEM.hunger = 15
ITEM.thirst = 12
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Контейнер для воды", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает походную флягу тёмно-зелёного цвета и делает несколько глотков.", false)
end)

ITEM:DecideFunction()