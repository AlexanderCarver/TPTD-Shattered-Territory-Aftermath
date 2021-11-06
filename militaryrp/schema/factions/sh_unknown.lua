FACTION.name = "Unknown forces"
FACTION.description = ""
FACTION.color = Color(0, 0, 0, 255)
FACTION.isDefault = false
FACTION.models = {
	"models/vj_underhell/snpcs/pmc_soldier.mdl",
	""
}

function FACTION:OnTransfered(client)
	local character = client:GetCharacter()

	character:SetName(self:GetDefaultName())
	character:SetModel(self.models[1])
end

FACTION.radioChannels = {
['enemy'] = true
}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	--inventory:Add("ak47", 1)
end
FACTION_UNKNOWN = FACTION.index