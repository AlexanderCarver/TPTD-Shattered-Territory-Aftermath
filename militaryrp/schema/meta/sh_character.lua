
local CHAR = ix.meta.character

function CHAR:IsCombine()
	local faction = self:GetFaction()
	return faction == FACTION_BIRD
end
