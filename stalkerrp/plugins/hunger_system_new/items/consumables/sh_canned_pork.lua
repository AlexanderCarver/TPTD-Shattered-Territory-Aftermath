ITEM.name = "Свинина, 338 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Консервированный мясной продукт, получаемый из стерилизованного мяса, приготовленного в собственном соку в рамках ГОСТ'а. Тушёнка как продукт полностью готова к самостоятельному употреблению, может входить в состав других блюд. От одной мысли об употреблении подобного у Вас уже начинает выделяться слюна..."
ITEM.model = "models/banka.mdl"
ITEM.skin = 2

ITEM.price = 290
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.170
ITEM.flatweight = 0.038

ITEM.hunger = 20
ITEM.thirst = -10
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "аккуратно вскрывает консервированную банку и употребляет находящийся внутри продукт. Свинина довольно приятная на вкус, в меру солёная и наполнена собственным соком. Конечно, было бы лучше съесть её с тушеным картофелем, но данная классика гастрономического удовольствия хороша сама по себе.", false)
end)

ITEM:DecideFunction()