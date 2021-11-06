CLASS.name = "SQUADCOM: Deputy chief of Squadron Command"
CLASS.faction = FACTION_SQUADRONCOMMAND
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(150)
    client:SetHealth(150)
    client:SetArmor(150)
end

CLASS_SQUADRONDEPCOM = CLASS.index