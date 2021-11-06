CLASS.name = "SQUADCOM ICDC: Regular personnel of the ICDC"
CLASS.faction = FACTION_SQUADRONCOMMANDICDC
CLASS.isDefault = true

function CLASS:OnSpawn(client)
    client:SetMaxHealth(125)
    client:SetHealth(125)
    client:SetArmor(100)
end

CLASS_SQUADRONICDCREGULAR = CLASS.index