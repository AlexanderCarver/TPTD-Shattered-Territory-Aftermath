ITEM.name = "Военный стимулятор"
ITEM.description = "Современный военный инжектор с маркировкой ИБП/УБС-01В."
ITEM.longdesc = "Новейший прототип боевого военного стимулятора, разработанный где-то в 90х. Является удачной комбинацией предыдущих моделей, совмещая в себе укрепление мышц и стимуляцию головного мозга. Он также содержит в себе смесь лекарств, обладающую гемостатическим и регенеративным свойством. Неизвестно, пользуется ли он спросом среди военных в силу засекреченности информации. Из минусов можно отметить чуть меньшую эффективность, чем у отдельных моделей, а также очень большую стоимость и редкость."
ITEM.model = ""
--достаёт инжектор с ингибитором ИБП/УБС-01В и делает себе инъекцию, заметно зажмурившись.
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