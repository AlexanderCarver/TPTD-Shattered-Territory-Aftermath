ITEM.name = "Алюминиевая фляга, 1,5 л"
ITEM.description = "Переносная ёмкость для хранения воды."
ITEM.longdesc = "Довольно увесистая металлическая фляга. Холодная на ощупь. Может держать в себе полтора литра воды. Отлично подойдёт для походов вглубь Территории."
ITEM.model = "models/lostsignalproject/items/consumable/flask3.mdl"

ITEM.price = 860
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.090
ITEM.flatweight = 0.480

--ITEM.hunger = 15
ITEM.thirst = 12
ITEM.quantity = 6
--ITEM.alcohol = 10
ITEM.foodtype = "drink"
ITEM.canGarbage = true;
ITEM.refillable = true;

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Контейнер для воды", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает алюминиевую флягу серебристого цвета и делает несколько глотков.", false)
end)

ITEM:DecideFunction()