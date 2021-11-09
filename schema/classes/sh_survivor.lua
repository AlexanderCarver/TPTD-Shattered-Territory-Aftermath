CLASS.name = "Survivor"
CLASS.faction = FACTION_SURVIVORS
CLASS.isDefault = true

function CLASS:OnSpawn(client)
    client:SetMaxHealth(100)
    client:SetHealth(100)
end


CLASS_SURVIVOR = CLASS.index