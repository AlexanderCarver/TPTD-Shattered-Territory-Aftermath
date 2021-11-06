CLASS.name = "IRB: Recruits personnel"
CLASS.faction = FACTION_INFANTRYRECONNAISSANCEBATTALION
CLASS.isDefault = true

function CLASS:OnSpawn(client)
    client:SetMaxHealth(100)
    client:SetHealth(100)
    client:SetArmor(25)
end

CLASS_IRBRECRUITS = CLASS.index