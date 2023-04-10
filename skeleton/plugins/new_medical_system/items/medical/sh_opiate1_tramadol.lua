ITEM.name = "Трамадол"
ITEM.description = "Таблетки в хорошо защищенной упаковке."
ITEM.longdesc = "Психотропный опиоидный анальгетик, относится к группе частичных агонистов опиоидных рецепторов. Обладает сильной анальгезирующей активностью, даёт быстрый и длительный эффект."
ITEM.model = "models/lostsignalproject/items/medical/sleeping_pills.mdl"

ITEM.sound = "stalkersound/inv_eat_pills.mp3"

ITEM.width = 1
ITEM.height = 1
ITEM.price = 1850

ITEM.quantity = 10
ITEM.restore = 60
ITEM.toxin = 20
--ITEM.psyheal = 12

ITEM.weight = 0.0004
ITEM.flatweight = 0.010

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, 0, 200),
	ang = Angle(90, 0, 45),
	fov = 1.7,
}

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc2(tooltip, "Обезболивающее", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/hpregen.png"))
    ix.util.PropertyDesc2(tooltip, "Опиат", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/psi.png"))
end

ITEM.functions.use = {
	name = "Употребить",
	icon = "icon16/stalker/swallow.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)

		ix.util.PlayerPerformBlackScreenAction(item.player, "Употребление...", 3, function(player) 
			player:AddBuff("buff_rapidheal", 35, { amount = item.restore/60 }) --Делим на два.
			player:IncreaseDrunkLevel(item.toxin)
            player:GetCharacter():SatisfyAddictions("LightOpiate")
        end)

		ix.chat.Send(item.player, "iteminternal", "достаёт упаковку трамадола и выдавливает одну из таблеток в свою ладонь, после чего глотает её.", false)


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