ITEM.name = "Чифирь, 0,5л"
ITEM.description = "Маленькая пластиковая бутылка со слегка желеобразной массой внутри."
ITEM.longdesc = "Напиток, получаемый вывариванием высококонцентрированной заварки чая. Пользуется большим спросом среди заключённых пенитенциарных учреждений... Обладает психостимулирующим действием, слегка расслабляет."
ITEM.model = "models/lostsignalproject/items/consumable/tea.mdl"

ITEM.price = 70
ITEM.width = 1
ITEM.height = 2
ITEM.weight = 0.100
ITEM.flatweight = 0.030

ITEM.thirst = 10
ITEM.quantity = 2
ITEM.alcohol = 5

ITEM.sound = "stalkersound/inv_flask.mp3"

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Стимулирующее", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
--	item.player:GetCharacter():SatisfyAddictions("CheapAlcohol")

	ix.chat.Send(item.player, "iteminternal", "берет маленькую бежевую бутылку и высасывает слегка желеобразную массу, заметно морщась. Вероятно, это "..item.name..".", false)
end)

ITEM:DecideFunction()