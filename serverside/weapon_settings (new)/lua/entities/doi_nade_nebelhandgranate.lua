AddCSLuaFile()

ENT.Type 				= "anim"
ENT.Base 				= "arc9_nade_base"
ENT.PrintName 			= "Stielhandgranate"

ENT.Spawnable 			= false
ENT.CollisionGroup = COLLISION_GROUP_PROJECTILE

ENT.Model = "models/weapons/arc9_doi/w_nebelhandgranate.mdl"
ENT.SphereSize = 6
ENT.PhysMat = "grenade"

ENT.LifeTime = 5

ENT.ExplodeOnImpact = false

ENT.SmokeTrail = false

ENT.BounceSounds = {
    "weapons/arc9_doi/stielhandgranate/stielhandgranate_bounce_01.wav",
    "weapons/arc9_doi/stielhandgranate/stielhandgranate_bounce_02.wav",
    "weapons/arc9_doi/stielhandgranate/stielhandgranate_bounce_03.wav",
    "weapons/arc9_doi/stielhandgranate/stielhandgranate_bounce_04.wav",
}

function ENT:Detonate()
    if not self:IsValid() then return end
    if self.Defused then return end

    if self:WaterLevel() <= 0 then
        self:EmitSound("weapons/arc9_doi/smokegrenade/smokegrenade_detonate.wav", 100)
        self:EmitSound("weapons/arc9_doi/smokegrenade/smokeburn_dist.wav", 125)

        local cloud = ents.Create( "arc9_smoke_cloud" )

        if !IsValid(cloud) then return end

        cloud:SetPos(self:GetPos())
        cloud:SetAngles(self:GetAngles())
        cloud:SetOwner(self:GetOwner())
        cloud:Spawn()
    end

    self.Defused = true

    SafeRemoveEntityDelayed(self, self.SmokeTrailTime)
    self:SetRenderMode(RENDERMODE_NONE)
    self:SetMoveType(MOVETYPE_NONE)
    self:SetCollisionGroup(COLLISION_GROUP_DEBRIS)
end