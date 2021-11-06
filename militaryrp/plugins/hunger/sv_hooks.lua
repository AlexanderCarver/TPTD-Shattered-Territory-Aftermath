if SERVER then
    function PLUGIN:PostPlayerLoadout(client)
		client:SetLocalVar("hunger", 100)
		client:SetLocalVar("thirst", 100)

		local hungID = "ixHung"..client:SteamID()
		local thirID = "ixThir"..client:SteamID()
		local hungSpeed = 1
		local thirSpeed = 2

		timer.Create(hungID, 80, 0, function()
			if (IsValid(client) and client:Team() ~= FACTION_OTA) then
				client:SetLocalVar("hunger", client:GetLocalVar("hunger") - hungSpeed)
				client:SetLocalVar("thirst", client:GetLocalVar("hunger") - thirSpeed)
			else
				timer.Remove(hungID)
			end
		end)
		
		timer.Create(thirID, 40, 0, function()
			if (IsValid(client) and client:Team() ~= FACTION_OTA) then
				if (client:GetLocalVar("hunger") <= 0) or (client:GetLocalVar("thirst") <= 0) then
					client:TakeDamage(5)
				end
			else
				timer.Remove(thirID)
			end
		end)
    end
end