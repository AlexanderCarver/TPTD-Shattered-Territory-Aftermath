
PLUGIN.name = "Голод"
PLUGIN.author = "Bilwin"
PLUGIN.desc = "Добавляет множество атрибутов и голод."

local playerMeta = FindMetaTable("Player")

function playerMeta:restoreHunger(amount)
	local current = self:GetLocalVar("hunger", 0)
	local value = math.Clamp(current + amount, 0, 100)

	self:SetLocalVar("hunger", value)
end
	
function playerMeta:restoreThirst(amount)
	local current = self:GetLocalVar("thirst", 0)
	local value = math.Clamp(current + amount, 0, 100)

	self:SetLocalVar("thirst", value)
end

function playerMeta:GetHunger()
	return self:GetLocalVar("hunger")
end

function playerMeta:GetThirst()
	return self:GetLocalVar("thirst")
end

ix.util.Include('sv_hooks.lua')
ix.util.Include('cl_hooks.lua')