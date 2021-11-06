ITEM.name = "Drug Base"
ITEM.model = "models/healthvial.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.description = "Makes you love dank memes"
ITEM.category = "Боевые наркотики"

-- Длительность наркотиков в секундах
ITEM.duration = 30
ITEM.quantity = 1

-- Скорость передвижения персонажа
ITEM.drug_speed = 0

-- Максимальное здоровье
ITEM.drug_max_health = 0

-- Добавляемое здоровье. Отнимается по окончанию действия наркотика
ITEM.drug_health = 0

-- Резист от повреждений, как в броне.
ITEM.ResistData = {}

ITEM.destroy_item = true

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		local quantity = item:GetData("quantity", item.quantity or 1)
		
		if (quantity > 0) then
			draw.SimpleText(quantity, "DermaDefault", w - 5, h - 5, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_BOTTOM, 1, color_black)
		end
	end
	
	function ITEM:GetDescription()
		local quantity = self:GetData("quantity", self.quantity or 1)

		if (quantity <= 0) then
			return self.description
		end
		
		local str = self.description .. "\n\nКоличество доз: "..quantity
		
		local cooklevel = self:GetData("cooklevel", 0)
		
		if (cooklevel > 0) then
			str = (str .. "\n" .. "Качество: ".. COOKLEVEL[cooklevel][2])
		end
		
		str = (str .. "\n" .. "Время действия: " .. self.duration)

		return str
	end
end

ITEM:Hook("drop", function(item)
	local owner = item.GetOwner and item:GetOwner()
	
	if (IsValid(owner) and owner.beingUsed == item) then
		owner = nil
		return
	end
end)

function ITEM:CanTransfer()
	local owner = self.GetOwner and self:GetOwner()
	
	if (IsValid(owner) and owner.beingUsed == self) then
		owner = nil
		return false
	end
end

ITEM.functions.use = { 
	name = "Употребить стимулятор",
	tip = "useTip",
	icon = "icon16/add.png",
	OnRun = function(item)
		local client = item.player
		if (not IsValid(client) or not client:Alive()) then return false end
		
		local character = client:GetCharacter()
		if (character) then
			client.beingUsed = item
			client:SetAction("Применение...", 3, function()
				if (not IsValid(client) or not client:Alive()) then 
					client.beingUsed = nil
					return
				end
				
				local bStatus, value = pcall(client.action_drug, client, item, character)
				
				if not bStatus then
					client.beingUsed = nil
					error(value)
				end
			end)
		end

		return false
	end,
	OnCanRun = function(item)
		local cur_item = item.player.beingUsed
		if (IsValid(item.entity) or cur_item and cur_item == item or item:GetData("quantity", item.quantity or 1) <= 0) then
			cur_item = nil
			return false
		end
		
		return true
	end
}

function ITEM:OnInstanced(invID, x, y, item)
	item:SetData("quantity", item.quantity or 1)
end