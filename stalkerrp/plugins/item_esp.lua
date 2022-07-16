local PLUGIN = PLUGIN

PLUGIN.name = "Item ESP"
PLUGIN.author = "Bilwin"
PLUGIN.description = "Находим дыры"

if CLIENT then
    ix.option.Add("observerItemESP", ix.type.bool, true, {
        category = "observer",

        hidden = function()
            return !CAMI.PlayerHasAccess(LocalPlayer(), "Helix - Observer", nil)
        end
    })

    ix.option.Add("fakePropsID", ix.type.bool, false, {

        category = "observer",

        hidden = function()

            return !CAMI.PlayerHasAccess(LocalPlayer(), "Helix - Observer", nil)

        end

    })



    ix.option.Add("ShowPermaProps", ix.type.bool, false, {

        category = "observer",

        hidden = function()

            return !CAMI.PlayerHasAccess(LocalPlayer(), "Helix - Observer", nil)

        end

    })

    function PLUGIN:PostDrawOpaqueRenderables()

        local client = LocalPlayer()

        if (ix.option.Get("observerESP", true) and client:GetMoveType() == MOVETYPE_NOCLIP and !client:InVehicle() and CAMI.PlayerHasAccess(client, "Helix - Observer", nil)) then

            if (ix.option.Get("observerItemESP", true)) then

                for k, v in pairs(ents.GetAll()) do

                    if v:GetClass() == 'ix_item' then

                        local color = v:GetPos():Distance(LocalPlayer():GetPos()) <= 96 and Color(0, 255, 0) or Color(255, 0, 0)

                        local entity = v

                        local mins, maxs = entity:GetRenderBounds()

                        local scale = 1

                        render.DrawWireframeBox(entity:GetPos(), entity:GetAngles(), mins * scale, maxs * scale, color)

                    elseif v:GetClass() == 'ix_vendor' then

                        local entity = v

                        local mins, maxs = entity:GetRenderBounds()

                        local scale = 1

                        render.DrawWireframeBox(entity:GetPos(), entity:GetAngles(), mins * scale, maxs * scale, Color(70, 130, 180))

                    elseif v:GetClass() == 'class C_PhysPropClientside' then

                        if (ix.option.Get("fakePropsID", true)) then

                            local color = Color(0,255,0)

                            local entity = v

                            local mins, maxs = v:GetRenderBounds()

                            local scale = 1

                            render.DrawWireframeBox(v:GetPos(), v:GetAngles(), mins * scale, maxs * scale, color)

                        end

                     elseif v:GetClass() == "prop_dynamic" then

                        if (ix.option.Get("ShowPermaProps", true)) then

                            local color = Color(255,0,0)

                            local entity = v

                            local mins, maxs = v:GetRenderBounds()

                            local scale = 1

                            render.DrawWireframeBox(v:GetPos(), v:GetAngles(), mins * scale, maxs * scale, color)

                        end

                    end

                end

            end

        end

    end



    function PLUGIN:HUDPaint()

        local client = LocalPlayer()

        if (ix.option.Get("observerESP", true) and client:GetMoveType() == MOVETYPE_NOCLIP and !client:InVehicle() and CAMI.PlayerHasAccess(client, "Helix - Observer", nil)) then

            if (ix.option.Get("observerItemESP", true)) then

                for k, v in pairs(ents.GetAll()) do

                    if v:GetClass() == 'ix_item' then

                        --if v:GetPos():Distance(LocalPlayer():GetPos()) <= 200 then

                            local pos = v:GetPos():ToScreen()

                

                            local data = v:GetItemTable()

                

                            if data then

                                draw.SimpleText(data:GetName(), 'DermaDefaultBold', pos.x , pos.y, Color(255, 255, 255), TEXT_ALIGN_CENTER)

                            end

                        --end

                    elseif v:GetClass() == 'ix_vendor' then

                        local pos = v:GetPos():ToScreen()

                        local name = v:GetDisplayName()



                        if name then

                            draw.SimpleText(name, 'DermaDefaultBold', pos.x , pos.y, Color(255, 255, 255), TEXT_ALIGN_CENTER)

                        end

                    elseif v:GetClass() == 'class C_PhysPropClientside' then

                        local pos = v:GetPos():ToScreen()

                        local name = v.SetFakePropsID



                        if name then

                            if (ix.option.Get("fakePropsID", true)) then

                                draw.SimpleText(name, 'DermaDefaultBold', pos.x , pos.y, Color(255, 255, 255), TEXT_ALIGN_CENTER)

                            end

                        end

                    end

                end

            end

        end

    end

end

