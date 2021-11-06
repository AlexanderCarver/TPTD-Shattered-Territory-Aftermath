ITEM.name = "MREBIG"
ITEM.description = "Полевой индивидуальный рацион питания для сотрудников «Corporate Security Service Tower Corporation», который содержит в себе все необходимое для пропитания на целый день. Данный пакет является расширенной версией FMRE-01 «CSS»."
ITEM.model = "models/illusion/eftcontainers/ifak.mdl"
ITEM.width = 2
ITEM.height = 2
ITEM.price = 55
ITEM.items = {
	"mre",
	"mre2",
	"mre3",
}

ITEM.functions.Open = {
	name = "Распаковать",
	tip = "",
    icon = "icon16/door_open.png",
	OnRun = function(itemTable)
		local client = itemTable.player
		local character = client:GetCharacter()

		for k, v in ipairs(itemTable.items) do
			if (!character:GetInventory():Add(v)) then
				ix.item.Spawn(v, client)
			end
		end

		--character:GiveMoney(ix.config.Get("rationTokens", 20))
		client:EmitSound("ambient/fire/mtov_flame2.wav", 75, math.random(160, 180), 0.35)
	end
}
