FACTION.name = "The Conqueror-8157 SQUADCOM: Spaceship Technical Personnel"
FACTION.description = ""
FACTION.color = Color(107, 142, 35, 255)
FACTION.isDefault = true
FACTION.isGloballyRecognized = true
FACTION.canSeeWaypoints = true

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

FACTION.Ranks = {
    [1] = {"RANK: [R1] | Recruit First Class", nil, CLASS_CITIZEN},
    [2] = {"RANK: [R2] | Recruit Second Class", nil, CLASS_CITIZEN},
	----------------------------------------------------------------------
    [3] = {"RANK: [P1] | Private First Class", nil, CLASS_CITIZEN},
    [4] = {"RANK: [P2] | Private Second Class", nil, CLASS_CITIZEN},
    [5] = {"RANK: [P3] | Private Third Class", nil, CLASS_CITIZEN},
    [6] = {"RANK: [LCP] | Lance Corporal", "icon16/asterisk_orange.png", CLASS_CITIZENDEPCOM, true},
    [7] = {"RANK: [CP] | Corporal", "icon16/asterisk_yellow.png", CLASS_CITIZENCOM, true}
}

FACTION.radioChannels = {
['dtccss_main_channel'] = true,
['dtccss_medical_channel'] = true,
['dtccss_mainstp_channel'] = true
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
FACTION_CITIZEN = FACTION.index
