ITEM.name = "MRE, 1200 гр"
ITEM.description = "Сухой паёк MRE, сделанный для нужд армии США."
ITEM.longdesc = "MRE (Meal, Ready-to-Eat) (Обед, Готовый-к-Употреблению) являются аналогом наших отечественных сухпайков, разработанных для армии США. Упаковка MRE рассчитана на суровые условия эксплуатации и защиту от воздействия стихии, что позволяет особо не заботиться об условиях хранения. Содержит в себе массу различных продуктов для утоления голода в полевых условиях."
ITEM.model = "models/illusion/eftcontainers/mre.mdl"

ITEM.price = 1200
ITEM.height = 2
ITEM.width = 1
ITEM.weight = 0.150
ITEM.flatweight = 0.060

ITEM.hunger = 22
ITEM.thirst = 10
ITEM.quantity = 8
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
	ix.util.PropertyDesc(tooltip, "Хорошо утоляет голод", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "аккуратно вскрывает консервированную банку и употребляет находящийся внутри продукт. Фасоль в томатном соусе достаточно вкусная, чтобы утолить аппетит, однако ее лучше всего употреблять вместе с макаронами.", false)
end)

ITEM:DecideFunction()