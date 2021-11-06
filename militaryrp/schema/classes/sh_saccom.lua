CLASS.name = "SAC: Commander"
CLASS.faction = FACTION_SUBORBITALAIRCORPS
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(125)
    client:SetHealth(125)
    client:SetArmor(75)
end

CLASS_SACCOM = CLASS.index