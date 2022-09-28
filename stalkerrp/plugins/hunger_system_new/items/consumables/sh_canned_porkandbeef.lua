ITEM.name = "Говядина и свинина, 325 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Консервированный мясной продукт, получаемый из стерилизованного мяса, приготовленного в собственном соку в рамках ГОСТ'а. Тушёнка как продукт полностью готова к самостоятельному употреблению, может входить в состав других блюд. От одной мысли об употреблении подобного у Вас уже начинает выделяться слюна..."
ITEM.model = "models/lostsignalproject/items/consumable/conserva.mdl"

ITEM.price = 265
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.170
ITEM.flatweight = 0.038

ITEM.hunger = 25
ITEM.thirst = -10
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "аккуратно вскрывает консервированную банку и употребляет находящийся внутри продукт. Микс из свинины и говядины самодостаточный и достаточно приятный на вкус. Конечно, было бы лучше съесть её с тушеным картофелем, но данная классика гастрономического удовольствия хороша сама по себе.", false)
end)

ITEM:DecideFunction()