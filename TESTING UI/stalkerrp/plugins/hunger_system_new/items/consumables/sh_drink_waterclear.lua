ITEM.name = "Вода 'Шаянская', 0,5 л"
ITEM.description = "Бутилированная вода, отлично утоляющая жажду."
ITEM.longdesc = "Запакованая бутылка чистой воды марки 'Шаянская'. Отличный выбор, чтобы утолить жажду или приготовить что-либо..."
ITEM.model = "models/lostsignalproject/items/consumable/mineral_water.mdl"

ITEM.price = 190
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.120
ITEM.flatweight = 0.028

ITEM.isDrink = true

--ITEM.hunger = 15
ITEM.thirst = 16
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Чистая вода", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает светло-голубую бутылку и делает несколько глотков.", false)
end)

ITEM:DecideFunction()