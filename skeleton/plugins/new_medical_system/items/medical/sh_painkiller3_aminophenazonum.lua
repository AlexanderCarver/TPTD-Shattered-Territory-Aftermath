ITEM.name = "Аминофеназон"
ITEM.description = "Таблетки в хорошо защищенной упаковке."
ITEM.longdesc = "Анальгетик и антипиретик из группы пиразолонов, обладающий анальгетическим, противовоспалительным и жаропонижающим действием, однако при применении этого препарата имеется риск развития агранулоцитоза."
ITEM.model = "models/lostsignalproject/items/medical/sleeping_pills.mdl"

ITEM.sound = "stalkersound/inv_eat_pills.mp3"

ITEM.width = 1
ITEM.height = 1
ITEM.price = 1270

ITEM.quantity = 10
ITEM.restore = 60
ITEM.toxin = 10
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

end

ITEM.functions.use = {
	name = "Употребить",
	icon = "icon16/stalker/swallow.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)

		ix.util.PlayerPerformBlackScreenAction(item.player, "Употребление...", 3, function(player) 
			player:AddBuff("buff_rapidheal", 25, { amount = item.restore/60 }) --Делим на два.
			player:IncreaseDrunkLevel(item.toxin)
		end)

			--player:GetCharacter():SatisfyAddictions("Marijuana")

		ix.chat.Send(item.player, "iteminternal", "достаёт упаковку аминофеназона и выдавливает одну из таблеток в свою ладонь, после чего глотает её.", false)

		--item.player:GetCharacter():SatisfyAddictions("PrescriptionDrugs")

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