CLASS.name = "SQUADCOM MRRT: Deputy medical team chief of MRRT"
CLASS.faction = FACTION_SQUADRONCOMMANDMRRT
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(150)
    client:SetHealth(150)
    client:SetArmor(125)
end

CLASS_SQUADRONMRRTDEPCOM = CLASS.index