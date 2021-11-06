FACTION.name = "DTC The Conqueror-8157 Spaceship Intelligent Systems"
FACTION.description = ""
FACTION.color = Color(153, 0, 0, 255)
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.canSeeWaypoints = true
FACTION.canAddWaypoints = true
FACTION.models = {
	"models/icarus_anon.mdl"
}

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

FACTION.radioChannels = {
['dtccss_main_channel'] = true,
['dtccss_patrol_channel'] = true,
['dtccss_medical_channel'] = true,
['nova_channel'] = true,
['dtccss_mainsquad_channel'] = true,
['dtccss_officersquad_channel'] = true,
['dtccss_maincis_channel'] = true,
['dtccss_officercis_channel'] = true,
['dtccss_mainsac_channel'] = true,
['dtccss_officersac_channel'] = true,
['dtccss_mainirb_channel'] = true,
['dtccss_officerirb_channel'] = true,
['dtccss_mainstp_channel'] = true,
['dtccss_officerstp_channel'] = true
}

function FACTION:GetDefaultName(client)
	return "HICS-" .. Schema:ZeroNumber(math.random(1, 999), 3), true
end

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 9999), 4)
	local inventory = character:GetInventory()
	character:SetData("cid", id)
	
	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end
FACTION_SYSTEMS = FACTION.index