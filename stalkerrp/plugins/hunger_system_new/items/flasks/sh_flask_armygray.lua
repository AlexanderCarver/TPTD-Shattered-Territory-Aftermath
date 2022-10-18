ITEM.name = "Армейская фляга, 1 л"
ITEM.description = "Переносная ёмкость для хранения воды."
ITEM.longdesc = "Стандартная фляга армии РФ серого цвета образца 1989 года. Вмещает в себя литр воды. Идёт в комплекте с чехлом. Помогает не умереть от жажды в суровых условиях Территории."
ITEM.model = "models/lostsignalproject/items/consumable/flask4.mdl"

ITEM.price = 740
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.090
ITEM.flatweight = 0.520


--ITEM.hunger = 15
ITEM.thirst = 12
ITEM.quantity = 4
--ITEM.alcohol = 10
ITEM.foodtype = "drink"
ITEM.canGarbage = true;
ITEM.refillable = true;

ITEM.sound = "stalkersound/inv_flask.mp3" --cannedfoodeat.mp3

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Контейнер для воды", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "достает армейскую флягу серого цвета и делает несколько глотков.", false)
end)

ITEM:DecideFunction()