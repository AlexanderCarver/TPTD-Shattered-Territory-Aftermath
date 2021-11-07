ITEM.name = "Radio Base"
ITEM.model = Model("models/deadbodies/dead_male_civilian_radio.mdl")
ITEM.description = "A shiny handheld radio%s.\nIt is currently turned %s%s."
ITEM.cost = 50
ITEM.classes = {CLASS_EMP, CLASS_EOW}
ITEM.flag = "v"

local radioTypes = {"walkietalkie","longrange","duplexradio","duplexwalkie","hybridradio","hybridwalkie"}
ITEM.radiotypes = radioTypes --  Compatible radio types

-- Defaults
ITEM.duplex = false
ITEM.walkietalkie = false

-- Inventory drawing
if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
	
		if (item:GetData("enabled")) then
			surface.SetDrawColor(255, 255, 0, 100)
			surface.DrawRect(w - 14, h - 14, 8, 8)
		end
		
		if (item:GetData("active")) then
			surface.SetDrawColor(110, 200, 110, 255)
			surface.DrawRect(w - 14, h - 14, 8, 8)
		end
		
		if (item:GetData("silenced") and item:GetData("enabled")) then
			surface.SetDrawColor(255, 255/4, 110/2, 200)
			surface.DrawRect(w - 14, h - 11, 9, 2)
		end
		
		if (item:GetData("broadcast") and item:GetData("enabled")) then
			surface.SetDrawColor(255/4, 255, 110*2, 200)
			surface.DrawRect(w - 14, h - 18, 8, 2)
		end
		
		if (item:GetData("scanning") and item:GetData("enabled")) then
			surface.SetDrawColor(255,165, 0, 200)
			surface.DrawRect(w - 18, h - 14, 2, 8)
		end
	end
end

function ITEM:GetDescription()
	local enabled = self:GetData("enabled")
	local notWalkie = !self.walkietalkie
	--local noWalkieEnable = enabled and notWalkie
	local duplexTrue = self:GetData("duplex",self.duplex)
	local displayFreq = string.format(" и %s %s MHz", duplexTrue and "получает от" or "настроен на", duplexTrue and self:GetData("listenfrequency", "100.0") or self:GetData("frequency","100.0"))
	local ret = string.format(self.description, notWalkie and " с помощью частотного тюнера " or "", enabled and "включен" or "отключен", (enabled and notWalkie) and displayFreq or "")
	
	if enabled then
		if self.hybrid then
			ret = string.format("%s\nРаботает в режиме %s.", ret, self:GetData("duplex",self.duplex) and "дуплекс" or "симплексный")
		end
		if self:GetData("scanning", false) then
			ret = string.format("%s%s%s.",ret,"\nВы прослушиваете все каналы в данный момент", notWalkie and " на данной частоте" or "")
		end
		local defCh = "CH"..self:GetData("channel","1")
		local adStr = self:GetData("ch"..self:GetData("channel","1").."name",defCh)
		ret = ret.."\nНастроено на канал "..self:GetData("channel","1")..( (adStr != defCh) and ", известный как "..adStr.."." or ".")
	end
	if (self:GetData("silenced") and enabled) then
		ret = ret .. " \nВ настоящее время радиосигналы отключены."
	end
	if self:GetData("active") then
		local brdcastStr = ", и вещание по всем каналам!"
		ret = string.format("%s \nВы передаете по этому радио %s%s", ret, (notWalkie and duplexTrue) and (" на "..self:GetData("frequency","100.0").. " MHz") or "", self:GetData("broadcast") and brdcastStr or ".")
	end
	
	return ret
end

function ITEM.postHooks.drop(item, status)
	item:SetData("enabled", false)
	item:SetData("active",false)
	item:SetData("broadcast",false)
end

