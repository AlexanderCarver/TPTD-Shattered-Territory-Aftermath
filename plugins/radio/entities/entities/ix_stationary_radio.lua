ENT.Type = "anim"
ENT.Author = "SleepyMode"
ENT.PrintName = "Стационарная радиостанция «HDLC-060»"
ENT.Spawnable = true
ENT.AdminSpawnable = true

function ENT:SetupDataTables()
	self:NetworkVar("String", 0, "RadioChannel")
end

function ENT:GetEntityMenu(client)
	local options = {}

	options["Настроить частоту"] = function()
		
	end

	return options
end