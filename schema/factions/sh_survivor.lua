FACTION.name = "Survivors"
FACTION.description = "Выжившие люди, которые, каким-то чудом, смогли пережить ад на Земле."
FACTION.color = Color(0, 102, 0, 255)
FACTION.isDefault = true
FACTION.isGloballyRecognized = false
FACTION.canSeeWaypoints = true
FACTION.canAddWaypoints = false

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

FACTION.radioChannels = {
	['territorial_channel'] = true,
	['unknown_freq_channel'] = true
}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("ak47", 1)

end


FACTION_SURVIVORS = FACTION.index