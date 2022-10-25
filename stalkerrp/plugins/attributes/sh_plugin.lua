PLUGIN.name = "Attribute System"
PLUGIN.author = "Huargenn, TPTD Dev Team"
PLUGIN.description = "Implementation of an attribute system for roleplay."



ix.config.Add("defaultMaxHealth", 100, "Максимальное количество здоровья у персонажей.", nil, {
	data = {min = 0, max = 200.0, decimals = 1},
	category = "Characters"
})

ix.config.Add("constitutionMultiplier", 2, "Коэффициент множителя физического здоровья от навыка.", nil, {
	data = {min = 0, max = 10.0, decimals = 1},
	category = "Attributes"
})

ix.config.Add("psyMultiplier", 2, "Коэффициент множителя психического здоровья от навыка.", nil, {
	data = {min = 0, max = 10.0, decimals = 1},
	category = "Attributes"
})



ix.command.Add("RollStat", {
	syntax = "<stat>",
	description = "Бросить кубик с расчётом на определённый навык персонажа.",
	arguments = {
		ix.type.text
	},
	OnRun = function(self, client, stat)
		local character = client:GetCharacter()
		if(ix.attributes.list[stat]) then
		if (character and character:GetAttribute(stat, 0)) then
			local bonus = character:GetAttribute(stat, 0)
			local roll = tostring(math.random(0, 10))
			ix.chat.Send(client, "rollstat", (roll + bonus).." ( "..roll.." + "..bonus.." )", nil, nil, { --tostring(math.random(0, 50))
				max = maximum,
				attribute = ix.attributes.list[stat].name,
			})
		end
		else 
			client:Notify("Вы ввели неправильный навык!")
		end
	end
})

ix.chat.Register("rollstat", {
	format = "[IC] %s бросил кубик на навык %s, выбивая %s.",
	color = Color(155, 111, 176),
	CanHear = ix.config.Get("chatRange", 280),
	deadCanChat = true,
	OnChatAdd = function(self, speaker, text, bAnonymous, data)
		chat.AddText(self.color, string.format(self.format,
			speaker:GetName(), data.attribute, text, data.max or 100
		))
		end
	})
	
ix.chat.Register("roll", {
	format = "[IC] %s выбил %s.",
	color = Color(155, 111, 176),
	CanHear = ix.config.Get("chatRange", 280),
	deadCanChat = true,
	OnChatAdd = function(self, speaker, text, bAnonymous, data)
		chat.AddText(self.color, string.format(self.format,
			speaker:GetName(), text, data.max or 20
		))
		end
	})