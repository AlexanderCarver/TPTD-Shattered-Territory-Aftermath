CLASS.name = "CAPS: Commander"
CLASS.faction = FACTION_CORPORATEASSETPROTECTIONSERVICE
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(225)
    client:SetHealth(225)
    client:SetArmor(150)
end

CLASS_CAPSCOM = CLASS.index