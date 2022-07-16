ENT.Type = "anim"
ENT.PrintName = "Панель управления камерами"
ENT.Author = "_FR_Starfox64"
ENT.Spawnable = true
ENT.AdminOnly = true
ENT.Category = "Helix"
ENT.RenderGroup = RENDERGROUP_BOTH

function ENT:SetupDataTables()
	self:NetworkVar("Entity", 0, "Camera")
end