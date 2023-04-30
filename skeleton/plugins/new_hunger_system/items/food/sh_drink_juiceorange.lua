ITEM.name = "Апельсиновый сок 'Garden'"
ITEM.description = "Запакованный сок, который является отличным дополнением к еде."
ITEM.longdesc = "Сок в пакете, полученный из мякоти апельсина. Это хороший источник витамина С и калия. Он также является эффективным противораковым, мочегонным, кроветворным средством. Кисло-сладок на вкус."
ITEM.model = "models/lostsignalproject/items/consumable/mineral_water.mdl"

ITEM.price = 310
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.120
ITEM.flatweight = 0.032

ITEM.isDrink = true

--ITEM.hunger = 15
ITEM.thirst = 14
ITEM.quantity = 4
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Стимулирует", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает упаковку апельсинового сока 'Garden' и делает несколько глотков.", false)
end)

ITEM:DecideFunction()