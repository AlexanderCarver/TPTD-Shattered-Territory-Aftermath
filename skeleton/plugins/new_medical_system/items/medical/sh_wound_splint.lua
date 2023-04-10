ITEM.name = "Шина"
ITEM.model = Model("models/props_c17/furnituredrawer001a_shard01.mdl")
ITEM.description = "Жесткое устройство, которое удерживает на месте смещенную или подвижную часть, также используется для удержания на месте и защиты поврежденной части для поддержки заживления и предотвращения дальнейшего повреждения."
ITEM.category = "Medical"
ITEM.price = 25
ITEM.bDropOnDeath = true

ITEM.functions.Apply = {
	name = "Вылечить себя",
	icon = "icon16/heart.png",
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local pl = itemTable.player
		local char = pl:GetCharacter()

		ix.Wounds:RemoveFracture(pl)
	end
}

ITEM.functions.ApplyTarget = {
	name = "Вылечить цель",
	icon = "icon16/heart_add.png",
	sound = "items/medshot4.wav",
	OnRun = function(itemTable)
		local pl = itemTable.player
		local data = {}
			data.start = pl:GetShootPos()
			data.endpos = data.start + pl:GetAimVector() * 96
			data.filter = pl
		local target = util.TraceLine(data).Entity

		if IsValid(target) and target:IsPlayer() then
			if target:GetCharacter() then
				ix.Wounds:RemoveFracture(target)

				return true
			end
		end

		return false
	end
}