FACTION.name = "Black Market Merchants"
FACTION.description = "Люди с чёрного рынка. Серьёзные люди... Хорошо вооруженные, имеющие связи в государственных структурах и среди местных. Опасные люди."
FACTION.color = Color(112,128,144, 255)
FACTION.isDefault = false
FACTION.isGloballyRecognized = false
FACTION.models = {
    "models/half-dead/metroll/a1b1.mdl",
    "models/half-dead/metroll/a2b1.mdl"
}

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()
	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

/*
function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	--inventory:Add("ak47", 1)

end
*/

FACTION_BLACKMARKET = FACTION.index