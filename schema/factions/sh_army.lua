FACTION.name = "United States Army"
FACTION.description = ""
FACTION.color = Color(136, 136, 68, 255)
FACTION.isDefault = false
FACTION.isGloballyRecognized = false
FACTION.canSeeWaypoints = true
FACTION.canAddWaypoints = false
FACTION.runSounds = {[0] = "NPC_MetroPolice.RunFootstepLeft", [1] = "NPC_MetroPolice.RunFootstepRight"}
FACTION.models = {
    "models/infection/male_01.mdl",
    "models/infection/male_02.mdl",
    "models/infection/male_03.mdl",
    "models/infection/male_04.mdl",
    "models/infection/male_05.mdl",
    "models/infection/male_06.mdl",
    "models/infection/male_07.mdl",
    "models/infection/male_08.mdl",
    "models/infection/male_09.mdl",

	"models/infection/female_01.mdl",
	"models/infection/female_02.mdl",
    "models/infection/female_03.mdl",
    "models/infection/female_04.mdl",
    "models/infection/female_05.mdl",
    "models/infection/female_06.mdl",
    "models/infection/female_07.mdl"
}

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

FACTION.Ranks = {
    [1] = {"RANK: [PVT] | Private", nil, nil},
	----------------------------------------------------------------------
    [2] = {"RANK: [PSC] | Private Second Class", nil, nil},
    [3] = {"RANK: [PFC] | Private First Class", nil, nil},
    [4] = {"RANK: [SPC] | Specialist", nil, nil},
    [5] = {"RANK: [CPL] | Corporal", nil, nil},
	----------------------------------------------------------------------
    [6] = {"RANK: [SGT] | Sergeant", nil, nil},	
    [7] = {"RANK: [SSG] | Staff Sergeant", nil, nil},	
    [8] = {"RANK: [SFC] | Sergeant First Class", nil, nil, true},	
    [9] = {"RANK: [MSG] | Master Sergeant", nil, nil, true},
	----------------------------------------------------------------------	
    [12] = {"RANK: [FSG] | First Sergeant", "icon16/asterisk_orange.png", nil, true},
    [13] = {"RANK: [SGM] | Sergeant Major", "icon16/asterisk_yellow.png", nil, true}
}

FACTION.radioChannels = {
['territorial_channel'] = true,
['unknown_freq_channel'] = true,
['first_channel'] = true,
['patrol_channel'] = true
}
	
function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()
	
	--inventory:Add("cid", 1)

end


FACTION_ARMY = FACTION.index