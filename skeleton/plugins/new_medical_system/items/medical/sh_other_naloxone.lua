ITEM.name = "Налоксон"
ITEM.description = "Таблетки в хорошо защищенной упаковке."
ITEM.longdesc = "Антагонист опиоидных рецепторов, применяется как антидот при передозировках опиоидов, в первую очередь героина. По химической структуре налоксон близок к налорфину."
ITEM.model = "models/lostsignalproject/items/medical/sleeping_pills.mdl"

ITEM.sound = "stalkersound/inv_eat_pills.mp3"

ITEM.width = 1
ITEM.height = 1
ITEM.price = 1280

ITEM.quantity = 10
ITEM.restore = 60
--ITEM.toxin = -100
--ITEM.psyheal = 12

ITEM.weight = 0.0004
ITEM.flatweight = 0.010

ITEM.exRender = false
ITEM.iconCam = {
	pos = Vector(-200, 0, 0),
	ang = Angle(0, 0, 0),
	fov = 1.67
}

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc2(tooltip, "Антидот", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/chemprot.png"))

end

ITEM.functions.use = {
	name = "Употребить",
	icon = "icon16/stalker/swallow.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)

		ix.util.PlayerPerformBlackScreenAction(item.player, "Употребление...", 3, function(player)
			player:AddBuff("buff_toxinremoval", 60, { amount = item.restore/60 }) --Делим на два.
			ix.chat.Send(player, "me", "достаёт упаковку налоксона и выдавливает одну из таблеток в свою ладонь, после чего глотает её.")
		end)


		quantity = quantity - 1

		if (quantity >= 1) then
			item:SetData("quantity", quantity)
			return false
		end


		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity)) and item.invID == item:GetOwner():GetCharacter():GetInventory():GetID()
	end
}