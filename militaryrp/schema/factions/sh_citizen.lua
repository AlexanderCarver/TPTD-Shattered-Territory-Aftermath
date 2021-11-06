FACTION.name = "Underground Survivors"
FACTION.description = "Выжившие люди, которые, каким-то чудом, смогли пережить ад на Земле."
FACTION.color = Color(0, 102, 0, 255)
FACTION.isDefault = true
FACTION.isGloballyRecognized = false
FACTION.canSeeWaypoints = false

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

FACTION.radioChannels = {
['dtccss_main_channel'] = true,
['dtccss_medical_channel'] = true,
['dtccss_mainstp_channel'] = true
}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("ak47", 1)

end

FACTION_CITIZEN = FACTION.index