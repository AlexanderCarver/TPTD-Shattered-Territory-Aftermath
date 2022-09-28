local PLUGIN = PLUGIN

ENT.Base = "base_gmodentity"
ENT.PrintName = "Cooking Table"
ENT.Category = "Incredible GMod"
ENT.Spawnable = true
ENT.AdminOnly = true

ENT.Model = "models/props_c17/FurnitureTable002a.mdl"

if CLIENT then
	function ENT:Draw(f)
		self:DrawModel(f)
	end

	return
end

ENT.Next_Use = 0

function ENT:Initialize()
	self:SetModel(self.Model)
	self:SetUseType(SIMPLE_USE)
	self:PhysicsInit(SOLID_VPHYSICS)
	self:SetMoveType(MOVETYPE_VPHYSICS)
	self:SetSolid(SOLID_VPHYSICS)

	local phys = self:GetPhysicsObject()
	if IsValid(phys) then
		phys:EnableMotion(false)
		phys:Sleep()
	end
end

util.AddNetworkString("CookingMod/OpenMenu")

function ENT:Use(ply)
	net.Start("CookingMod/OpenMenu")
		net.WriteEntity(self)
	net.Send(ply)
end