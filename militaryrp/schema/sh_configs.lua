
ix.currency.symbol = "UCE "
ix.currency.singular = "United Corporate Euro"
ix.currency.plural = "United Corporate Euro"

ix.config.SetDefault("scoreboardRecognition", true)
ix.config.SetDefault("maxAttributes", 50)

ix.config.Add("rationTokens", 200, "Сумма дотации, которую получает человек.", nil, {
	data = {min = 0, max = 1000},
	category = "economy"
})

ix.config.Add("rationInterval", 36000, "Интервал выдачи рационов.", nil, {
	data = {min = 0, max = 86400},
	category = "economy"
})
