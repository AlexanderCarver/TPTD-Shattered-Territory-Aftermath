CLASS.name = "CAPS: Regular personnel"
CLASS.faction = FACTION_CORPORATEASSETPROTECTIONSERVICE
CLASS.isDefault = true

function CLASS:OnSpawn(client)
    client:SetMaxHealth(175)
    client:SetHealth(175)
    client:SetArmor(125)
end

CLASS_CAPSREGULAR = CLASS.index