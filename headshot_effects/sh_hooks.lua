if SERVER then
    function PLUGIN:EntityTakeDamage(target, dmg)
        if target:IsPlayer() and dmg:IsBulletDamage() then
            local hitGroup = dmg:GetDamageType() == DMG_BULLET and target:TranslateHitbox(headPos) or nil            if headPos then
                local hitgroup = target:HitGroupHitBox(headPos)
                if hitgroup == HITGROUP_HEAD then
                    target:ScreenFade(SCREENFADE.OUT, Color(255, 255, 255, 255), 0.3, 0.5)
                    timer.Simple(0.3, function()
                        if IsValid(target) then
                            target:ScreenFade(SCREENFADE.IN, Color(255, 255, 255, 255), 0.3, 0.5)
                        end
                    end)
                    target:SetEyeAngles(Angle(math.random(-5,5), math.random(-5,5), 0))
                    sound.Play("path/to/breath.wav", target:GetPos(), 75, math.random(90, 110), 1)
                end
            end
        end
    end
end