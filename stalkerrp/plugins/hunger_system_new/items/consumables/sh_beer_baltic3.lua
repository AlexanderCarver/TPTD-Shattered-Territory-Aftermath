ITEM.name = "Пиво Балтика №3, 0,5л"
ITEM.description = "Маленькая алюминевая баночка пива, которая расслабляет после тяжелого дня."
ITEM.longdesc = "Пиво Балтика - это настоящая классика 90-ых. Синяя банка - это настощая классика с терпким пшеничный вкусом и ароматом солода, что всегда согреет душу."
ITEM.model = "models/banka2.mdl"

ITEM.price = 85
ITEM.width = 1
ITEM.height = 1
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

	ix.chat.Send(item.player, "iteminternal", "делает несколько глотков из маленькой алюминевой баночки синего цвета. Вероятно, это "..item.name..".", false)
end)

ITEM:DecideFunction()