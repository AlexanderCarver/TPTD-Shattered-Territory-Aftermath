ITEM.name = "Сигареты “Marlboro”"
ITEM.description = "Пачка сигарет. Всё не так уж плохо на сегодняшний день."
ITEM.longdesc = "Марка сигарет, выпускаемая компанией Philip Morris International с 1924 года. Самая продаваемая марка сигарет в мире. Сигареты Marlboro широко известны во всём мире благодаря мощной рекламной кампании и значительным благотворительным вложениям в автоспорт, в частности, финансовой поддержке с 1997 года команды «Формулы-1» «Феррари»."
ITEM.model = "models/lostsignalproject/items/consumable/cigarettes_malboro.mdl"
--достаёт пачку сигарет Мальборо и берёт одну из них в рот, после чего закуривает, наполняя воздух горьким табачным дымом.
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