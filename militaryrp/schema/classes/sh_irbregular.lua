CLASS.name = "IRB: Enlisted personnel"
CLASS.faction = FACTION_CORPORATEASSETPROTECTIONSERVICE
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(100)
    client:SetHealth(100)
    client:SetArmor(50)
end

CLASS_IRBREGULAR = CLASS.index