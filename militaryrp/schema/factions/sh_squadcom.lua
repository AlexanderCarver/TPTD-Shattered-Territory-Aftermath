FACTION.name = "DTC The Conqueror-8157 Squadron Command"
FACTION.description = ""
FACTION.color = Color(0, 128, 0, 255)
FACTION.isDefault = false
FACTION.isGloballyRecognized = true
FACTION.canSeeWaypoints = true
FACTION.canAddWaypoints = true
FACTION.models = {
	"models/pointofcontact/mobileinfantry/offduty/female_01.mdl",
	"models/pointofcontact/mobileinfantry/offduty/female_02.mdl",
	"models/pointofcontact/mobileinfantry/offduty/female_03.mdl",
	"models/pointofcontact/mobileinfantry/offduty/female_04.mdl",
	"models/pointofcontact/mobileinfantry/offduty/male_01.mdl",
	"models/pointofcontact/mobileinfantry/offduty/male_02.mdl",
	"models/pointofcontact/mobileinfantry/offduty/male_03.mdl",
	"models/pointofcontact/mobileinfantry/offduty/male_04.mdl",
	"models/pointofcontact/mobileinfantry/offduty/male_05.mdl",
	"models/pointofcontact/mobileinfantry/offduty/male_06.mdl",
	"models/pointofcontact/mobileinfantry/offduty/male_07.mdl",
	"models/pointofcontact/mobileinfantry/offduty/male_08.mdl",
	"models/pointofcontact/mobileinfantry/offduty/male_09.mdl"
}

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

FACTION.Ranks = {
    [1] = {"RANK: [L1] | Ensign", nil, CLASS_SQUADRONREGULAR},
    [2] = {"RANK: [L2] | Lieutenant", nil, CLASS_SQUADRONREGULAR},
    [3] = {"RANK: [ML] | Master Lieutenant", nil, CLASS_SQUADRONREGULAR},
	----------------------------------------------------------------------
	[4] = {"RANK: [HQL] HQ Lieutenant", "icon16/asterisk_orange.png", CLASS_SQUADRONDEPCOM, true},
	[5] = {"RANK: [HP] Hauptmann", "icon16/asterisk_yellow.png", CLASS_SQUADRONCOM, true}
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