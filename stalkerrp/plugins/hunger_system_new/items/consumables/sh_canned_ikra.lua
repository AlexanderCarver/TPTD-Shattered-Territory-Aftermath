ITEM.name = "Кабачковая икра, 338 гр"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Один из видов овощной икры, получаемый путем обработки кабачкой, моркови, лука и томатной пасты, который подвергся процедуре консервации. Обычно ее употребляют вместе с хлебом или используют в качестве гарнира."
ITEM.model = "models/illusion/eftcontainers/squash.mdl"

ITEM.price = 290
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.170
ITEM.flatweight = 0.038

ITEM.hunger = 15
ITEM.thirst = -10
ITEM.quantity = 2
--ITEM.alcohol = 10

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Консервированная пища", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "аккуратно вскрывает консервированную банку и употребляет находящийся внутри продукт. Икра чуть сладковата на вкус и отдаёт солёным послевкусием. Крайне хороша.", false)
end)

ITEM:DecideFunction()