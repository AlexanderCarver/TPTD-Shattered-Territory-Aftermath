CLASS.name = "STP: Chief of the personnel"
CLASS.faction = FACTION_CITIZEN
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(150)
    client:SetHealth(150)
end

CLASS_CITIZENCOM = CLASS.index