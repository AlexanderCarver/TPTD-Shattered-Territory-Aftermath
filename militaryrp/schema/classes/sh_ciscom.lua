CLASS.name = "CIS: Commander"
CLASS.faction = FACTION_CORPORATEINTELLIGENCESERVICE
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(150)
    client:SetHealth(150)
    client:SetArmor(100)
end

CLASS_CISCOM = CLASS.index