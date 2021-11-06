CLASS.name = "IRB: Sergeants personnel"
CLASS.faction = FACTION_INFANTRYRECONNAISSANCEBATTALION
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(125)
    client:SetHealth(125)
    client:SetArmor(75)
end

CLASS_IRBSERGEANT = CLASS.index