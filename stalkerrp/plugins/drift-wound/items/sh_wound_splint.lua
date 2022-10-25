ITEM.name = "Шина для переломов"
ITEM.description = "Фиксатор для различных частей тела, предназначенный для профилактики и лечения травм и заболеваний костной системы. Крайне полезен во время боя, если Вам требуется зафиксировать сломанную конечность."
ITEM.model = "models/illusion/eftcontainers/bandage.mdl"
ITEM.width = 2
ITEM.height = 1
ITEM.price = 16
ITEM.category = "Медикаменты"

ITEM.functions.Apply = {
	name = "Зафиксировать свою сломанную конечность",
	icon = "icon16/pill.png",
	--sound = "bonefixating.wav",
	OnRun = function(itemTable)
		local pl = itemTable.player
		local char = pl:GetCharacter()
		--client:SetAction("Фиксация...", 30)

		ix.Wounds:RemoveFracture(pl)
	end
}

ITEM.functions.ApplyTarget = {
	name = "Зафиксировать чужую сломанную конечность",
	icon = "icon16/pill_go.png",
	--sound = "bonefixating.wav",
	OnRun = function(itemTable)
		local pl = itemTable.player
		local data = {}
			data.start = pl:GetShootPos()
			data.endpos = data.start + pl:GetAimVector() * 96
			data.filter = pl
		local target = util.TraceLine(data).Entity
		--client:SetAction("Фиксация...", 30)

		if IsValid(target) and target:IsPlayer() then
			if target:GetCharacter() then
				ix.Wounds:RemoveFracture(target)

				return true
			end
		end

		return false
	end
}