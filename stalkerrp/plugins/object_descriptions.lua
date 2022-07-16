
local PLUGIN = PLUGIN

PLUGIN.name = "Object Descriptions"
PLUGIN.description = "Adds names and descriptions to props."
PLUGIN.author = "`impulse"
PLUGIN.maxNameLength = 32
PLUGIN.maxDescriptionLength = 256

ix.lang.AddTable("russian", {
	notLookingAtProp = "Вы смотрите не на проп!",
	objectDescRemoved = "Вы удалили описание с пропа!",
	objectDescSet = "Вы поставили описание для данного пропа!",

	cmdObjectSetDesc = "Добавляет имя и описание для пропа, на который Вы смотрите."
})

if (SERVER) then
	util.AddNetworkString("ixObjectPhysDesc")
else
	net.Receive("ixObjectPhysDesc", function(length)
		local entity = net.ReadEntity()
		local name = net.ReadString()
		local description = net.ReadString()

		if (name == "") then
			entity.OnPopulateEntityInfo = nil

			-- remove the tooltip if we're looking at the entity
			if (IsValid(ix.gui.entityInfo)) then
				if (ix.gui.entityInfo:GetEntity() == entity) then
					ix.gui.entityInfo:Remove()
				end
			end

			return
		end

		function entity:OnPopulateEntityInfo(tooltip)
			local panel = tooltip:AddRow("name")
			panel:SetImportant()
			panel:SetText(name)
			panel:SizeToContents()

			if (description != "") then
				panel = tooltip:AddRow("description")
				panel:SetText(description)
				panel:SizeToContents()
			end
		end
	end)
end

do
	local COMMAND = {}
	COMMAND.description = "@cmdObjectSetDesc"
	COMMAND.arguments = {
		bit.bor(ix.type.string, ix.type.optional),
		bit.bor(ix.type.text, ix.type.optional)
	}

	function COMMAND:OnRun(client, name, description)
		local trace = {}
			trace.start = client:GetShootPos()
			trace.endpos = trace.start + client:GetAimVector() * 96
			trace.filter = client
		trace = util.TraceLine(trace)

		local entity = trace.Entity

		if (!IsValid(entity) or entity:GetClass() != "prop_physics") then
			return "@notLookingAtProp"
		end

		if (!CAMI.PlayerHasAccess(client, "Helix - Bypass Prop Protection", nil) and
			entity:GetNetVar("owner", 0) != client:GetCharacter():GetID()) then
			return "@notOwner"
		end

		if (!name or name == "") then
			net.Start("ixObjectPhysDesc")
				net.WriteEntity(entity)
				net.WriteString("")
				net.WriteString("")
			net.Broadcast()

			return "@objectDescRemoved"
		end

		net.Start("ixObjectPhysDesc")
			net.WriteEntity(entity)
			net.WriteString(name:sub(1, PLUGIN.maxNameLength))
			net.WriteString(tostring(description):sub(1, PLUGIN.maxDescriptionLength))
		net.Broadcast()

		return "@objectDescSet"
	end

	ix.command.Add("ObjectSetDesc", COMMAND)
end
