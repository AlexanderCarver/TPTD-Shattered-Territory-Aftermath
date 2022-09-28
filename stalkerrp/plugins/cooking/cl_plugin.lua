local function FormatTime(seconds, format)
    if seconds == nil then seconds = 0 end

    local minutes = math.floor((seconds / 60) % 60)
    seconds = math.Round(seconds % 60)

    if minutes < 10 then minutes = "0".. minutes end
    if seconds < 10 then seconds = "0".. seconds end

    return string.format(format or "%s:%s", minutes, seconds)
end

local white = Color(255, 255, 255)
local red = Color(192, 57, 43)
local green = Color(46, 204, 113)

local cooking_time = 0
local HAS_COOKING = false
local IsSuccess = false

net.Receive("CookingMod/IsSuccess", function()
    IsSuccess = net.ReadBool()
end)

local function LOCKPANEL(prnt)
    LOCKED = prnt:Add("DPanel")
    LOCKED:SetSize(prnt:GetSize())
    LOCKED.Paint = function(s,w,h)
        ix.util.DrawBlur(s, 5)
        surface.SetDrawColor(194, 97, 56, 150)
        surface.DrawRect(0, 0, w, h)

        draw.SimpleText("Будет готово через: ".. FormatTime(cooking_time - SysTime()), "DermaLarge", w * 0.5, h * 0.5, white, TEXT_ALIGN_CENTER, TEXT_ALIGN_CENTER)
    end
    LOCKED:SetAlpha(0)
    LOCKED:AlphaTo(255, 0.35, 0,function()
        timer.Simple(cooking_time - SysTime() - 0.35, function()
            if not IsValid(LOCKED) then
                timer.Simple(0.35, function()
                    HAS_COOKING = false
                    PNL_LOCKED = nil

                    chat.AddText(IsSuccess and green or red, IsSuccess and "Вы приготовили " or "Вы сожгли ", white, RecipeResult, "!")
                end)

                return
            end

            LOCKED:AlphaTo(0, 0.35, 0, function()
                HAS_COOKING = false
                PNL_LOCKED = nil
                if not LOCKED then return end
                LOCKED:Remove()

                chat.AddText(IsSuccess and green or red, IsSuccess and "Вы приготовили " or "Вы сожгли ", white, RecipeResult, "!")
            end)
        end)
    end)
end

