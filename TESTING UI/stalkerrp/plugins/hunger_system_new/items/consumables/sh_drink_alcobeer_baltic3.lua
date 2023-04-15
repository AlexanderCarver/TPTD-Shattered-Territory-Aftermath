ITEM.name = "Пиво Балтика №3, 0,5л"
ITEM.description = "Алюминевая банка пива, которая расслабляет после тяжелого дня."
ITEM.longdesc = "Пиво Балтика - это настоящая классика 90-ых. Синяя банка - это старый, приятный аромат с терпким пшеничный вкусом и нотками солода, что всегда согреет душу."
ITEM.model = "models/banka2.mdl"

ITEM.price = 285
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.180
ITEM.flatweight = 0.034

ITEM.isDrink = true
ITEM.addictionLightAlcohol = true

--ITEM.hunger = 15
ITEM.thirst = 8
ITEM.quantity = 2
ITEM.alcohol = 4

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Лёгкий алкоголь", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает синюю банку пива 'Балтика' и делает несколько глотков.", false)

	item.player:GetCharacter():SatisfyAddictions("CheapAlcohol")
end)

ITEM:DecideFunction()