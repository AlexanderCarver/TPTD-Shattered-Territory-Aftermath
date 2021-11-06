CLASS.name = "SQUADCOM: Regular personnel"
CLASS.faction = FACTION_SQUADRONCOMMAND
CLASS.isDefault = true

function CLASS:OnSpawn(client)
    client:SetMaxHealth(125)
    client:SetHealth(125)
    client:SetArmor(100)
end

CLASS_SQUADRONREGULAR = CLASS.index