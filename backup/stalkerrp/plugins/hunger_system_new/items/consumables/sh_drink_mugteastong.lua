ITEM.name = "Кружка чифиря, 0,250 л"
ITEM.description = "Маленькая железная кружка, подаваемая в баре."
ITEM.longdesc = "Напиток, получаемый вывариванием высококонцентрированной заварки чая. Пользуется большим спросом среди заключённых пенитенциарных учреждений... Обладает психостимулирующим действием, слегка расслабляет."
ITEM.model = "models/lostsignalproject/items/medical/drink_crow.mdl"

ITEM.price = 105
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.095
ITEM.flatweight = 0.030

ITEM.isDrink = true

--ITEM.hunger = 15
ITEM.thirst = -12
ITEM.quantity = 1
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Стимулирует", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Вызывает жажду", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "берет кружку с чаем и выпивает все за раз.", false)
end)

ITEM:DecideFunction()