include("shared.lua")

local data = {
	drawLocalplayer = false,
	preRender = {
		camPos = nil,
		camAngles = nil,
		camera = nil
	},
	entDraw = {
		camera = nil,
		screen = Material("models/props_combine/combine_interface_disp"),
		stopDrawScreen = true
	}
}

function ENT:Initialize()
	local id = "ixCCTV_" .. self:EntIndex()
	
	self.RT = GetRenderTarget(id, 512, 512, false)
	self.RTMat = CreateMaterial(id, "UnlitGeneric", {
		['$basetexture'] = self.RT,
		['$ignorez'] = 0,
		['$vertexcolor'] = 1,
		['$nolod'] = 1,
	})
	
	id = nil
	
	self.lastCamOutputTime = RealTime()
end

hook.Add("ShouldDrawLocalPlayer", "cctv_ShouldDrawLP", function()
	if data.drawLocalplayer then
		return true
	end
end)

hook.Add("PreRender", "cctv_camera_prerender", function()
	for _, v in ipairs(ents.FindByClass("ix_cctv")) do
		data.preRender.camera = v:GetCamera()
		if (IsValid(data.preRender.camera) and RealTime() - v.lastCamOutputTime >= 0.06) then
			v.lastCamOutputTime = RealTime()
			
			if type(data.preRender.camera) == "Player" then
				data.preRender.camPos = data.preRender.camera:GetShootPos()
				data.preRender.camAngles = data.preRender.camera:EyeAngles() + data.preRender.camera:GetViewPunchAngles()
			elseif (data.preRender.camera:GetClass() == "ix_cctv_camera") then
				data.preRender.camPos = data.preRender.camera:LocalToWorld( Vector( -10,-3,5 ) )
				data.preRender.camAngles = data.preRender.camera:GetAngles()
				
				data.preRender.camAngles[1] = data.preRender.camAngles[1] + 27
				data.preRender.camAngles[2] = data.preRender.camAngles[2] + 180
			end
			
			render.PushRenderTarget(v.RT)
			
			data.preRender.camera:SetNoDraw(true)
			render.Clear(0, 0, 0, 255, true, true) -- clear color, depth, and stencils
			
			cam.Start2D()
				data.drawLocalplayer = true
				
				render.RenderView( {
					origin = data.preRender.camPos,
					angles = data.preRender.camAngles,
					x = 0,
					y = 0,
					w = 512,
					h = 512
				})
				
				data.drawLocalplayer = false
			cam.End2D()
			
			data.preRender.camera:SetNoDraw(false)

			render.PopRenderTarget()
		end
	end
end)

ENT.DisplayVector = Vector( 0, -12, 125 )
ENT.DisplayAngle = Angle( -90, 0, 90 )
ENT.DisplayScale = .5

local color, text, pos, ang

function ENT:Draw()	
	self:DrawModel()

	if self:GetPos():Distance(EyePos()) < 2000 and self.RT then
		pos = self:GetPos() + self:GetUp() * self.DisplayVector.z + self:GetRight() * self.DisplayVector.x + self:GetForward() * self.DisplayVector.y
		ang = self:GetAngles()
		
		data.entDraw.camera = self:GetCamera()
		data.entDraw.stopDrawScreen = true
		
		if (IsValid(data.entDraw.camera)) then
			if type(data.entDraw.camera) == "Player" then
				if data.entDraw.camera:GetNetVar("Bodycamera") then
					text = data.entDraw.camera:Name()
					color = Color(0, 255, 0, 255)
					data.entDraw.stopDrawScreen = nil
				else
					text = data.entDraw.camera:Name()
					color = Color(255, 0, 0, 255)
				end
			elseif (data.entDraw.camera:GetClass() == "ix_cctv_camera") then
				text = data.entDraw.camera:GetNetVar("name", "Disabled")
				color = Color(0, 255, 0, 255)
				data.entDraw.stopDrawScreen = nil
			end
		else
			text = "Disabled"
			color = Color(255, 0, 0, 255)
		end
		
		ang:RotateAroundAxis( self:GetRight(), self.DisplayAngle.pitch ) -- pitch
		ang:RotateAroundAxis( self:GetUp(),  self.DisplayAngle.yaw )-- yaw
		ang:RotateAroundAxis( self:GetForward(), self.DisplayAngle.roll )-- roll
		cam.Start3D2D( pos, ang, self.DisplayScale)
			if data.entDraw.stopDrawScreen then
				surface.SetMaterial(data.entDraw.screen)
			else
				self.RTMat:SetTexture('$basetexture', self.RT)
				surface.SetMaterial(self.RTMat)
			end
			
			surface.SetDrawColor( 255, 255, 255, 255 )
			surface.DrawTexturedRect(-95, 60, 190, 125)
			surface.SetDrawColor( 0, 0, 0, 220 )
			surface.DrawOutlinedRect( -96 , 59, 192, 127 )
			
			draw.DrawText( text, "DermaDefaultBold", -90, 60, color, TEXT_ALIGN_LEFT )
		cam.End3D2D()
	end
end