function ITEM.postHooks.Synchronize(item, status)
	local itemTable = item
	local character = itemTable.player:GetCharacter()

	-- Finds enabed repeaters within 1/4 the max radio range
	local loc = itemTable.player:GetPos()
	local randFreq = 100*math.random(1,9) + 10*math.random(0,9) + math.random(0,9) + 0.1*math.random(1,9)
	local maxRange =  4*ix.config.Get("chatRange",280) -- (ix.config.Get("radioRangeMult") * ix.config.Get("chatRange",280)) * ix.config.Get("walkieMult",0.25)
	local listenerEnts = ents.FindInSphere(loc, maxRange)
	local lockedOn = false
	--print(#listenerEnts)
	--print(loc)
	--local maxRange = (1/4) * ix.config.Get("radioRangeMult") * ix.config.Get("chatRange",280)
	--local normDist = (loc / maxRange)
	--local failChance = 1 - math.min(1, normDist^2) -- Chance to be set to a random frequency

	for k, v in ipairs(listenerEnts) do
		if ( v:GetClass() == "ix_radiorepeater" and v:GetEnabled()) then

			local transFreq = v:GetInputFreq()
			local receiveFreq = v:GetOutputFreq()
			
			itemTable:SetData("frequency",transFreq)
			character:SetData("frequency",transFreq)
			itemTable:SetData("listenfrequency",receiveFreq)
			itemTable.player:Notify("Успешно синхронизировано с ретранслятором.")
			
			-- Hybrid stuff
			if itemTable.hybrid then
				itemTable:SetData("storefrequency",transFreq)
			end
			
			lockedOn = true
			break
			
				-- if walkie then
					-- for k,v in ipairs(walkie) do
						-- --PrintTable(v)
						-- if v:GetData("active") then
							-- local freq,chan = chr:GetData("frequency"),chr:GetData("channel") or otherFreq,"1"
							-- if freq == item:GetData("frequency") then
								-- freq,chan = otherFreq,"1"
							-- end
							-- itemTable:SetData("frequency",freq)
							-- itemTable:SetData("channel",chan)
							-- character:SetData("frequency",freq)
							-- character:SetData("channel",chan)
							-- lockedOn = true
							-- if (freq == otherFreq) then 
								-- itemTable.player:Notify("Locked on to a weak signal on channel 1.")
							-- elseif (freq != otherFreq) then
								-- itemTable.player:Notify("Locked on to a strong signal on channel "..chan..".")
							-- end
							-- break
						-- end
					-- end
					-- break
				-- end
			-- end
			--end
		end
	end
	
	if !lockedOn then
		itemTable:SetData("frequency",randFreq)
		itemTable:SetData("channel","1")
		character:SetData("frequency",randFreq)
		character:SetData("channel","1")
		itemTable.player:Notify("Не удалось выполнить синхронизацию с ретранслятором.")
	end
	
	--print(item:GetData("channel"))
end

function ITEM.postHooks.Scan(item, status)
	local itemTable = item
	local character = itemTable.player:GetCharacter()

	-- Finds players within 1/4 the max radio range
	local loc = itemTable.player:GetPos()
	local randFreq = 100*math.random(1,9) + 10*math.random(0,9) + math.random(0,9) + 0.1*math.random(1,9)
	local maxRange =  (ix.config.Get("radioRangeMult") * ix.config.Get("chatRange",280)) * ix.config.Get("walkieMult",0.25)
	local listenerEnts = ents.FindInSphere(loc, maxRange)
	local lockedOn = false
	--print(#listenerEnts)
	--print(loc)
	--local maxRange = (1/4) * ix.config.Get("radioRangeMult") * ix.config.Get("chatRange",280)
	--local normDist = (loc / maxRange)
	--local failChance = 1 - math.min(1, normDist^2) -- Chance to be set to a random frequency

	for k, v in ipairs(listenerEnts) do
		if ( v:IsPlayer() and itemTable.player != v ) then
			local dist = itemTable.player:GetPos():Distance(v:GetPos())
			local failChance = 0
			local otherFreq
			if (dist > ix.config.Get("chatRange",280)) then
				failChance = 1 - math.min(1, (dist / maxRange)^2)
			end
			
			local otherFreq
			if (math.random() > failChance) then
				otherFreq = randFreq
			end
			
			if ( dist  <= maxRange ) then 
				if  ( v:GetCharacter() and v:GetCharacter():GetData("frequency") and v:GetCharacter():GetData("channel") ) then
	
					local chr = v:GetCharacter()
					local inv = chr:GetInventory()
					local radios = inv:GetItemsByUniqueID("walkietalkie", true)
					local current = inv:GetItemsByUniqueID("hybridwalkie", true)
					if (#current > 0) then 
						for k,v in pairs(current) do radios[#radios+1] = v end
					end
					
					if radios then
						for _,radio in ipairs(radios) do
							--PrintTable(v)
							if radio:GetData("active") and !radio:GetData("duplex", radio.duplex) then
								local freq,chan = chr:GetData("frequency"),chr:GetData("channel") or otherFreq,"1"
								if freq == item:GetData("frequency") then
									freq,chan = otherFreq,"1"
								end
								itemTable:SetData("frequency",freq)
								itemTable:SetData("channel",chan)
								character:SetData("frequency",freq)
								character:SetData("channel",chan)
								
								lockedOn = true
								if (freq == otherFreq) then 
									itemTable.player:Notify("Зафиксировали слабый сигнал на канал 1.")
								elseif (freq != otherFreq) then
									itemTable.player:Notify("Зафиксировано на сильном сигнале на канале "..chan..".")
								end
								break
							end
						end
						break
					end
				end
			end
		end
	end
	
	if !lockedOn then
		itemTable:SetData("frequency",randFreq)
		itemTable:SetData("channel","1")
		character:SetData("frequency",randFreq)
		character:SetData("channel","1")
		itemTable.player:Notify("Зафиксирован на слабый сигнал на канале 1.")
	end
	
	--print(item:GetData("channel"))
end

ITEM.functions.Broadcast = {
	OnRun = function(itemTable)
		local character = itemTable.player:GetCharacter()
		local inventory = character:GetInventory()
		
		local radios = inventory:GetItemsByUniqueID("handheld_radio", true)
		--
		for _,curtype in pairs(radioTypes) do
			local current = inventory:GetItemsByUniqueID(curtype, true)
			if (#current > 0) then 
				for k,v in pairs(current) do radios[#radios+1] = v end
			end
		end
		
		if !itemTable:GetData("enabled") then 
			itemTable:SetData("enabled", true)
		end
			
		if (!itemTable:GetData("active")) then -- if the current radio is on...
			-- first deactivates all other active radios
			for k, v in ipairs(radios) do
				if (v != itemTable and v:GetData("enabled", false) and v:GetData("active",false)) then
					v:SetData("active",false)
					v:SetData("broadcast",false)
					--bCanToggle = false
					--break
				end
			end
			
			itemTable:SetData("active",true)
			character:SetData("frequency",itemTable:GetData("frequency","100.0"))
			character:SetData("channel",itemTable:GetData("channel","1"))
		end
		
		-- Toggles broadcasting
		itemTable:SetData("broadcast", !itemTable:GetData("broadcast", false))
		
		if itemTable:GetData("broadcast") then
			itemTable.player:NotifyLocalized("Вы теперь вещаете по всем каналам на "..itemTable:GetData("frequency","100.0").." MHz.")
		else
			itemTable.player:NotifyLocalized("Вы больше не вещаете по всем каналам.")
		end
		
		return false
	end,
	
	OnCanRun = function(itemTable)
		local chk = ix.config.Get("broadcastLevel",1)
		local itemType = itemTable.uniqueID
		if !ix.config.Get("allowBroadcast",true) then
			return false
		elseif chk >= 1 and itemTable.longrange then
			return true
		elseif chk == 3 and itemTable.walkietalkie then
			return true
		elseif chk >= 2 and !itemTable.walkietalkie then
			return true
		else
			return false
		end	
	end
}

-- Hybrid radio stuff
ITEM.functions.AdMode = { -- Sorry, ordering
	name = "Режим",
	OnRun = function(itemTable)
		itemTable:SetData("duplex", !itemTable:GetData("duplex",itemTable.duplex))
		if itemTable:GetData("duplex",itemTable.duplex) then 
			itemTable:SetData("frequency", itemTable:GetData("storefrequency",itemTable:GetData("frequency"))) -- Resets transmitting frequency to previously synchronized one
		end
		itemTable.player:Notify(string.format("Ваше радио сейчас в %s.%s", itemTable:GetData("duplex",itemTable.duplex) and "дуплексный режим" or "симплексный режим",(itemTable:GetData("storefrequency") and itemTable:GetData("duplex")) and "\nВаша частота восстановлена." or ""))
		return false
	end,
	
	OnCanRun = function(itemTable)
		if !itemTable.hybrid then
			return false
		else
			return true
		end
		
	end
}

ITEM.functions.Частота = {
	OnRun = function(itemTable)
	
		local character = itemTable.player:GetCharacter()
		local inventory = character:GetInventory()
		
		local radios = inventory:GetItemsByUniqueID("handheld_radio", true)
		--
		for _,curtype in pairs(radioTypes) do
			local current = inventory:GetItemsByUniqueID(curtype, true)
			if (#current > 0) then 
				for k,v in pairs(current) do radios[#radios+1] = v end
			end
		end
		
		if !itemTable:GetData("enabled") then 
			itemTable:SetData("enabled", true)
		end
			
		if (!itemTable:GetData("active")) then -- if the current radio is on...
			-- first deactivates all other active radios
			for k, v in ipairs(radios) do
				if (v != itemTable and v:GetData("enabled", false) and v:GetData("active",false)) then
					v:SetData("active",false)
					v:SetData("broadcast",false)
					--bCanToggle = false
					--break
				end
			end
			
			itemTable:SetData("active",true)
			character:SetData("frequency",itemTable:GetData("frequency","100.0"))
			character:SetData("channel",itemTable:GetData("channel","1"))
		end
		--if (itemTable:GetData("enabled") and itemTable:GetData("active")) then
		
		if !itemTable:GetData("duplex",itemTable.duplex) then
			netstream.Start(itemTable.player, "Frequency", itemTable:GetData("frequency", "100.0"))
		elseif itemTable:GetData("duplex",itemTable.duplex) then
			netstream.Start(itemTable.player, "FrequencyMenu", {itemTable:GetData("frequency", "100.0"),itemTable:GetData("listenfrequency", "900.0")})
		end
		--else
		--	netstream.Start(itemTable, "Frequency", itemTable:GetData("frequency", "000.0"))
		--end

		return false
	end,
	
	OnCanRun = function(itemTable)
		local itemType = itemTable.uniqueID
		if itemTable.walkietalkie then
			return false
		else
			return true
		end
		
	end
}

ITEM.functions.Канал = {
	OnRun = function(itemTable)
	
		local character = itemTable.player:GetCharacter()
		local inventory = character:GetInventory()
		
		local radios = inventory:GetItemsByUniqueID("handheld_radio", true)
		--
		for _,curtype in pairs(radioTypes) do
			local current = inventory:GetItemsByUniqueID(curtype, true)
			if (#current > 0) then 
				for k,v in pairs(current) do radios[#radios+1] = v end
			end
		end
		
		if !itemTable:GetData("enabled") then 
			itemTable:SetData("enabled", true)
		end
			
		if (!itemTable:GetData("active")) then -- if the current radio is on...
			-- first deactivates all other active radios
			for k, v in ipairs(radios) do
				if (v != itemTable and v:GetData("enabled", false) and v:GetData("active",false)) then
					v:SetData("active",false)
					v:SetData("broadcast",false)
					--bCanToggle = false
					--break
				end
			end
			
			itemTable:SetData("active",true)
			character:SetData("frequency",itemTable:GetData("frequency","100.0"))
			character:SetData("channel",itemTable:GetData("channel","1"))
		end
		
		local tab = {}
		for k,v in pairs({"1","2","3","4"}) do
			tab[k] = itemTable:GetData("ch"..v.."name","CH"..v)
			-- if tab[k] != "CH"..v then 
				-- tab[k] = "("..v..") "..tab[k]
			-- end
		end
		
		netstream.Start(itemTable.player, "Channel", tab)
		
		return false
	end
}

ITEM.functions.Подавить = {
	OnRun = function(itemTable)
		--netstream.Start(itemTable.player, "Frequency", itemTable:GetData("silenced", "000.0"))
		if (itemTable:GetData("enabled")) then
			itemTable:SetData("silenced", !itemTable:GetData("silenced", false))
			if itemTable:GetData("silenced") then
				itemTable.player:NotifyLocalized("Ты заглушил радио.")
			else
				itemTable.player:NotifyLocalized("Ты не включил радио.")
			end
		end
		return false
	end,

	OnCanRun = function(itemTable)
		if !ix.config.Get("radioSounds",false) then
			return false
		else
			if !itemTable:GetData("enabled",false) then
				return false
			else
				return true
			end
		end
		
	end
}

ITEM.functions.Слушать = {
	OnRun = function(itemTable)
		-- If it's not active, make it so
		local character = itemTable.player:GetCharacter()
		local inventory = character:GetInventory()
		
		local radios = inventory:GetItemsByUniqueID("handheld_radio", true)
		--
		for _,curtype in pairs(radioTypes) do
			local current = inventory:GetItemsByUniqueID(curtype, true)
			if (#current > 0) then 
				for k,v in pairs(current) do radios[#radios+1] = v end
			end
		end
		
		if !itemTable:GetData("enabled") then 
			itemTable:SetData("enabled", true)
		end
		
		local keepScanning = false		
		for k, v in ipairs(radios) do
			if (v != itemTable and v:GetData("enabled", false)) then
				if v:GetData("scanning",false) then
					keepScanning = true
				end
				if v:GetData("active",false) then
					character:SetData("frequency",v:GetData("frequency","100.0"))
				end
			end
		end
	
		itemTable:SetData("scanning", !itemTable:GetData("scanning", false))
		-- Sets up item and character level scanning
		if (itemTable:GetData("scanning",false)) then
			itemTable:SetData("scanning",true)
			character:SetData("scanning",true)
			--itemTable:SetData("broadcast",false)
			--character:SetData("channel",itemTable:GetData("channel","1"))
			local notifyStr = string.format(" На %s MHz", itemTable:GetData("duplex",itemTable.duplex) and itemTable:GetData("listenfrequency","900.0") or itemTable:GetData("frequency","100.0")) --.." MHz"
			local noWalkie = !itemTable.walkietalkie
			local printStr = string.format("Теперь вы слушаете все каналы %s.", noWalkie and notifyStr or "")
			itemTable.player:NotifyLocalized(printStr)
		else
			character:SetData("scanning",keepScanning)
			itemTable:SetData("scanning",false)
			itemTable.player:NotifyLocalized("Вы больше не слушаете все каналы.")
		end
		
		return false
	end
}

ITEM.functions.Переключить = {
	OnRun = function(itemTable)
		-- local character = itemTable.player:GetCharacter()
		-- local inventory = character:GetInventory()
		
		-- local radios = inventory:GetItemsByUniqueID("handheld_radio", true)
		-- --
		-- for _,curtype in pairs(radioTypes) do
			-- local current = inventory:GetItemsByUniqueID(curtype, true)
			-- if (#current > 0) then 
				-- for k,v in pairs(current) do radios[#radios+1] = v end
			-- end
		-- end
		-- local bCanToggle = true
		
		-- -- activates the radio if no other powered on radios are in inventory already
		-- local enabl = false
		-- local activeFreq = ""
		-- local keepScanning = false
		-- for k, v in ipairs(radios) do
			-- if (v != itemTable and v:GetData("enabled", false)) then
				-- enabl = true
				-- if v:GetData("active", false) then
					-- activeFreq = v:GetData("frequency","100.0")
				-- end
				-- if v:GetData("scanning", false) then
					-- keepScanning = true
				-- end
			-- end
		-- end
		
		
		
		-- -- for k, v in ipairs(longranges) do
			-- -- if (v != itemTable and v:GetData("enabled", false)) then
				-- -- bCanToggle = false
				-- -- break
			-- -- end
		-- -- end
		
		-- bCanToggle = true
		-- if (bCanToggle) then
			-- itemTable:SetData("enabled", !itemTable:GetData("enabled", false))

			-- -- Sets frequency to that of currently active radio
			-- if (itemTable:GetData("enabled",false)) then
				-- if !enabl then
					-- itemTable:SetData("active",true)
					-- character:SetData("frequency",itemTable:GetData("frequency","100.0"))
					-- character:SetData("channel",itemTable:GetData("channel","1"))
				-- end
			-- else
				-- character:SetData("frequency",activeFreq) -- If there's another active radio, make that your current frequency, otherwise clear it
				-- itemTable:SetData("active",false)
				-- itemTable:SetData("broadcast",false)
				-- itemTable:SetData("scanning",false)
				-- character:SetData("scanning",keepScanning) -- Since scanning is a character variable, only clear it if there aren't any other scanning radios
			-- end
			
			-- itemTable.player:EmitSound("buttons/lever7.wav", 50, math.random(170, 180), 0.25)
		-- else
			-- itemTable.player:NotifyLocalized("radioAlreadyOn")
		-- end

		return false
	end
}

function ITEM.postHooks.Toggle(item,status)
	local itemTable = item
	local character = itemTable.player:GetCharacter()
	local inventory = character:GetInventory()
	
	local radios = inventory:GetItemsByUniqueID("handheld_radio", true)
	--
	for _,curtype in pairs(radioTypes) do
		local current = inventory:GetItemsByUniqueID(curtype, true)
		if (#current > 0) then 
			for k,v in pairs(current) do radios[#radios+1] = v end
		end
	end
	local bCanToggle = true
	
	-- activates the radio if no other powered on radios are in inventory already
	local enabl = false
	local activeFreq = ""
	local keepScanning = false
	for k, v in ipairs(radios) do
		if (v != itemTable and v:GetData("enabled", false)) then
			enabl = true
			if v:GetData("active", false) then
				activeFreq = v:GetData("frequency","100.0")
			end
			if v:GetData("scanning", false) then
				keepScanning = true
			end
		end
	end
	
	
	
	-- for k, v in ipairs(longranges) do
		-- if (v != itemTable and v:GetData("enabled", false)) then
			-- bCanToggle = false
			-- break
		-- end
	-- end
	
	-- bCanToggle = true
	-- if (bCanToggle) then
	itemTable:SetData("enabled", !itemTable:GetData("enabled", false))

	-- Sets frequency to that of currently active radio
	if (itemTable:GetData("enabled",false)) then
		if !enabl then
			itemTable:SetData("active",true)
			character:SetData("frequency",itemTable:GetData("frequency","100.0"))
			character:SetData("channel",itemTable:GetData("channel","1"))
		end
	else
		character:SetData("frequency",activeFreq) -- If there's another active radio, make that your current frequency, otherwise clear it
		itemTable:SetData("active",false)
		itemTable:SetData("broadcast",false)
		itemTable:SetData("scanning",false)
		character:SetData("scanning",keepScanning) -- Since scanning is a character variable, only clear it if there aren't any other scanning radios
	end
	
	itemTable.player:EmitSound("buttons/lever7.wav", 50, math.random(170, 180), 0.25)
	-- else
		-- itemTable.player:NotifyLocalized("radioAlreadyOn")
	-- end
end

ITEM.functions.Активировать = {
	OnRun = function(itemTable)
		-- local character = itemTable.player:GetCharacter()
		-- local inventory = character:GetInventory()
		
		-- local radios = inventory:GetItemsByUniqueID("handheld_radio", true)
		-- --
		-- for _,curtype in pairs(radioTypes) do
			-- local current = inventory:GetItemsByUniqueID(curtype, true)
			-- if (#current > 0) then 
				-- for k,v in pairs(current) do radios[#radios+1] = v end
			-- end
		-- end
		
		-- if (itemTable:GetData("enabled",false)) then -- if the current radio is on...
			-- -- first deactivates all other active radios
			-- for k, v in ipairs(radios) do
				-- if (v != itemTable and v:GetData("enabled", false) and v:GetData("active",false)) then
					-- v:SetData("active",false)
					-- v:SetData("broadcast",false)
					-- --bCanToggle = false
					-- --break
				-- end
			-- end
			
			-- -- toggles current radio active status
			-- itemTable:SetData("active", !itemTable:GetData("active", false))
			-- print("item is now ",itemTable:GetData("active"))
			-- if itemTable:GetData("active") then
				-- character:SetData("frequency",itemTable:GetData("frequency","100.0"))
				-- character:SetData("channel",itemTable:GetData("channel","1"))
				-- itemTable.player:NotifyLocalized("You activated the radio.")
			-- else
				-- itemTable:SetData("broadcast",false)
				-- character:SetData("frequency","")
				-- itemTable.player:NotifyLocalized("You deactivated the radio.")
			-- end
			
			-- itemTable.player:EmitSound("buttons/lever8.wav", 50, math.random(170, 180), 0.25)
		-- --else
		-- --	itemTable.player:NotifyLocalized("radioAlreadyOn")
		-- end

		return false
	end,

	OnCanRun = function(itemTable)
		if !itemTable:GetData("enabled",false) then
			return false
		else
			return true
		end
		
	end
}

function ITEM.postHooks.Activate(item, status)
	local itemTable = item
	local character = itemTable.player:GetCharacter()
	local inventory = character:GetInventory()
	
	local radios = inventory:GetItemsByUniqueID("handheld_radio", true)
	--
	for _,curtype in pairs(radioTypes) do
		local current = inventory:GetItemsByUniqueID(curtype, true)
		if (#current > 0) then 
			for k,v in pairs(current) do radios[#radios+1] = v end
		end
	end
	
	if (itemTable:GetData("enabled",false)) then -- if the current radio is on...
		-- first deactivates all other active radios
		for k, v in ipairs(radios) do
			if (v != itemTable and v:GetData("enabled", false) and v:GetData("active",false)) then
				v:SetData("active",false)
				v:SetData("broadcast",false)
				--bCanToggle = false
				--break
			end
		end
		
		-- toggles current radio active status
		itemTable:SetData("active", !itemTable:GetData("active", false))
		--print("item is now ",itemTable:GetData("active"))
		if itemTable:GetData("active") then
			character:SetData("frequency",itemTable:GetData("frequency","100.0"))
			character:SetData("channel",itemTable:GetData("channel","1"))
			itemTable.player:NotifyLocalized("Вы включили радио.")
		else
			itemTable:SetData("broadcast",false)
			character:SetData("frequency","")
			itemTable.player:NotifyLocalized("Вы выключили радио.")
		end
		
		itemTable.player:EmitSound("buttons/lever8.wav", 50, math.random(170, 180), 0.25)
	--else
	--	itemTable.player:NotifyLocalized("radioAlreadyOn")
	end
end

ITEM.functions.Синхронизировать = {
	OnRun = function(itemTable)
		--print(itemTable.radiotypes)
		local character = itemTable.player:GetCharacter()
		local inventory = character:GetInventory()
		
		local radios = inventory:GetItemsByUniqueID("handheld_radio", true)
		--
		for _,curtype in pairs(itemTable.radiotypes) do
			local current = inventory:GetItemsByUniqueID(curtype, true)
			if (#current > 0) then 
				for k,v in pairs(current) do radios[#radios+1] = v end
			end
		end

		if !itemTable:GetData("enabled") then 
			itemTable:SetData("enabled", true)
		end
		
		if (!itemTable:GetData("active")) then -- if the current radio is on...
			-- first deactivates all other active radios
			for k, v in ipairs(radios) do
				if (v != itemTable and v:GetData("enabled", false) and v:GetData("active",false)) then
					v:SetData("active",false)
					--bCanToggle = false
					--break
				end
			end
			
			itemTable:SetData("active",true)
			character:SetData("frequency",itemTable:GetData("frequency","100.0"))
			character:SetData("channel",itemTable:GetData("channel","1"))
		end
		
		return false
	end,

	
	OnCanRun = function(itemTable)
		if !itemTable.walkietalkie then
			return false
		else
			if !itemTable:GetData("duplex",itemTable.duplex) then
				return false
			else
				return true
			end
		end
		
	end
}

ITEM.functions.Сканировать = {
	OnRun = function(itemTable)
		--print(itemTable.radiotypes)
		local character = itemTable.player:GetCharacter()
		local inventory = character:GetInventory()
		
		local radios = inventory:GetItemsByUniqueID("handheld_radio", true)
		--
		for _,curtype in pairs(itemTable.radiotypes) do
			local current = inventory:GetItemsByUniqueID(curtype, true)
			if (#current > 0) then 
				for k,v in pairs(current) do radios[#radios+1] = v end
			end
		end

		if !itemTable:GetData("enabled") then 
			itemTable:SetData("enabled", true)
		end
		
		if (!itemTable:GetData("active")) then -- if the current radio is on...
			-- first deactivates all other active radios
			for k, v in ipairs(radios) do
				if (v != itemTable and v:GetData("enabled", false) and v:GetData("active",false)) then
					v:SetData("active",false)
					--bCanToggle = false
					--break
				end
			end
			
			itemTable:SetData("active",true)
			character:SetData("frequency",itemTable:GetData("frequency","100.0"))
			character:SetData("channel",itemTable:GetData("channel","1"))
		end
		
		return false
	end,

	
	OnCanRun = function(itemTable)
		if !itemTable.walkietalkie then
			return false
		else
			if itemTable:GetData("duplex",itemTable.duplex) then
				return false
			else
				return true
			end
		end
		
	end
}
