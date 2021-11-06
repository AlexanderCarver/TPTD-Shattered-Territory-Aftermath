local player_meta = FindMetaTable'Player'

function player_meta:SetDrugData(item_obj, reset, timer_id)
	local drug_data = self:GetLocalVar("is_drugs", {})
	
	if not reset then
		drug_data.duration = (drug_data.duration or 0) + 1
	else
		drug_data.duration = (drug_data.duration or 0) - 1
	end
	
	if drug_data.duration < 1 then
		drug_data.duration = nil
	end
	
	drug_data.timers = drug_data.timers or {}
	if reset then
		drug_data.timers[timer_id] = nil
	else
		drug_data.timers[timer_id] = item_obj
	end
	
	if item_obj.drug_speed ~= 0 then
		drug_data.speed = (drug_data.speed or 1) + (not reset and item_obj.drug_speed or -item_obj.drug_speed)
	end
	
	local max_health = self:GetMaxHealth()
	if self:Alive() and item_obj.drug_max_health ~= 0 then
		max_health = max_health + (not reset and item_obj.drug_max_health or -item_obj.drug_max_health)
		self:SetMaxHealth(max_health)
	end
	
	local health = self:Health()
	if self:Alive() and item_obj.drug_health ~= 0 then
		health = math.Clamp(health + (not reset and item_obj.drug_health or -item_obj.drug_health), 0, max_health)
		self:SetHealth(health)
	end
	
	if drug_data.duration and istable(item_obj.ResistData) and not table.IsEmpty(item_obj.ResistData) then
		drug_data.ResistData = drug_data.ResistData or {}

		for enum, value in pairs(item_obj.ResistData) do
			drug_data.ResistData[enum] = math.Clamp((drug_data.ResistData[enum] or 1) + (reset and value or -value), 0, 5)
		end
	end
	
	self.drugged_timers = drug_data.timers
	if not drug_data.duration then
		drug_data = nil
	end
	
	self:SetLocalVar("is_drugs", drug_data)
	drug_data = nil
	
	if self:Alive() and health <= 0 then
		self:Kill()
	end
end

function player_meta:action_drug(item, character)
	local quantity = item:GetData("quantity", item.quantity or 1)
	quantity = quantity - 1
	item:SetData("quantity", quantity)
	
	local mul = COOKLEVEL[item:GetData("cooklevel", 0)][1]
	
	if mul < 1 then
		mul = 1
	end
	
	local boosts = item.attribBoosts
	
	if (boosts) then
		for k, v in pairs(boosts) do
			character:AddBoost(item.uniqueID, k, v)
		end
	end
	
	local client = self
	
	client:EmitSound("physics/flesh/flesh_bloody_break.wav", 75, 200)
	
	local timer_id = "ixDrug_" .. CurTime() .. "_" .. character:GetID()
	client:SetDrugData(item, nil, timer_id)
	
	timer.Create(timer_id, item.duration, 1, function()
		if (!IsValid(client) or !client:Alive()) then
			timer.Remove(timer_id)
		end
		
		if client:Alive() then
			client:Notify("Действие " .. item.name .. " закончилось.")
		end
		
		client:SetDrugData(item, true, timer_id)

		if (boosts) then
			for k, v in pairs(boosts) do
				character:RemoveBoost(item.uniqueID, k)
			end
		end
	end)
	
	client.beingUsed = nil
	
	if (quantity <= 0) then
		local _empty_item = item.empty_item
		if (_empty_item and ix.item.Get(_empty_item)) then
			--local data = {empty_item = true}
			
			if (!client:GetCharacter():GetInventory():Add(_empty_item--[[ , 1, data ]])) then
				ix.item.Spawn(_empty_item, client--[[ , nil, nil, data ]])
			end
			
			data = nil
			
			client:Notify(item.name .. " был израсходован полностью.")
			item:Remove()
			return
		elseif (item.destroy_item) then
			client:Notify(item.name .. " был израсходован полностью.")
			item:Remove()
			return
		end
		
		--item:SetData("empty_item", true)
		
		_empty_item = nil
	end
end

function PLUGIN:EntityTakeDamage(entity, dmginfo)
	if (IsValid(entity) and entity:IsPlayer() and dmginfo:GetDamage() > 0) then
		local char = entity:GetCharacter()
		if (char) then
			local drug = entity:GetLocalVar("is_drugs", false)
			
			if drug and drug_data.duration and drug_data.duration > 0 then
				local ResistDamage = istable(drug.ResistData) and drug.ResistData[dmginfo:GetDamageType()] or 1

				if (ResistDamage) then
					local scale = 1 * (ResistDamage + (1 - ResistDamage) * 0.01)
					dmginfo:ScaleDamage(scale)
					scale = nil
				end
				
				ResistDamage = nil
			end
		end
	end
end

function PLUGIN:PlayerLoadedCharacter(client)
	client:SetLocalVar("is_drugs", nil)
end

function PLUGIN:PlayerDeath(client)
	client.refillDrugSys = true
	
	local timers = client.drugged_timers
	if timers and istable(timers) then
		local character = client:GetCharacter()
		
		for timer_id, item_obj in pairs(timers) do
			if timer.Exists(timer_id) then
				timer.Remove(timer_id)
			end
			
			client:SetDrugData(item_obj, true, timer_id)
			
			if (item_obj.attribBoosts and character) then
				for attribute in pairs(item_obj.attribBoosts) do
					character:RemoveBoost(item_obj.uniqueID, attribute)
				end
			end
		end
		
		character = nil
	end
	
	timers = nil
end

function PLUGIN:PlayerSpawn(client)
	if (client.refillDrugSys) then
		client:SetLocalVar("is_drugs", nil)
	end
end