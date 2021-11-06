local playerMeta = FindMetaTable("Player")

function playerMeta:IsCombine()
	local faction = self:Team()
	return faction == FACTION_CORPORATEASSETPROTECTIONSERVICE or faction == FACTION_CORPORATEINTELLIGENCESERVICE
end

function playerMeta:IsDispatch()
	local name = self:Name()
	local faction = self:Team()
	local bStatus = faction == FACTION_CORPORATEASSETPROTECTIONSERVICE

	return bStatus
end
