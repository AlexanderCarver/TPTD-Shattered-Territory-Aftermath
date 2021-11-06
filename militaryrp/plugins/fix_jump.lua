--[[
MIT LICENSE
Copyright © 2020 Alexander Kravchenko

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), 
to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, 
and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, 
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, 
WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
--]]
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

