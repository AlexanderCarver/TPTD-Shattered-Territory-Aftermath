ITEM.name = "Сигара “Cohiba”"
ITEM.description = "Кубинская сигара, что пахнет черносливом и дубом."
ITEM.longdesc = "Скрутка из листьев табака цилиндрической (или близкой к ней) формы, которую можно курить в том виде, как она есть. Первые сигары стали набирать популярность ещё в XVII веке в среде испанских конкистадоров, спустя сотню лет появились в Европе, а после отмены испанской монополии на кубинский табак в 1817 году распространились по всему миру. Вы очень богаты, если у Вас имеется подобное курево…"
ITEM.model = "models/lostsignalproject/items/consumable/cigar.mdl"
--достаёт сигару, откусывает заднюю часть зубами и закуривает, испуская густой табачным дым горького вкуса.
ITEM.sound = "stalkersound/inv_syringe.mp3"

ITEM.width = 1
ITEM.height = 1
ITEM.price = 960

ITEM.quantity = 1

ITEM.weight = 0.070
ITEM.flatweight = 0.010

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, 0, 200),
	ang = Angle(90, 0, 45),
	fov = 1.7,
}

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Drug", Color(64, 224, 208))
end

ITEM.functions.use = {
	name = "Inject",
	icon = "icon16/stalker/swallow.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)
		
		item.player:AddBuff("buff_staminarestore", 50, { amount = 2.5 })
		--item.player:AddBuff("buff_adrenalinerunspeed", 50, { })
		--item.player:AddBuff("buff_adrenalinepunchdamage", 50, { })

		item.player:GetCharacter():SatisfyAddictions("StrongerDrugs")

		quantity = quantity - 1

		if (quantity >= 1) then
			item:SetData("quantity", quantity)
			return false
		end
		
		ix.chat.Send(item.player, "iteminternal", "injects himself with the "..item.name..".", false)
		
		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity)) and item.invID == item:GetOwner():GetCharacter():GetInventory():GetID()
	end
}