FACTION.name = "Диггеры"
FACTION.description = "Нелегалы и все те, кто проник на запретную территорию. Не стоит обращать на них серьезное внимание."
FACTION.color = Color(0, 102, 0, 255)
FACTION.isDefault = true
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

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	--inventory:Add("ak47", 1)

end


FACTION_DIGGERS = FACTION.index
