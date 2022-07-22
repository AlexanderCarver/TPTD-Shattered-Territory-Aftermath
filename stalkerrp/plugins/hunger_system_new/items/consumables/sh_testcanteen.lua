ITEM.name = "Фляга"
ITEM.description = "Большая фляга"
ITEM.longdesc = "Ohhhh it so deeep."
ITEM.model = "models/props_junk/garbage_glassbottle001a.mdl"

ITEM.price = 140
ITEM.width = 1
ITEM.height = 1
ITEM.weight = 0.500
ITEM.flatweight = 0.250

ITEM.thirst = 10
ITEM.quantity = 2


ITEM.alcohol = 10

ITEM.addictionLightAlcohol = true
ITEM.refillable = true

ITEM.sound = "stalkersound/inv_flask.mp3"
ITEM.img = ix.util.GetMaterial("vgui/hud/items/drink/bottlebeer_1.png")

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Light Alcohol", Color(64, 224, 208))
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
	item.player:AddBuff("buff_radiationremoval", 10, { amount = 0.15 })

	item.player:GetCharacter():SatisfyAddictions("CheapAlcohol")

	ix.chat.Send(item.player, "iteminternal", "делает глоток из "..item.name..".", false)
end)

ITEM:DecideFunction()