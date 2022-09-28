ITEM.name = "Пиво Балтика №3, 0,5л"
ITEM.description = "Алюминевая банка пива, которая расслабляет после тяжелого дня."
ITEM.longdesc = "Пиво Балтика - это настоящая классика 90-ых. Синяя банка - это старый, приятный аромат с терпким пшеничный вкусом и нотками солода, что всегда согреет душу."
ITEM.model = "models/banka2.mdl"

ITEM.price = 85
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.160
ITEM.flatweight = 0.038


ITEM.addictionLightAlcohol = true

--ITEM.hunger = 15
ITEM.thirst = 15
ITEM.quantity = 2
ITEM.alcohol = 5

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Содержит алкоголь", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает синюю банку пива 'Балтика' и делает несколько глотков, после чего убирает ее обратно.", false)

	item.player:GetCharacter():SatisfyAddictions("CheapAlcohol")
end)

ITEM:DecideFunction()