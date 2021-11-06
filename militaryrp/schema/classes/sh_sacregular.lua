CLASS.name = "SAC: Regular personnel"
CLASS.faction = FACTION_SUBORBITALAIRCORPS
CLASS.isDefault = true

function CLASS:OnSpawn(client)
    client:SetMaxHealth(125)
    client:SetHealth(125)
    client:SetArmor(50)
end

CLASS_SACREGULAR = CLASS.index