
-- the code organization has gone awol
ITEM.name = "Лом"
ITEM.description = "Стандартный лом из сплавов метала, который используется для вскрытия дверей."
ITEM.price = 45
ITEM.model = "models/weapons/w_crowbar.mdl"
ITEM.functions.Use = {
	name = "Всрыть дверь",
	icon = "icon16/key_go.png",
	OnRun = function(itemTable)
		local chance = math.random(1, 100)
		local client = itemTable.player
		local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + client:GetAimVector() * 96
			data.filter = client
		local target = util.TraceLine(data).Entity
		for _, v in ipairs(ents.FindByClass("ix_combinelock")) do
			if (target == v.door) then
				chance = 99

				if (IsValid(target) and target:IsDoor()) then
					itemTable.bBeingUsed = true
					client:SetAction("Вскрытие...", 6)

					client:DoStaredAction(target, function()
						client:EmitSound("weapons/357/357_reload3.wav")
						client:Notify("Ваш лом деформировался во время злома.")
						itemTable:Remove()
					end, 6, function()
						client:SetAction()
						itemTable.bBeingUsed = false
					end)
				else
					itemTable.player:Notify("Эта дверь не может быть взломана.")
				end
				return false	
			end
		end
		if (IsValid(target) and target:IsDoor()) then
			itemTable.bBeingUsed = true
			client:SetAction("Вскрытие...", 6)

			client:DoStaredAction(target, function()
				target:Fire("open", "", 0)
				target:Fire("setanimation", "open", 0)
				if (target:IsLocked()) then
					target:Fire("unlock", "", 0)
				end
				target:EmitSound("doors/latchunlocked1.wav")
				client:Notify("Вы успешно вскрыли данную дверь.")
				
				
				end, 6, function()
					client:SetAction()
					itemTable.bBeingUsed = false
				end)
		else
			itemTable.player:Notify("Эта дверь не может быть взломана.")
		end
			

		return false
		end,
	OnCanRun = function(itemTable)
		return !IsValid(itemTable.entity) or itemTable.bBeingUsed
	end
}

function ITEM:CanTransfer(inventory, newInventory)
	return self.bBeingUsed
end
