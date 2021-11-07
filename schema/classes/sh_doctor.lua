CLASS.name = "STP: Regular personnel"
CLASS.faction = FACTION_CITIZEN
CLASS.isDefault = true

function CLASS:OnSpawn(client)
    client:SetMaxHealth(100)
    client:SetHealth(100)
end

CLASS_CITIZEN = CLASS.index