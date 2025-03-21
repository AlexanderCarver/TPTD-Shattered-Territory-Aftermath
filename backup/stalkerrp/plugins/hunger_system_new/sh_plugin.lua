PLUGIN.name = "TPTD Needs System"
PLUGIN.author = "Alexander Carver and others"
PLUGIN.description = "New huger and need system."

if SERVER then
	function PLUGIN:OnCharacterCreated(client, character)
		character:SetData("hunger", 100)
		character:SetData("thirst", 100)
	end

	function PLUGIN:PlayerLoadedCharacter(client, character)
		timer.Simple(0.25, function()
			client:SetLocalVar("hunger", character:GetData("hunger", 100))
			client:SetLocalVar("thirst", character:GetData("thirst", 100))

		end)

		timer.Simple(1, function()
			client:UpdateThirstState(client)
			client:UpdateHungerState(client)
		end)
	end

	function PLUGIN:CharacterPreSave(character)
		local client = character:GetPlayer()

		if (IsValid(client)) then
			character:SetData("hunger", client:GetLocalVar("hunger", 0))
			character:SetData("thirst", client:GetLocalVar("thirst", 0))
		end
	end

	local playerMeta = FindMetaTable("Player")

	function playerMeta:SetHunger(amount)
		local char = self:GetCharacter()

		if (char) then
			char:SetData("hunger", amount)
			self:SetLocalVar("hunger", amount)
		end
	end

	function playerMeta:SetThirst(amount)
		local char = self:GetCharacter()

		if (char) then
			char:SetData("thirst", amount)
			self:SetLocalVar("thirst", amount)
		end
	end

	function playerMeta:TickThirst(amount)
		local char = self:GetCharacter()

		if (char) then
			char:SetData("thirst", char:GetData("thirst", 100) - amount)
			self:SetLocalVar("thirst", char:GetData("thirst", 100) - amount)

			if char:GetData("thirst", 100) < 0 then
				char:SetData("thirst", 0)
				self:SetLocalVar("thirst", 0)
			end
			self:UpdateThirstState(self)
		end
	end

	function playerMeta:TickHunger(amount)
		local char = self:GetCharacter()

		if (char) then
			char:SetData("hunger", char:GetData("hunger", 100) - amount)
			self:SetLocalVar("hunger", char:GetData("hunger", 100) - amount)

			if char:GetData("hunger", 100) < 0 then
				char:SetData("hunger", 0)
				self:SetLocalVar("hunger", 0)
			end
			self:UpdateHungerState(self)
		end
	end

	function PLUGIN:PlayerTick(ply)
		if ply:GetNetVar("hungertick", 0) <= CurTime() then
			ply:SetNetVar("hungertick", 600 + CurTime())
			ply:TickHunger(1)
		end

		if ply:GetNetVar("thirsttick", 0) <= CurTime() then
			ply:SetNetVar("thirsttick", 300 + CurTime())
			ply:TickThirst(1)
		end
	end

	function playerMeta:UpdateHungerState(client)
/*		if client:GetHunger() > 60 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed"))
			client:SetRunSpeed(ix.config.Get("runSpeed") * 1.1)
		elseif client:GetHunger() <= 60 and client:GetHunger() > 30 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed"))
			client:SetRunSpeed(ix.config.Get("runSpeed"))
		elseif client:GetHunger() <= 30 and client:GetHunger() > 0 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed") * 0.5)
			client:SetRunSpeed(ix.config.Get("runSpeed") * 0.5)
		elseif client:GetHunger() <= 0 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed") * 0.1)
			client:SetRunSpeed(ix.config.Get("runSpeed") * 0.1)
		end*/
	end

	function playerMeta:UpdateThirstState(client)
/*		if client:GetThirst() > 60 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed"))
			client:SetRunSpeed(ix.config.Get("runSpeed") * 1.1)
		elseif client:GetThirst() <= 60 and client:GetThirst() > 30 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed"))
			client:SetRunSpeed(ix.config.Get("runSpeed"))
		elseif client:GetThirst() <= 30 and client:GetThirst() > 0 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed") * 0.5)
			client:SetRunSpeed(ix.config.Get("runSpeed") * 0.5)
		elseif client:GetThirst() <= 0 then
			client:SetWalkSpeed(ix.config.Get("walkSpeed") * 0.1)
			client:SetRunSpeed(ix.config.Get("runSpeed") * 0.1)
		end*/
	end

end



local playerMeta = FindMetaTable("Player")

function playerMeta:GetHunger()
	local char = self:GetCharacter()

	if (char) then
		return char:GetData("hunger", 100)
	end
end

function playerMeta:GetThirst()
	local char = self:GetCharacter()

	if (char) then
		return char:GetData("thirst", 100)
	end
end

function PLUGIN:AdjustStaminaOffset(client, offset)
	if (client:GetHunger() <= 0) or (client:GetThirst() <= 0) then
		return offset-1.7
	elseif (client:GetHunger() <= 30 and client:GetHunger() > 0) or (client:GetThirst() <= 30 and client:GetThirst() > 0) then
		return offset-1.3
	elseif (client:GetHunger() <= 60 and client:GetHunger() > 30) or (client:GetThirst() <= 60 and client:GetThirst() > 30) then
		return offset-0.9
	elseif client:GetHunger() < 60 or client:GetThirst() < 60 then
		return offset
	end
end

ix.command.Add("charsetthirst", {
	adminOnly = true,
	arguments = {
		ix.type.string,
		ix.type.number,
	},
	OnRun = function(self, client, target, thirst)
		local target = ix.util.FindPlayer(target)
		local thirst = tonumber(thirst)

		if !target then
			client:Notify("Неправильная цель!")
			return
		end
		target:SetThirst(thirst)

		if client == target then
            client:Notify("Вы установили себе жажду на "..thirst.." единиц.")
        else
            client:Notify("Вы установили голод для "..target:Name().." на "..thirst.." единиц.")
            target:Notify("Администратор "..client:Name().." установил Ваш год на "..thirst.." единиц.")
        end
        target:UpdateThirstState(target)
	end
})

ix.command.Add("charsethunger", {
	adminOnly = true,
	arguments = {
		ix.type.string,
		ix.type.number,
	},
	OnRun = function(self, client, target, hunger)
		local target = ix.util.FindPlayer(target)
		local hunger = tonumber(hunger)

		if !target then
			client:Notify("Неправильная цель!")
			return
		end

		target:SetHunger(hunger)

		if client == target then
            client:Notify("Вы установили себе голод на "..hunger.. "единиц.")
        else
            client:Notify("Вы установили голод для "..target:Name().." на "..hunger.." единиц.")
            target:Notify("Администратор "..client:Name().." установил Ваш год на "..hunger.." единиц.")
        end
        target:UpdateHungerState(target)
	end
})
