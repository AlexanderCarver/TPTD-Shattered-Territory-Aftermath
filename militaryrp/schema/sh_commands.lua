do
	local COMMAND = {}
	COMMAND.arguments = ix.type.text

	function COMMAND:OnRun(client, message)
		if (!client:IsRestricted()) then
			ix.chat.Send(client, "dispatch", message)
		else
			return "@notNow"
		end
	end

	ix.command.Add("IntercomSecurity", COMMAND)
end

do
	local COMMAND = {}
	COMMAND.arguments = ix.type.text

	function COMMAND:OnRun(client, message)
		local character = client:GetCharacter()
		local inventory = character:GetInventory()

		if (inventory:HasItem("request_device") or client:IsCombine() or client:Team() == FACTION_ADMIN) then
			if (!client:IsRestricted()) then
				Schema:AddCombineDisplayMessage("@cRequest")

				ix.chat.Send(client, "request", message)
				ix.chat.Send(client, "request_eavesdrop", message)
			else
				return "@notNow"
			end
		else
			return "@needRequestDevice"
		end
	end

	ix.command.Add("Req", COMMAND)
end

do
	local COMMAND = {}
	COMMAND.arguments = ix.type.text

	function COMMAND:OnRun(client, message)
		if (!client:IsRestricted()) then
			ix.chat.Send(client, "broadcast", message)
		else
			return "@notNow"
		end
	end

	ix.command.Add("Intercom", COMMAND)
end

do
	local COMMAND = {}
	COMMAND.adminOnly = true
	COMMAND.arguments = {
		ix.type.character,
		ix.type.text
	}

	function COMMAND:OnRun(client, target, permit)
		local itemTable = ix.item.Get("permit_" .. permit:lower())

		if (itemTable) then
			target:GetInventory():Add(itemTable.uniqueID)
		end
	end

	ix.command.Add("PermitGive", COMMAND)
end

do
	local COMMAND = {}
	COMMAND.adminOnly = true
	COMMAND.arguments = {
		ix.type.character,
		ix.type.text
	}
	COMMAND.syntax = "<string name> <string permit>"

	function COMMAND:OnRun(client, target, permit)
		local inventory = target:GetInventory()
		local itemTable = inventory:HasItem("permit_" .. permit:lower())

		if (itemTable) then
			inventory:Remove(itemTable.id)
		end
	end

	ix.command.Add("PermitTake", COMMAND)
end

do
	local COMMAND = {}
	COMMAND.arguments = ix.type.character

	function COMMAND:OnRun(client, target)
		local targetClient = target:GetPlayer()

		if (!hook.Run("CanPlayerViewData", client, targetClient)) then
			return "@cantViewData"
		end

		netstream.Start(client, "ViewData", targetClient, target:GetData("cid") or false, target:GetData("combineData"))
	end

	ix.command.Add("ViewData", COMMAND)
end

do
	local COMMAND = {}

	function COMMAND:OnRun(client, arguments)
		if (!hook.Run("CanPlayerViewObjectives", client)) then
			return "@noPerm"
		end

		netstream.Start(client, "ViewObjectives", Schema.CombineObjectives)
	end

	ix.command.Add("ViewObjectives", COMMAND)
end

do
	local COMMAND = {}

	function COMMAND:OnRun(client, arguments)
		local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + client:GetAimVector() * 96
			data.filter = client
		local target = util.TraceLine(data).Entity

		if (IsValid(target) and target:IsPlayer() and target:IsRestricted()) then
			if (!client:IsRestricted()) then
				Schema:SearchPlayer(client, target)
			else
				return "@notNow"
			end
		end
	end

	ix.command.Add("CharSearch", COMMAND)
end
