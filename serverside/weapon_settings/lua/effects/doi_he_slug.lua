function EFFECT:Init(data)
    local pos = data:GetOrigin()
    local ang = data:GetAngles()

    ParticleEffect("m79_flash_b", pos, ang, nil)
    ParticleEffect("muzzleflash_M3", pos, ang, nil)
end


function EFFECT:Think()
    return false
end

function EFFECT:Render()
    return false
end

function EFFECT:DrawTranslucent()
    return false
end
