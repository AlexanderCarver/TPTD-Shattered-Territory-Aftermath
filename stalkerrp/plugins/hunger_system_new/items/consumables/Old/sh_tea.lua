ITEM.name = "Чай, 0,5л"
ITEM.description = "Маленькая пластиковая бутылка с тёмной жидкостью."
ITEM.longdesc = "Напиток, получаемый завариванием листа чайного куста, который предварительно подготавливается специальным образом. Этот сделали специально достаточно крепким, чтобы он был терпким на вкус, как наша суровая жизнь. Отлично утоляет жажду."
ITEM.model = "models/lostsignalproject/items/consumable/tea.mdl"

ITEM.price = 60
ITEM.width = 1
ITEM.height = 2
ITEM.weight = 0.080
ITEM.flatweight = 0.030

ITEM.thirst = 15
ITEM.quantity = 2

ITEM.sound = "stalkersound/inv_flask.mp3"

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Стимулирующее", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
--	item.player:GetCharacter():SatisfyAddictions("CheapAlcohol")

	ix.chat.Send(item.player, "iteminternal", "берет маленькую бежевую бутылку и выпивает жидкость из нее. Это точно "..item.name..".", false)
end)

ITEM:DecideFunction()