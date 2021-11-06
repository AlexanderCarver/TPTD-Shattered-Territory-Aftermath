FACTION.name = "Special Weapons And Tactics (SWAT)"
FACTION.description = "Горстка выживших членов полицейского департамента, которая борется за свою жизнь."
FACTION.color = Color(0, 51, 153, 255)
FACTION.isDefault = false
FACTION.isGloballyRecognized = false
FACTION.canSeeWaypoints = true
FACTION.canAddWaypoints = false
FACTION.runSounds = {[0] = "NPC_MetroPolice.RunFootstepLeft", [1] = "NPC_MetroPolice.RunFootstepRight"}
FACTION.models = {
	"models/pointofcontact/mobileinfantry/offduty/female_01.mdl",
	""
}

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

FACTION.Ranks = {
    [1] = {"Шевроны: Police Officer", nil, CLASS_SQUADRONREGULAR},
    [2] = {"Шевроны: Police Sergeant", nil, CLASS_SQUADRONREGULAR},
	----------------------------------------------------------------------
	[3] = {"Шевроны: Police Lieutenant", "icon16/asterisk_orange.png", CLASS_SQUADRONDEPCOM, true},
	[4] = {"Шевроны: Police Captain", "icon16/asterisk_yellow.png", CLASS_SQUADRONCOM, true}
}

FACTION.radioChannels = {
['dtccss_main_channel'] = true,
['dtccss_patrol_channel'] = true,
['dtccss_medical_channel'] = true,
['nova_channel'] = true,
['dtccss_mainsquad_channel'] = true,
['dtccss_maincis_channel'] = true,
['dtccss_officercis_channel'] = true,
['dtccss_mainsac_channel'] = true,
['dtccss_officersac_channel'] = true,
['dtccss_mainirb_channel'] = true,
['dtccss_officerirb_channel'] = true,
['dtccss_mainstp_channel'] = true,
['dtccss_officerstp_channel'] = true
}

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 9999), 4)
	local inventory = character:GetInventory()
	character:SetData("cid", id)
	
	inventory:Add("request_device", 1)	
	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end
FACTION_SQUADRONCOMMAND = FACTION.index