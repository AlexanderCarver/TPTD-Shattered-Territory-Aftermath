ITEM.name = "Водка 'Немирiвська', 1 л"
ITEM.description = "Бутылка водки, которая расслабляет после тяжелого дня."
ITEM.longdesc = "Крепкий бесцветный алкогольный напиток, с характерным жгучим вкусом и ярко выраженным спиртовым запахом. Производится на Украине, завозится на Территрию внутри чёрного рынка. Самое то, чтобы отметить удачный поход."
ITEM.model = "models/lostsignalproject/items/consumable/vodka_nemiroff.mdl"

ITEM.price = 582
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.068
ITEM.flatweight = 0.038

ITEM.isDrink = true
ITEM.addictionStrongAlcohol = true

--ITEM.hunger = 15
ITEM.thirst = -4
ITEM.quantity = 10
ITEM.alcohol = 8

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Крепкий алкоголь", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает бесцветную бутылку водки 'Немирiвська' и делает несколько глотков, заметно вздрогнув.", false)

	item.player:GetCharacter():SatisfyAddictions("MediumAlcohol")
end)

ITEM:DecideFunction()