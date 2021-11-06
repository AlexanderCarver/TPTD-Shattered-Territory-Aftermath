CLASS.name = "SQUADCOM ICDC: Chief commandant of ICDC"
CLASS.faction = FACTION_SQUADRONCOMMANDICDC
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(150)
    client:SetHealth(150)
    client:SetArmor(125)
end

CLASS_SQUADRONICDCCOM = CLASS.index