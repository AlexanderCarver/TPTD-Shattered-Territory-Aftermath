ITEM.name = "Гречневая каша, 338 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Каша с кусочками говядины и шпиком, приготавливаемая из гречишного зерна. Крайне популярное блюдо пост-советского пространства, особенно здесь, на Территории. Вам не терпится схватить ложку и опустошить всю банку."
ITEM.model = "models/banka.mdl"
ITEM.skin = 5

ITEM.price = 335
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.160
ITEM.flatweight = 0.038

ITEM.hunger = 25
ITEM.thirst = -5
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Цельное блюдо", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "аккуратно вскрывает консервированную банку и употребляет находящийся внутри продукт. Гречневая каша имеет в себе цельные куски говядины, в меру солёная и имеет приятную консистенцию. Хорошее блюдо.", false)
end)

ITEM:DecideFunction()