FACTION.name = "Survivors"
FACTION.description = "Выжившие люди, которые, каким-то чудом, смогли пережить ад на Земле."
FACTION.color = Color(0, 102, 0, 255)
FACTION.isDefault = true
FACTION.isGloballyRecognized = false
FACTION.canSeeWaypoints = true
FACTION.canAddWaypoints = false
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

FACTION.radioChannels = {
	['territorial_channel'] = true,
	['unknown_freq_channel'] = true
}

function FACTION:OnCharacterCreated(client, character)
	local inventory = character:GetInventory()

	inventory:Add("ak47", 1)

end


FACTION_SURVIVORS = FACTION.index