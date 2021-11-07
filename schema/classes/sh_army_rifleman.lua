CLASS.name = "Rifleman"
CLASS.faction = FACTION_ARMY
CLASS.isDefault = false

function CLASS:OnSpawn(client)
    client:SetMaxHealth(100)
    client:SetHealth(100)
end

CLASS_ARMYRIFLEMAN = CLASS.index