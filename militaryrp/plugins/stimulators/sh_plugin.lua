PLUGIN.name = "Drugs"
PLUGIN.author = "Hikka"
PLUGIN.description = ""

local MOVETYPE_NONE = MOVETYPE_NONE

function PLUGIN:Move(client, moveData)
	if (client:GetMoveType() == MOVETYPE_NONE) then return end
	
	local char = client:GetCharacter()
	
	if (char) then
		local f,s = moveData:GetMaxClientSpeed(), moveData:GetMaxSpeed()
		local drug = client:GetLocalVar("is_drugs", false)

		if (drug and drug.duration and drug.duration > 0 and drug.speed) then
			moveData:SetMaxClientSpeed(f * drug.speed)
			moveData:SetMaxSpeed(s * drug.speed)
		end
	end
end

if (CLIENT) then
	function PLUGIN:RenderScreenspaceEffects()
		if not LocalPlayer():Alive() then return end
		
		local drug = LocalPlayer():GetLocalVar("is_drugs", false)
		if drug and drug.duration and drug.duration > 0 then
			DrawMotionBlur(math.Clamp(1 - (drug.duration * 0.4), 0.05, 1), 1, 0)
			DrawSharpen(drug.duration + 0.8, math.Clamp(drug.duration - 1, 1, 10))
		end
	end
end

ix.util.Include("sv_plugin.lua", 'server')