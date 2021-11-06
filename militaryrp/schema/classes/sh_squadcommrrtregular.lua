CLASS.name = "SQUADCOM MRRT: Regular personnel of the MRRT"
CLASS.faction = FACTION_SQUADRONCOMMANDMRRT
CLASS.isDefault = true

function CLASS:OnSpawn(client)
    client:SetMaxHealth(125)
    client:SetHealth(125)
    client:SetArmor(100)
end

CLASS_SQUADRONMRRTREGULAR = CLASS.index