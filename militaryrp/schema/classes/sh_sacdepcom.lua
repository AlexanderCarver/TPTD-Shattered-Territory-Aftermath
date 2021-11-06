CLASS.name = "SAC: Deputy commander"
CLASS.faction = FACTION_SUBORBITALAIRCORPS
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(125)
    client:SetHealth(125)
    client:SetArmor(75)
end

CLASS_SACDEPCOM = CLASS.index