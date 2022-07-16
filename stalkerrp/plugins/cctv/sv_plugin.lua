local PLUGIN = PLUGIN

util.AddNetworkString('cctvStart')
util.AddNetworkString('cctvUpdate')

function PLUGIN:StartCCTV( ply )
	for k,v in ipairs(ents.FindByClass("ix_cctv")) do
		if ply:GetPos():Distance(v:GetPos()) <= self.cctvDistance then
			net.Start('cctvStart')
			net.Send(ply)
			return
		end
	end

	ply:Notify("Слишком большое расстояние! Вам необходимо находится в " .. self.cctvDistance .. " единицах от панели, чтобы управлять камерами!")
end

function PLUGIN:LoadData()
	local data = self:GetData() or {}
	data.cameras = data.cameras or {}
	data.cctv = data.cctv or {}
	
	for _, v in ipairs(data.cameras) do
		local entity = ents.Create("ix_cctv_camera")
		entity:SetPos(v.pos)
		entity:SetAngles(v.angles)
		entity:SetNetVar("name", v.camname)
		entity:Spawn()
		entity:Activate()
		local phys = entity:GetPhysicsObject()
		if IsValid(phys) then
			phys:EnableMotion(false)
		end
	end
	
	for _, v in ipairs(data.cctv) do
		local entity = ents.Create("ix_cctv")
		entity:SetPos(v.pos)
		entity:SetAngles(v.angles)
		entity:Spawn()
		entity:Activate()
		
		for _, camera in ipairs(ents.FindByClass('ix_cctv_camera')) do
			if v.camname and camera:GetNetVar("name") == v.camname then
				entity:SetCamera(camera)
				break
			end
		end
		
		local phys = entity:GetPhysicsObject()
		if IsValid(phys) then
			phys:EnableMotion(false)
		end
	end
	
	data = nil
end

function PLUGIN:SaveData()
	local data = {
		cameras = {},
		cctv = {}
	}
	
	for _, v in ipairs(ents.FindByClass("ix_cctv_camera")) do
		if v:GetNetVar("name", "Disabled") != "Disabled" then
			data.cameras[#data.cameras + 1] = {
				pos = v:GetPos(),
				angles = v:GetAngles(),
				camname = v:GetNetVar("name", "Disabled"),
			}
		end
	end
	
	for _, v in ipairs(ents.FindByClass("ix_cctv")) do
		data.cctv[#data.cctv + 1] = {
			pos = v:GetPos(),
			angles = v:GetAngles(),
			camname = IsValid(v:GetCamera()) and v:GetCamera():GetNetVar("name", nil)
		}
	end

	self:SetData(data)
	data = nil
end

net.Receive('cctvUpdate', function(len, ply)
	local camera = net.ReadString()
	if not isstring(camera) then return end
	
	local trace = ply:GetEyeTrace().Entity
	
	if (!IsValid(trace) or trace:GetClass() != "ix_cctv") then
		ply:Notify("Не выполнено. Не удалось найти монитор, так как необходимо смотреть прямо на него!")
		return
	end
	
	local cameraFound
	for k,v in ipairs(ents.FindByClass("ix_cctv_camera")) do
		if v:GetNetVar("name", "Disabled") == camera then
			cameraFound = v
			break
		end
	end
	
	if not cameraFound then
		cameraFound = ix.command.FindPlayer(ply, camera)
	end

	if not cameraFound then
		ply:Notify("Камера ( "..camera.." ) не была найдена.")
		return
	end
	
	trace:SetCamera(cameraFound)
end)

hook.Add("SetupPlayerVisibility", "cctv_spv", function(ply)
	for _, v in ipairs(ents.FindInSphere(ply:GetPos(), 2000)) do
		if v:GetClass() == "ix_cctv" and IsValid(v:GetCamera()) then
			AddOriginToPVS(v:GetCamera():GetPos())
		end
	end
end)