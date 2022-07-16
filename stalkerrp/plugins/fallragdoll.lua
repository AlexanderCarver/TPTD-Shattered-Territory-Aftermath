PLUGIN.name = "Fall Damage Fallover"
PLUGIN.author = "Chancer"
PLUGIN.description = "When people take fall damage they fall over."

function PLUGIN:EntityTakeDamage(target, dmginfo)
	if(target:IsPlayer()) then
		if(dmginfo:IsFallDamage()) then
			dmginfo:ScaleDamage(0.5)
			timer.Simple(0.05, function()
				if(!IsValid(target.ixRagdoll)) then
					target:SetRagdolled(true, 10)
				end
			end)
		end
	end
end