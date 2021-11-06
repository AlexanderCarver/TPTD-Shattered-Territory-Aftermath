FACTION.name = "DTC Novus-1512 CAPS: 12th Operative Group"
FACTION.description = ""
FACTION.color = Color(51, 51, 153, 255)
FACTION.isDefault = false
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
    [1] = {"RANK: [HP] | Hauptmann", nil, CLASS_CAPSREGULAR},	
    [2] = {"RANK: [HQHP] | HQ Hauptmann", nil, CLASS_CAPSREGULAR},
    [3] = {"RANK: [CA] | Captain", nil, CLASS_CAPSREGULAR},
	----------------------------------------------------------------------
    [4] = {"RANK: [MA] | Major", nil, CLASS_CAPSREGULAR},
	[5] = {"RANK: [HQMA] | HQ Major", nil, CLASS_CAPSREGULAR, true},
	----------------------------------------------------------------------
    [6] = {"RANK: [HQCO] | Colonel", "icon16/asterisk_orange.png", CLASS_CAPSDEPCOM, true},
    [7] = {"RANK: [HQSCO] | Senior Colonel", "icon16/asterisk_yellow.png", CLASS_CAPSCOM, true}
}

FACTION.radioChannels = {
['dtccss_main_channel'] = true,
['dtccss_patrol_channel'] = true,
['dtccss_medical_channel'] = true,
['nova_channel'] = true,
['dtccss_maincaps_channel'] = true,
['dtccss_mainarm_channel'] = true,
['dtccss_officerarm_channel'] = true,
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

function FACTION:OnCharacterCreated(client, character)
	local id = Schema:ZeroNumber(math.random(1, 9999), 4)
	local inventory = character:GetInventory()
	character:SetData("cid", id)

	inventory:Add("cid", 1, {
		name = character:GetName(),
		id = id
	})
end
FACTION_CORPORATEASSETPROTECTIONSERVICE = FACTION.index