CLASS.name = "Stalker"
CLASS.faction = FACTION_STALKERS
CLASS.isDefault = true

function CLASS:OnSpawn(client)
    client:SetMaxHealth(100)
    client:SetHealth(100)
end


CLASS_STALKERDEFAULT = CLASS.index