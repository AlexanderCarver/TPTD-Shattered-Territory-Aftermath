local Schema = Schema

if (SERVER) then
    hook.Add("PostPlayerLoadout", "HeartbeatSound", function(pl)
        local char = pl:GetCharacter()
        if (IsValid(char)) then
            pl._HeartbeatSound = CreateSound(pl, "ambient/levels/citadel/heartflutters1.wav")
        end
    end)

    hook.Add("Think", "CheckPlayerHealth", function()
        for _, pl in ipairs(player.GetAll()) do
            if (pl:Alive()) then
                local health = pl:Health()
                local maxHealth = pl:GetMaxHealth()

                if (health <= maxHealth * 0.4) then
                    if (not pl._IsBleeding) then
                        pl._HeartbeatSound:Play()
                        pl._IsBleeding = true
                        ix.chat.Send(pl, "me", "выглядит очень бледным.")
                    end
                else
                    if (pl._IsBleeding) then
                        pl._HeartbeatSound:Stop()
                        pl._IsBleeding = false
                    end
                end
            end
        end
    end)
end