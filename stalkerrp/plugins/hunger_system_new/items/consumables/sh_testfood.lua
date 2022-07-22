ITEM.name = "Маленкий кусочек говнеца"
ITEM.description = "Относительно малый кусок дерьма. Удобно хранить в рюкзаке."
ITEM.longdesc = "Длинное описание. Длинное описание. Длинное описание. Длинное описание. Длинное описание. Длинное описание. Длинное описание. Длинное описание. Длинное описание. Длинное описание. Длинное описание. Длинное описание. Длинное описание. Длинное описание. Длинное описание. "
ITEM.model = "models/lostsignalproject/items/consumable/sausage.mdl"

ITEM.price = 25
ITEM.width = 1
ITEM.height = 1
ITEM.weight = 0.125
ITEM.flatweight = 0

ITEM.hunger = 8
ITEM.quantity = 4

ITEM.sound = "stalkersound/inv_eat_mutant_food.mp3"
--ITEM.img = ix.util.GetMaterial("vgui/hud/items/food/sausage_1.png")

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	ix.chat.Send(item.player, "iteminternal", "берет кусочек "..item.name.." и съедает.", false)
end)

ITEM:DecideFunction()