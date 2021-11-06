include('shared.lua')

function ENT:Draw()
	self:DrawModel()
	
	local Pos = self:GetPos()
	local Ang = self:GetAngles()
	
	Ang:RotateAroundAxis(Ang:Forward(), 90)
	Ang:RotateAroundAxis(Ang:Right(), 270)
	
	local txt = "Шкаф с обмундированием"
	local key = input.LookupBinding( "+use", true ) or "unbound"
	local txt2 = "[Нажмите [" .. string.upper( key ) .. "], чтобы изменить внешний вид.]"
	
	surface.SetFont("DermaLarge")
	local TextWidth = surface.GetTextSize(txt)
	surface.SetFont( "Trebuchet18" )
	local TextWidth2 = surface.GetTextSize(txt2)
	
	cam.Start3D2D(Pos - Ang:Right() + Ang:Up() * 26.8, Ang, 0.16)
		draw.WordBox(4, -TextWidth*0.5 - 25, -200, txt, "DermaLarge", Color(0, 0, 0, 255), Color(255,255,255,255))
		draw.WordBox(4, -TextWidth2*0.5 - 25, -160, txt2, "Trebuchet18", Color(0, 0, 0, 255), Color(255,255,255,255))
	cam.End3D2D()
end

net.Receive( "open_freebodygroupr_window", function()

	OpenFreeBodyGrouprMenu()
	
end )