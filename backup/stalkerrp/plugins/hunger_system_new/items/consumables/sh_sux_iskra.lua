ITEM.name = "Сухой паёк вооруженных сил Украины, 900 гр"
ITEM.description = "Сухой паёк(ИРП), сделанный для нужд ВСУ."
ITEM.longdesc = "В компактную коробку сухого пайка (ИРП) входит все, что нужно для комфортного питания взрослого человека в самых сложных условиях."
ITEM.model = "models/lostsignalproject/items/consumable/ration_ru.mdl"

ITEM.price = 750
ITEM.height = 2
ITEM.width = 1
ITEM.weight = 0.150
ITEM.flatweight = 0.060

ITEM.hunger = 22
ITEM.thirst = 10
ITEM.quantity = 6
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