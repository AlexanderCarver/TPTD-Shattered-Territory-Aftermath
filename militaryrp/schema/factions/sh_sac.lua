FACTION.name = "The Conqueror-8157 SQUADCOM SAC: 47th Inferno Group"
FACTION.description = ""
FACTION.color = Color(50, 205, 50, 255)
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
    [1] = {"RANK: [PIL3] | Third Class Pilot", nil, CLASS_SACREGULAR},
    [2] = {"RANK: [TCPIL] | Technical Corporal Pilot", nil, CLASS_SACREGULAR},
    [3] = {"RANK: [STCPIL] | Senior Technical Corporal Pilot", nil, CLASS_SACREGULAR},
	----------------------------------------------------------------------
    [4] = {"RANK: [JPL] | Junior Pilot Lieutenant", nil, CLASS_SACREGULAR},
    [5] = {"RANK: [SPL] | Senior Pilot Lieutenant", "icon16/asterisk_orange.png", CLASS_SACDEPCOM, true},
    [6] = {"RANK: [HQPL] | Staff Pilot Lieutenant", "icon16/asterisk_yellow.png", CLASS_SACCOM, true}
}

FACTION.radioChannels = {
['dtccss_main_channel'] = true,
['dtccss_patrol_channel'] = true,
['dtccss_medical_channel'] = true,
['dtccss_mainsac_channel'] = true,
['dtccss_mainirb_channel'] = true,
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
FACTION_SUBORBITALAIRCORPS = FACTION.index