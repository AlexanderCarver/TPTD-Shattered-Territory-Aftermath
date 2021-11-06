CLASS.name = "SQUADCOM: Main chief of Squadron Command"
CLASS.faction = FACTION_SQUADRONCOMMAND
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(150)
    client:SetHealth(150)
    client:SetArmor(150)
end

CLASS_SQUADRONCOM = CLASS.index