
local CHAR = ix.meta.character

function CHAR:IsCombine()
	local faction = self:GetFaction()
	return faction == FACTION_CORPORATEASSETPROTECTIONSERVICE or faction == FACTION_CORPORATEINTELLIGENCESERVICE
end
