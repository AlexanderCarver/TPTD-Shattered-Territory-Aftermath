include("shared.lua");

AddCSLuaFile("cl_init.lua");
AddCSLuaFile("shared.lua");

-- Called when the entity initializes.
function ENT:Initialize()
	self:SetModel("models/mosi/fnv/props/workstations/campfire04.mdl");
	self:PhysicsInit(SOLID_VPHYSICS);
	self:SetMoveType(MOVETYPE_NONE);
	self:SetSolid(SOLID_VPHYSICS);
	self:SetUseType(SIMPLE_USE)
	self:SetSkin(2)
	self:GetAngles(Angle(-5,0,0));
	
	local phys = self:GetPhysicsObject();
	if IsValid(phys) then
		phys:Wake();
		phys:EnableMotion(false);
	end;

	self.amb = CreateSound( self , "ambient/fire/fire_small1.wav" );
	self.amb:Play()
	
	self.lifetime = CurTime() + ix.config.Get("campfireLifeTime", 1200)
	
	self.flame = ents.Create("env_fire");
	self.flame:SetKeyValue("health", self.lifetime);
	self.flame:SetKeyValue("duration",100);
	self.flame:SetKeyValue("firesize",25);
	self.flame:SetKeyValue("fireattack",15);
	self.flame:SetKeyValue("damagescale",0.5);
	self.flame:SetPos(self:GetPos() + Vector(0,0,80));
	self.flame:SetParent(self);
	self.flame:Spawn();
	self.flame:Activate()
	self.flame:Fire("StartFire","",0);
end;

function ENT:Think()
	if (self.lifetime and self.lifetime < CurTime()) then
		self:Remove()
	end
	
	if self:WaterLevel() > 0 then
		self:Remove()
	end
end

function ENT:Use(activator)
	if activator:Alive() and activator:KeyDown(IN_WALK) then
		activator:SetAction("Убираем...", math.random(3, 10), function()
			self:Remove()
		end)
	end
end

function ENT:OnRemove()
	self.amb:Stop();
end;