function COOKPNL()
    local ent = net.ReadEntity()
    local RECIPES = {}

    local GFRAME = vgui.Create("DFrame")
    GFRAME:SetSize(ScrW() * 0.5, ScrH() * 0.5)
    GFRAME:MakePopup()
    GFRAME:Center()
    GFRAME:SetTitle("Готовка")
    GFRAME.Paint = function(panel,w,h)
        if (!panel.bNoBackgroundBlur) then
            ix.util.DrawBlur(panel, 3)
        end
    
        surface.SetDrawColor(30, 30, 30, 150)
        surface.DrawRect(0, 0, panel:GetWide(), panel:GetTall())
    
        if (panel:GetTitle() != "" or panel.btnClose:IsVisible()) then
            surface.SetDrawColor(194, 97, 56, 255)
            surface.DrawRect(0, 0, panel:GetWide(), 24)
    
            if (panel.bHighlighted) then
                self:DrawImportantBackground(0, 0, panel:GetWide(), 24, ColorAlpha(color_white, 22))
            end
        end
    
        surface.SetDrawColor(194, 97, 56, 255)
        surface.DrawOutlinedRect(0, 0, panel:GetWide(), panel:GetTall())
    end

    local RECIPELIST = GFRAME:Add("DPanel")
    RECIPELIST:Dock(LEFT)
    RECIPELIST:SetWide(300)
    RECIPELIST.Paint = function(s,w,h)
        surface.SetDrawColor(194, 97, 56, 255)
        surface.DrawOutlinedRect(0, 0, w, h)
    end
    
    local CAT = RECIPELIST:Add("DLabel")
    CAT:SetText("Рецепты готовки")
    CAT:Dock(TOP)
    CAT:SetContentAlignment(5)
    
    local RECIPE_INFO = RECIPELIST:Add("DPanel")
    RECIPE_INFO:Dock(TOP)
    RECIPE_INFO:DockMargin(5, 5, 5, 0)
    RECIPE_INFO:SetTall(0)

    local PR_MDL
    
    local function AddRecipe(text,item_uid)
        local RECIPE = RECIPELIST:Add("DButton")
        RECIPE:Dock(TOP)
        RECIPE:DockMargin(5, 5, 5, 0)
        RECIPE:SetText(text)
        RECIPE.uid = item_uid
        RECIPE.txt = text
        RECIPE.Paint = function(s,w,h)
            surface.SetDrawColor(194, 97, 56, 255)
            surface.DrawOutlinedRect(0, 0, w, h)
            if !s:IsHovered() then
                surface.SetDrawColor(0, 0, 0, 150)
            else
                surface.SetDrawColor(194, 97, 56, 255)
            end
            if Active == s then
                surface.SetDrawColor(194, 97, 56, 255)
            end
            surface.DrawRect(0, 0, w, h)
        end
        RECIPE.DoClick = function(this)
            if RECIPE_INFO:GetTall() == 70 then 
                RECIPE_INFO:SetTall(0) 
                for k,v in pairs(RECIPES) do 
                    v:SetText(text) 
                    Active = nil 
                end
                this.RECIPENAME:Remove()
                this.RECIPERESULT:Remove()
                this.RECIPEDELAY:Remove()
                this.CONFIRM_COOK:Remove()
                PR_MDL:SetModel("models/props_c17/metalPot002a.mdl")
                return false 
            end

            Active = this
            active_uid = this.uid
            active_text = this.txt

            print(this.uid,this.txt)

            this:SetText("> ".. text)

            RECIPE_INFO:SetTall(95)
            RECIPE_INFO.Paint = function(s,w,h)
                surface.SetDrawColor(194, 97, 56, 150)
                surface.DrawRect(0, 0, w, h)
            end

            this.RECIPENAME = RECIPE_INFO:Add("DLabel")
            this.RECIPENAME:SetText("Вы приготовите: "..active_text)
            this.RECIPENAME:Dock(TOP)
            this.RECIPENAME:SetContentAlignment(5)

            local cooking_result = ix.item.list[ix.item.list[active_uid].CookResult]

            this.RECIPERESULT = RECIPE_INFO:Add("DLabel")
            this.RECIPERESULT:SetText("Вы получите: "..cooking_result.name)
            this.RECIPERESULT:Dock(TOP)
            this.RECIPERESULT:SetContentAlignment(5)

            this.RECIPEDELAY = RECIPE_INFO:Add("DLabel")
            this.RECIPEDELAY:SetText("Время готовки: ".. FormatTime(cooking_result.cooking_time or 5))
            this.RECIPEDELAY:Dock(TOP)
            this.RECIPEDELAY:SetContentAlignment(5)

            this.CONFIRM_COOK = RECIPE_INFO:Add("DButton")
            this.CONFIRM_COOK:SetText("Приготовить "..active_text)
            this.CONFIRM_COOK:Dock(FILL)
            this.CONFIRM_COOK:DockMargin(5, 5, 5, 5)
            this.CONFIRM_COOK.DoClick = function()
                cooking_time = SysTime() + (cooking_result.cooking_time or 5)
                RecipeResult = cooking_result.name

                HAS_COOKING = true
                netstream.Start("Cook",active_uid)
                RECIPE_INFO:SetTall(0)
                this.RECIPENAME:Remove()
                this.RECIPERESULT:Remove()
                this.RECIPEDELAY:Remove()
                this.CONFIRM_COOK:Remove()
                for k,v in pairs(RECIPES) do
                   if v == this then
                    v:Remove()
                   end
                end
                PR_MDL:SetModel("models/props_c17/metalPot002a.mdl")
            end
            PR_MDL:SetModel(ix.item.list[active_uid].model)
        end
    
        RECIPES[#RECIPES + 1] = RECIPE
    end
    
    function RegisterRecipes()
        for k,v in pairs(LocalPlayer():GetCharacter():GetInventory():GetItems()) do
            if v.HasCookable then
                AddRecipe(v.name,v.uniqueID)
            end
        end
    end
    
    RegisterRecipes()
    
    local PREVIEW = GFRAME:Add("DPanel")
    PREVIEW:Dock(FILL)
    PREVIEW.Paint = function(s,w,h)
        surface.SetDrawColor(194, 97, 56, 255)
        surface.SetTexture(surface.GetTextureID("vgui/gradient-d"))
        surface.DrawTexturedRect(0, 0, w, h)
    
        surface.DrawOutlinedRect(0, 0, w, h)
    end
    
    PR_MDL = PREVIEW:Add("DAdjustableModelPanel")
    PR_MDL:Dock(FILL)
    PR_MDL:SetModel("models/props_c17/metalPot002a.mdl")
    PR_MDL:SetLookAng( Angle( 50, 30, -30 ) )
    PR_MDL:SetCamPos( Vector( -43, -26, 60 ) )
    PR_MDL:SetFOV(20)
    function PR_MDL:LayoutEntity(ent) end

    local function check()
        if IsValid(GFRAME) then
            if HAS_COOKING or cooking_time > SysTime() then
                if !PNL_LOCKED then
                    LOCKPANEL(GFRAME)
                    PNL_LOCKED = true
                end
            end
        else
            timer.Remove("CHECKFORLOCK")
        end
    end

    check()
    timer.Create("CHECKFORLOCK", 0.1, 0, check)
end

net.Receive("CookingMod/OpenMenu", COOKPNL)