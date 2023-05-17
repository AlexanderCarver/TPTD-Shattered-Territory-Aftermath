ITEM.name = "Сладкая кукуруза, 338 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Консервы, вырабатываемые из сахарной кукурузы желтозерных и белозерных сортов, залитой раствором сахара и соли. В консервированном варианте кукурузы сохраняется масса полезных веществ. В них содержится богатый комплекс минеральных веществ: калий, кальций, магний, железо, фосфор. Сладкая на вкус."
ITEM.model = "models/banka.mdl"
ITEM.skin = 3

ITEM.price = 275
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.160
ITEM.flatweight = 0.038

ITEM.hunger = 14
ITEM.thirst = 5
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Неплохо утоляет голод", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достаёт консервированную банку и употребляет находяющуюся внутри сладкую кукурузу.", false)
end)

ITEM:DecideFunction()