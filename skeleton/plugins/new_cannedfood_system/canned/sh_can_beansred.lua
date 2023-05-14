ITEM.name = "Красная фасоль"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Бобы красной фасоли, которые были подвергнуты процессу консерации вместе с томатным соусом. Достаточно соленые и отлично утоляют голод."
ITEM.model = "models/lostsignalproject/items/consumable/chili.mdl"

ITEM.width = 1
ITEM.height = 1

ITEM.price = 260

ITEM.weight = 0.194

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc2(tooltip, "Съедобное", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/hunger.png"))
    ix.util.PropertyDesc2(tooltip, "Разогреваемое", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/thermprot.png"))
    ix.util.PropertyDesc2(tooltip, "ПИЗДА", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/thermprot.png"))
end

ITEM.functions.use = {
	name = "Вскрыть консервы",
	OnRun = function(item)
		local client = item.player
		
		if !client then
			return false
		end
		
		local inventory = client:GetCharacter():GetInventory()
		if inventory:HasItem("surgery_pack") then
			-- удаляем консервы
			item:Remove()

			ix.util.PlayerPerformBlackScreenAction(item.player, "Вскрытие...", 12, function(player) 
				ix.chat.Send(player, "me", "аккуратно вскрывает консервированную банку.")
			end)

			-- создаем новый предмет "opened_can"
			local opened_can = ix.item.Spawn("canned_beansred", client)
			if !opened_can then
				client:Notify("Не удалось создать открытую банку!")
				return false
			end
			client:Notify("Вы открыли консервы!")
			return true
		else
			client:Notify("Вам нужен открывашка, чтобы открыть консервы.")
			return false
		end
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity))
	end
}