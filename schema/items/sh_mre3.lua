ITEM.name = "MRE"
ITEM.description = "Вечерний рацион ИРП, создан для подготовки организма ко сну"
ITEM.model = "models/illusion/eftcontainers/mre.mdl"
ITEM.widht = 1
ITEM.height = 2
ITEM.price = 25
ITEM.items = {
    "teablack",
    "teagreen",
    "orange",
    "orange",
    "cons1",
    "galette",
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