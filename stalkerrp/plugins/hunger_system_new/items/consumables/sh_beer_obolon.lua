ITEM.name = "Пиво Оболонь, 0,5л"
ITEM.description = "Бутылка пива зеленого цвета, которое расслабляет после тяжелого дня."
ITEM.longdesc = "Пиво Оболонь - это находка для 90-ых. Импортируемое из Украины, зеленая банка подчеркивает классический дизайн пивной продукции. Вкус примерно такой же, как у Балтики, но отдает пшеничным вкусом."
ITEM.model = "models/lostsignalproject/items/consumable/beer.mdl"

ITEM.price = 105
ITEM.width = 1
ITEM.height = 2
ITEM.weight = 0.150
ITEM.flatweight = 0.015

ITEM.thirst = 15
ITEM.quantity = 2
ITEM.alcohol = 5

ITEM.addictionLightAlcohol = true

ITEM.sound = "stalkersound/inv_flask.mp3"

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Алкоголь", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:GetCharacter():SatisfyAddictions("CheapAlcohol")

	ix.chat.Send(item.player, "iteminternal", "делает несколько глотков из маленькой стеклянной бутылки зеленого цвета, употребляя "..item.name..".", false)
end)

ITEM:DecideFunction()