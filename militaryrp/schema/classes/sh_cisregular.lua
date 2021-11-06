CLASS.name = "CIS: Regular personnel"
CLASS.faction = FACTION_CORPORATEINTELLIGENCESERVICE
CLASS.isDefault = true

function CLASS:OnSpawn(client)
    client:SetMaxHealth(125)
    client:SetHealth(125)
    client:SetArmor(100)
end

CLASS_CISREGULAR = CLASS.index