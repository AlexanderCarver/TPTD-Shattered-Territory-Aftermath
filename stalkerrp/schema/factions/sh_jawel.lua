FACTION.name = "Special Group 'Jawel'"
FACTION.description = "Нелегалы и все те, кто проник на запретную территорию. Не стоит обращать на них серьезное внимание."
FACTION.color = Color(0, 102, 0, 255)
FACTION.isDefault = true
FACTION.isGloballyRecognized = false
FACTION.canSeeWaypoints = true
FACTION.canAddWaypoints = false
FACTION.models = {
    "models/humans/rajio/female_01.mdl",
    "models/humans/rajio/female_02.mdl",
    "models/humans/rajio/female_03.mdl",
    "models/humans/rajio/female_04.mdl",
    "models/humans/rajio/female_05.mdl",
    "models/humans/rajio/female_06.mdl",
    "models/humans/rajio/female_07.mdl",
    "models/humans/rajio/female_08.mdl",
    "models/humans/rajio/female_09.mdl",
    "models/humans/rajio/female_10.mdl",
    "models/humans/rajio/female_11.mdl",
    "models/humans/rajio/female_12.mdl",
    "models/humans/rajio/female_13.mdl",
    "models/humans/rajio/female_14.mdl",
    "models/humans/rajio/female_15.mdl",
    "models/humans/rajio/female_16.mdl",
    "models/humans/rajio/female_17.mdl",
    "models/humans/rajio/female_18.mdl",
    "models/humans/rajio/female_19.mdl",
    "models/humans/rajio/female_20.mdl",
    "models/humans/rajio/female_21.mdl",
    ------------------------------------
    "models/humans/rajio/male_01.mdl",
    "models/humans/rajio/male_02.mdl",
    "models/humans/rajio/male_03.mdl",
    "models/humans/rajio/male_04.mdl",
    "models/humans/rajio/male_05.mdl",
    "models/humans/rajio/male_06.mdl",
    "models/humans/rajio/male_07.mdl",
    "models/humans/rajio/male_08.mdl",
    "models/humans/rajio/male_09.mdl",
    "models/humans/rajio/male_10.mdl",
    "models/humans/rajio/male_11.mdl",
    "models/humans/rajio/male_12.mdl",
    "models/humans/rajio/male_13.mdl",
    "models/humans/rajio/male_14.mdl",
    "models/humans/rajio/male_15.mdl",
    "models/humans/rajio/male_16.mdl",
    "models/humans/rajio/male_18.mdl",
    "models/humans/rajio/male_19.mdl",
    "models/humans/rajio/male_20.mdl",
    "models/humans/rajio/male_21.mdl",
    "models/humans/rajio/male_22.mdl",
    "models/humans/rajio/male_23.mdl",
    "models/humans/rajio/male_26.mdl"
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


FACTION_JAWEL = FACTION.index
