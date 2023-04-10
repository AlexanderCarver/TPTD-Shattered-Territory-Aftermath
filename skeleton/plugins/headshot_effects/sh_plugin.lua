local PLUGIN = PLUGIN

PLUGIN.name = "Headshot Effects"
PLUGIN.author = "Your Name Here"
PLUGIN.description = "Adds effects when a player is shot in the head."

PLUGIN.headshotSound = "physics/body/body_medium_impact_bullet2.wav"
PLUGIN.headshotTime = 3

if SERVER then
    util.AddNetworkString("vj_hlr_concussion")

    function PLUGIN:EntityTakeDamage(target, dmg)
        if target:IsPlayer() and dmg:IsBulletDamage() then
            local headPos = target:LookupBone("ValveBiped.Bip01_Head1")
            if headPos then
                local hitGroup = util.HitboxHitGroup(target, headPos)
                if hitGroup == HITGROUP_HEAD then
                    target:EmitSound(self.headshotSound)
                    net.Start("vj_hlr_concussion")
                    net.Send(target)

                    timer.Simple(self.headshotTime, function()
                        if IsValid(target) then
                            target:SetDSP(0)
                        end
                    end)

                    target:SetDSP(35, false)
                end
            end
        end
    end
else
    util.AddNetworkString("vj_hlr_concussion")

    net.Receive("vj_hlr_concussion", function()
        LocalPlayer():ScreenFade(SCREENFADE.OUT, Color(255, 255, 255, 255), 0.3, 0)
        timer.Simple(0.3, function()
            if IsValid(LocalPlayer()) then
                LocalPlayer():ScreenFade(SCREENFADE.IN, Color(255, 255, 255, 255), 0.3, 0)
            end
        end)
    end)
end

function PLUGIN:Init()
    if CLIENT then
        timer.Simple(1, function()
            require("util")
        end)
    end
end