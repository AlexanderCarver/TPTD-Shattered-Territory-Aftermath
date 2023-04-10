
local gradient = surface.GetTextureID("vgui/gradient-d")
local background5 = Material("cotz/panels/pdaframe.png")
local audioFadeInTime = 2
local animationTime = 0.1
local matrixZScale = Vector(1, 1, 0.0001)

local PANEL = {}

function PANEL:Init()
    self:SetSize(300, 100)
    self:Center()

    self.title = self:Add("DLabel")
    self.title:SetText("Выберите пол персонажа")
    self.title:SetFont("DermaLarge")
    self.title:SetContentAlignment(5)
    self.title:Dock(TOP)

    self.buttons = self:Add("DPanel")
    self.buttons:Dock(FILL)
    self.buttons:DockMargin(10, 10, 10, 10)
    self.buttons.Paint = function(_, w, h)
        draw.RoundedBox(0, 0, 0, w, h, Color(60, 60, 60, 200))
    end

    self.maleButton = self.buttons:Add("DButton")
    self.maleButton:SetText("Мужской")
    self.maleButton:SetFont("DermaLarge")
    self.maleButton:SetTextColor(color_white)
    self.maleButton:Dock(LEFT)
    self.maleButton:DockMargin(5, 0, 5, 0)
    self.maleButton:SetWide(self.buttons:GetWide() / 2 - 20)
    self.maleButton.DoClick = function()
        RunConsoleCommand("cl_gender", "male")
        self:Close()
    end

    self.femaleButton = self.buttons:Add("DButton")
    self.femaleButton:SetText("Женский")
    self.femaleButton:SetFont("DermaLarge")
    self.femaleButton:SetTextColor(color_white)
    self.femaleButton:Dock(RIGHT)
    self.femaleButton:DockMargin(5, 0, 5, 0)
    self.femaleButton:SetWide(self.buttons:GetWide() / 2 - 20)
    self.femaleButton.DoClick = function()
        RunConsoleCommand("cl_gender", "female")
        self:Close()
    end
end

function PANEL:Paint(w, h)
    draw.RoundedBox(8, 0, 0, w, h, Color(40, 40, 40, 240))
end

vgui.Register("GenderMenu", PANEL, "DFrame")