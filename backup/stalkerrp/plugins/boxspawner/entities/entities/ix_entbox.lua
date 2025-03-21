AddCSLuaFile()

ENT.Type = "anim"
ENT.PrintName = "Металлический ящик"
ENT.Author = "Spenser&Kek1ch"
ENT.Spawnable = true
ENT.AdminOnly = true
ENT.Category = "Helix"
ENT.RenderGroup = RENDERGROUP_BOTH

if (SERVER) then
	function ENT:Initialize()
		self:SetModel("models/lostsignalproject/items/misc/box_metal.mdl")
		self:SetSolid(SOLID_VPHYSICS)
		self:PhysicsInit(SOLID_VPHYSICS)
		local physObj = self:GetPhysicsObject()

		self.hp = 120

		if (IsValid(physObj)) then
			physObj:EnableMotion(true)
			physObj:Wake()
		end

		self:SetCollisionGroup( COLLISION_GROUP_INTERACTIVE )
		self.IsDamaged = false
	end

	function ENT:OnTakeDamage(damageInfo)
		self.hp = self.hp - damageInfo:GetDamage()
		if(self.hp > 0) then return end

		local pos = self:GetPos()
		local ang = self:GetAngles()

		if (!self.IsDamaged) then
			self.IsDamaged = true

			for i = 1,4 do
				if (math.random(1, 6) == 6) then
					local drop = ix.util.GetRandomItemFromPool(self.CustomSpawngroup or "ix_entbox_drops")
					ix.item.Spawn(drop[1], self:GetPos()+Vector(0, 0, 2 + i), nil, AngleRand(), drop[2] or {})
				end
			end
		end

		self:Remove()

		local BottomBox = ents.Create("prop_physics")
		BottomBox:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		BottomBox:PhysicsInit(SOLID_VPHYSICS)
		BottomBox:SetPos(pos + Vector(0, 0, 1))
		BottomBox:SetAngles(ang)
		BottomBox:SetModel("models/lostsignalproject/items/misc/box_metall_part01.mdl")

		local TopBox = ents.Create("prop_physics")
		TopBox:SetCollisionGroup( COLLISION_GROUP_DEBRIS )
		TopBox:PhysicsInit(SOLID_VPHYSICS)
		TopBox:SetPos(pos + Vector(0, 0, 8))
		TopBox:SetAngles(ang)
		TopBox:SetModel("models/lostsignalproject/items/misc/box_metall_part02.mdl")
		
		timer.Simple(0.0001, function()
			BottomBox:Spawn()
			TopBox:Spawn()
			TopBox:GetPhysicsObject():SetVelocity(Vector(math.random(-50,50),math.random(-50,50),100))
		end)

		timer.Simple(5, function()
			BottomBox:Remove()
			TopBox:Remove()
		end)
	end

	function ENT:SetCustomSpawngroup(custgroup)
		self.CustomSpawngroup = custgroup
	end
end

if (CLIENT) then
	function ENT:Draw()
		self:DrawModel()
	end

	ENT.PopulateEntityInfo = true

	function ENT:OnPopulateEntityInfo(container)
		local name = container:AddRow("name")
		name:SetImportant()
		name:SetText("Металлический ящик")
		name:SizeToContents()

		local description = container:AddRow("description")
		description:SetText("В этом металлическом ящичке имеется какой-то предмет внутри. Стоит его всё же вскрыть при помощи продвинутых инструментов.")
		description:SizeToContents()
	end
end

