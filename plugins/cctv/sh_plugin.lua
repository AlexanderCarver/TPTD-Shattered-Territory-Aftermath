PLUGIN.name = "CCTV"
PLUGIN.author = "Neon (NS 1.1), Hikka (Helix)"
PLUGIN.desc = "The NSA is watching!"
PLUGIN.cctvDistance = 300
PLUGIN.terminalsToDraw = {}

ix.util.Include("sv_plugin.lua")

local PLUGIN = PLUGIN

ix.command.Add("cctv", {
	OnRun = function(self, client)
		PLUGIN:StartCCTV( client )
	end
})

ix.command.Add("cctvcreate", {
	arguments = ix.type.text,
	syntax = "<string camName>",
	OnRun = function(self, client, camName)
		local ent = ents.Create("ix_cctv_camera")
		ent:SetPos(client:GetPos())
		ent:SetNetVar("name", camName)
		ent:Spawn()
		ent:Activate()
		
		PLUGIN:SaveData()
	end
})

if (CLIENT) then
	local Frame = nil
	net.Receive('cctvStart', function()
		if (IsValid(Frame)) then return end
		
		Frame = vgui.Create("DFrame")
		Frame:SetPos(0, 300)
		Frame:SetSize(300, 500)
		Frame:SetTitle("Панель управления камерами")
		Frame:MakePopup()
		
		Frame.List = vgui.Create("DListView", Frame)
		Frame.List:Dock(FILL)
		Frame.List:DockMargin(0, 0, 0, 5)
		Frame.List:SetMultiSelect(false)
		Frame.List:AddColumn("Название").Header:SetTextColor(Color(25, 25, 25))
		Frame.List:AddColumn("Тип").Header:SetTextColor(Color(25, 25, 25))

		for k,v in ipairs(ents.FindByClass("ix_cctv_camera")) do
			if v:GetNetVar("name", "Disabled") != "Disabled" then
		        Frame.List:AddLine(v:GetNetVar("name"), "Видеонаблюдение")
		    end
		end
		
		for k, v in ipairs(player.GetAll()) do
			if (IsValid(v) and v:GetCharacter() and v:GetNetVar("Bodycamera")) then
				Frame.List:AddLine(v:Name(), "Нательная камера")
			end
		end

		function Frame.List:OnRowSelected( id, line )
			net.Start('cctvUpdate')
			net.WriteString(line:GetColumnText(1))
			net.SendToServer()
		end
	end)

	properties.Add("cctv_open",{
		MenuLabel	=	"Доступ к камерам",
		Order		=	3015,
		MenuIcon	=	"icon16/camera.png",

		Filter		=	function(self, ent, ply)
							if !IsValid(ent) or ent:GetClass() != "ix_cctv" then return false end
							return true
						end,

		Action		=	function(self, ent)
							if not IsValid(ent) then return end
							RunConsoleCommand("say", "/cctv")
						end
	})
end