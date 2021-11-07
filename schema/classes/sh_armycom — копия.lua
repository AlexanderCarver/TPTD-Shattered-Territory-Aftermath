CLASS.name = "IRB: Commander"
CLASS.faction = FACTION_INFANTRYRECONNAISSANCEBATTALION
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(150)
    client:SetHealth(150)
    client:SetArmor(100)
end

CLASS_IRBCOM = CLASS.index