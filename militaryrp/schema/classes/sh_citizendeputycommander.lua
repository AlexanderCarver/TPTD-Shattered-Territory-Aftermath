CLASS.name = "STP: Deputy chief of the personnel"
CLASS.faction = FACTION_CITIZEN
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(125)
    client:SetHealth(125)
end

CLASS_CITIZENDEPCOM = CLASS.index