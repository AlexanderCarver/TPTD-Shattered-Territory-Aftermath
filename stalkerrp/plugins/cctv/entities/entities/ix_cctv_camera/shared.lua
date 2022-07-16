ENT.Type = "anim"
ENT.PrintName = "Камера наблюдения"
ENT.Author = "_FR_Starfox64"
ENT.Spawnable = false
ENT.AdminOnly = true
ENT.Category = "Helix"
ENT.RenderGroup = RENDERGROUP_BOTH

function ENT:SetupDataTables()
	self:NetworkVar("String", 0, "Name")
end