FACTION.name = "ВВ МВД РФ"
FACTION.description = "Правительственные силы, которые поддерживают контроль государства над этой неуправляемой зоной."
FACTION.color = Color(25, 115, 0, 255)
FACTION.isDefault = false
FACTION.isGloballyRecognized = false
FACTION.models = {
    "models/Eli.mdl",
    "models/monk.mdl"
}

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()
	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	--inventory:Add("ak47", 1)

end


FACTION_ARMY = FACTION.index