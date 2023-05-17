ITEM.name = "Бутилированный чай, 0,5 л"
ITEM.description = "Маленькая пластиковая бутылка с жидкостью."
ITEM.longdesc = "Напиток, получаемый завариванием листа чайного куста, который предварительно подготавливается специальным образом. Этот сделали специально достаточно крепким, чтобы он был терпким на вкус, как наша суровая жизнь. Отлично утоляет жажду."
ITEM.model = "models/lostsignalproject/items/consumable/tea.mdl"

ITEM.price = 165
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.120
ITEM.flatweight = 0.030

ITEM.isDrink = true

--ITEM.hunger = 15
ITEM.thirst = 14
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Восстанавливает жажду", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Немного успокаивает нервы", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает бежевую бутылку с чаем и делает несколько глотков.", false)
end)

ITEM:DecideFunction()