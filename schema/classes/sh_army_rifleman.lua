CLASS.name = "Rifleman"
CLASS.faction = FACTION_ARMY
CLASS.isDefault = true

function CLASS:OnSpawn(client)
    client:SetMaxHealth(150)
    client:SetHealth(150)
end


CLASS_ARMYRIFLEMAN = CLASS.index