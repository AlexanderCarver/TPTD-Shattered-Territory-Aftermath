﻿ENT.Type = "anim"
ENT.PrintName = "Blue Flare"
ENT.Author = "Black Tea"
ENT.Spawnable = true
ENT.AdminOnly = true
ENT.isGrenade = true
ENT.Category = "TPTD"
ENT.RenderGroup	= RENDERGROUP_BOTH

ENT.configLifetime = 300
ENT.configColor = Color( 50, 50, 255 )

if (SERVER) then
	function ENT:SpawnFunction(client, trace, className)
		if (!trace.Hit or trace.HitSky) then return end

		local spawnPosition = trace.HitPos + trace.HitNormal * 16

		local ent = ents.Create(className)
		ent:SetPos(spawnPosition)
		ent:Spawn()
		ent:Activate()

		return ent
	end

	function ENT:Initialize()
		self:SetModel("models/Items/grenadeAmmo.mdl")
		self:PhysicsInit(SOLID_VPHYSICS)
		self:SetMoveType(MOVETYPE_VPHYSICS)
		self.lifetime = CurTime() + self.configLifetime
		self:SetUseType(SIMPLE_USE)
		self.loopsound = CreateSound( self, "weapons/flaregun/burn.wav" )
		self.loopsound:PlayEx(0.08, 100)
		local physicsObject = self:GetPhysicsObject()
		if (IsValid(physicsObject)) then
			physicsObject:Wake()
		end
	end
	function ENT:OnRemove()
		self.loopsound:Stop()
	end
	function ENT:Think()
		if self.lifetime < CurTime() then
			self:Remove()
		end
		if self:WaterLevel() > 0 then
			self:Remove()
		end
		return CurTime()
	end
	function ENT:Use(activator)
	end
else
	function ENT:Initialize()
		self.lifetime = CurTime() + self.configLifetime
		self.emitter = ParticleEmitter( self:GetPos() )
		self.emittime = CurTime()
	end
	function ENT:Think()
		local firepos = self:GetPos() + ( self:GetUp() * 5 )
		local dlight = DynamicLight(self:EntIndex())
		local perc = ( ( self.lifetime - CurTime() )/self.configLifetime )
		dlight.Pos = firepos
		dlight.r = self.configColor.r
		dlight.g = self.configColor.g
		dlight.b = self.configColor.b
		dlight.Brightness = 3.5
		dlight.Size = 500 * perc + math.sin( CurTime()*FrameTime()/2 )*10
		dlight.Decay = 1024
		dlight.DieTime = CurTime() + 0.1
	end
	
	local GLOW_MATERIAL = Material("sprites/glow04_noz.vmt")
	function ENT:Draw()
		self:DrawModel()
	end
	function ENT:DrawTranslucent()
		local firepos = self:GetPos() + ( self:GetUp() * 5 )
		local perc = ( ( self.lifetime - CurTime() )/self.configLifetime )

		local size = 70 + math.sin( CurTime()*FrameTime()*5 ) * 50
		render.SetMaterial(GLOW_MATERIAL)
		render.DrawSprite(firepos, size * perc, size * perc, self.configColor )
			
		if self.emittime < CurTime() then
			local smoke = self.emitter:Add( "particle/smokesprites_000"..math.random(1,9), firepos	)
			smoke:SetVelocity( self:GetUp()*250*math.Rand( .5, 1 )*perc )
			smoke:SetDieTime(math.Rand(0.6,2.3)*perc)
			smoke:SetStartAlpha(math.Rand(150,200))
			smoke:SetEndAlpha(0)
			smoke:SetStartSize(math.random(0,5))
			smoke:SetEndSize(math.random(22,88)*perc)
			smoke:SetRoll(math.Rand(180,480))
			smoke:SetRollDelta(math.Rand(-3,3))
			smoke:SetColor(self.configColor.r,self.configColor.g,self.configColor.b)
			smoke:SetGravity( Vector( 0, 0, 50 ) )
			smoke:SetAirResistance(150)

			self.emittime = CurTime() + .05
		end
	end
end

function ENT:PhysicsCollide(data, phys)

	if data.Speed > 50 then
		self.Entity:EmitSound( Format( "physics/metal/metal_grenade_impact_hard%s.wav", math.random( 1, 3 ) ) ) 
	end
	
	local impulse = -data.Speed * data.HitNormal * 0.1 + (data.OurOldVelocity * -0.6)
	phys:ApplyForceCenter(impulse)
end
