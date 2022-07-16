local PLUGIN = PLUGIN
PLUGIN.name = "Working campfire"
PLUGIN.author = "xAleXXX007x"
PLUGIN.description = "Adds working campfire with tinder box to make them."

ix.config.Add("campfireLifeTime", 1200, "Сколько времени будет гореть костер.", nil, {
	data = {min = 1, max = 3600},
	category = "Костер"
})
