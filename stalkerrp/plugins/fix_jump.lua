PLUGIN.name = "Fix Jump"
PLUGIN.author = "Bilwin"
PLUGIN.desc = "Fix Jump"

if (SERVER) then
    function PLUGIN:KeyPress(ply, key)
        if ply:GetMoveType() == 8 then
            return
        end
        if (key == IN_JUMP) then
            if (!ply.JumpCDForFix or CurTime() > ply.JumpCDForFix) then
                if (ply:GetLocalVar("stm", 0) >= 20) then
                    ply:ConsumeStamina(20)
                    ply.JumpCDForFix = CurTime() + 0.5
                else
                    ply:SetVelocity(Vector(0, 0, -ply:GetJumpPower()))
                end
            end
        end
    end
end

