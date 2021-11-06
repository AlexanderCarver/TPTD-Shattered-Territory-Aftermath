FACTION.name = "The Conqueror-8157 SQUADCOM: 292th Infantry Reconnaissance Battalion"
FACTION.description = ""
FACTION.color = Color(51, 51, 0, 255)
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
    [1] = {"RANK: [R1] | Recruit First Class", nil, CLASS_IRBRECRUITS},
    [2] = {"RANK: [R2] | Recruit Second Class", nil, CLASS_IRBRECRUITS},
	----------------------------------------------------------------------
    [3] = {"RANK: [P1] | Private First Class", nil, CLASS_IRBREGULAR},
    [4] = {"RANK: [P2] | Private Second Class", nil, CLASS_IRBREGULAR},
    [5] = {"RANK: [P3] | Private Third Class", nil, CLASS_IRBREGULAR},
    [6] = {"RANK: [LCP] | Lance Corporal", nil, CLASS_IRBREGULAR},	
    [7] = {"RANK: [CP] | Corporal", nil, CLASS_IRBREGULAR},	
	----------------------------------------------------------------------
    [8] = {"RANK: [S2] | Sergeant", nil, CLASS_IRBSERGEANT},	
    [9] = {"RANK: [HQS] | Staff Sergeant", nil, CLASS_IRBSERGEANT},	
    [10] = {"RANK: [HQSS] | Senior Sergeant", nil, CLASS_IRBSERGEANT, true},
    [11] = {"RANK: [HQPS] | Platoon Sergeant", nil, CLASS_IRBSERGEANT, true},
	----------------------------------------------------------------------
    [12] = {"RANK: [L1] | Ensign", "icon16/asterisk_orange.png", CLASS_IRBDEPCOM, true},
    [13] = {"RANK: [L2] | Lieutenant", "icon16/asterisk_yellow.png", CLASS_IRBCOM, true}
}

FACTION.radioChannels = {
['dtccss_main_channel'] = true,
['dtccss_patrol_channel'] = true,
['dtccss_medical_channel'] = true,
['dtccss_mainirb_channel'] = true
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
FACTION_INFANTRYRECONNAISSANCEBATTALION = FACTION.index

