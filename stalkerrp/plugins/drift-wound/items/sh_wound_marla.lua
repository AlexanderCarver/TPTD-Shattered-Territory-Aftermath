ITEM.name = "Марлевая повязка"
ITEM.description = "Толстая хлопковая ткань с пластырями для остановки обильных кровотечений. Имеет в себе пакет с антибактериальным заживляющим гелем на основе хлоргексидина."
ITEM.model = "models/carlsmei/escapefromtarkov/medical/bandage_army.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 7
ITEM.category = "Медикаменты"

ITEM.functions.Apply = {
	name = "Перебинтовать себя",
	icon = "icon16/pill.png",
	--sound = "openpackage.wav",
	OnRun = function(itemTable)
		local pl = itemTable.player
		local char = pl:GetCharacter()
		
		if math.random(5) > 2 then
			ix.Wounds:RemoveBleeding(pl)
		end

		pl:SetHealth(math.min(pl:Health() + 25, 100))
	end
}

ITEM.functions.ApplyTarget = {
	name = "Перебинтовать человека напротив",
	icon = "icon16/pill_go.png",
	--sound = "openpackage.wav",
	OnRun = function(itemTable)
		local pl = itemTable.player
		local data = {}
			data.start = pl:GetShootPos()
			data.endpos = data.start + pl:GetAimVector() * 96
			data.filter = pl
		local target = util.TraceLine(data).Entity

		if IsValid(target) and target:IsPlayer() then
			if target:GetCharacter() then
				if math.random(5) > 2 then
					ix.Wounds:RemoveBleeding(target)
				end

				target:SetHealth(math.min(target:Health() + 50, 100))
				return true
			end
		end

		return false
	end
}