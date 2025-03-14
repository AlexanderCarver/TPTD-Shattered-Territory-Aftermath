ITEM.name = "Пиво Оболонь, 0,5л"
ITEM.description = "Бутылка пива, которое расслабляет после тяжелого дня."
ITEM.longdesc = "Пиво Оболонь - это находка для 90-ых. Импортируемое из Украины, зеленая банка подчеркивает классический дизайн пивной продукции. Вкус примерно такой же, как у Балтики, но отдает пшеничным вкусом. Безалкогольное."
ITEM.model = "models/lostsignalproject/items/consumable/beer.mdl"

ITEM.price = 288
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.220
ITEM.flatweight = 0.028

ITEM.isDrink = true

--ITEM.hunger = 15
ITEM.thirst = 12
ITEM.quantity = 2
--ITEM.alcohol = 5

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Без алкоголя", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает зеленую бутылку пива 'Оболонь' и делает несколько глотков.", false)
end)

ITEM:DecideFunction()