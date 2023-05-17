FACTION.name = "Slavic Pagan Cult"
FACTION.description = "Язычники. Люди, что окончательно потеряли тропу и обрели свой путь..."
FACTION.color = Color(128, 0, 0, 255)
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

FACTION_PAGANS = FACTION.index