--[[
	ix.backgrounds[identifier] = {
		name : name of background,
		description = description of background,
		OnCreated = function(client, character) end, : Function that will run when character is created
		OnLoaded  = function(character) end, : Function that will run whenever the character is loaded

	}


	ix.backgrounds["cripple"] = {
		name = "Cripple",
		description = "Your right leg is busted, and you can't move around as fast. You use painkillers to numb the pain.",
		OnCreated = function(client, character) 
			character:GetInventory():Add("painkillers", 3)
		end,
		OnLoaded  = function(character) 
			local ply = character:GetPlayer()
			ply:SetRunSpeed(400)
			ply:SetWalkSpeed(200)
		end,
	}
]]--

/*ix.backgrounds["nothing"] = {
	name = "«Диггер»",
	description = "Вы понятия не имеете, как оказались в этом заброшенном месте, и вы не готовы вообще ко всему. Может вас привезли сюда на грузовике смерти или вы стали жертвой криминала. Это не важно. Ваша цель - адаптироваться или уйти отсюдова по скорее.".. 
	"\n\nСтартовое снаряжение:"..
	"\n  Ничего",
	OnCreated = function(client, character) 
		--character:GetInventory():Add("value_personal_1")
	end,
	OnLoaded = function(character)
		--local client = character:GetPlayer()  
		--client:SetRunSpeed(400) -- These things dont actually work, they're overridden by the stamina plugin almost instantly
		--client:SetWalkSpeed(200)
	end,
}*/

ix.backgrounds["veteran"] = {
	name = "«Ветеран боевых действий»",
	description = "Вы обычный любитель посидеть в барах и послушать всякие байке. В один из дней, вы слышите о странном месте, под названием «Закрытая Зона Отчуждения», где грибы аномальны, а закон там только волчий. Вас это могло заинтересовать или запугать. Но ясно одно – Вы уже тут, со снаряжением, готовы изучать или зарабатывать на этой опасной территории.".. 
	"\n\nПристрастье к лёгкому алкоголю."..
	"\nЗависимость от нейролептиков."
	"\n\nСтартовое снаряжение:"..
	"\n  1x Пачка патрон (.45 ACP, .410 Magnum Buck) (Damaged)"..
	"\n  15x rounds of .45 ACP"..
	"\n  10x rounds of .410 Magnum Buck"..
	"\n  1x Ochakovo Beer, 2l (Almost Full)"..
	"\n  1x Baltika no 7, 900ml"..
	"\n  1x Damaged Bag with Supplies"..
	"\n  1x Homemade Poaching Knife"..
	"\n  500 Rubles",
	OnCreated = function(client, character) 
		--character:GetInventory():Add("kit_newchar")
		character:GetInventory():Add("anorak", 1, {["durability"] = 85})
		character:GetInventory():Add("g2contender", 1, {["durability"] = 50})
		character:GetInventory():Add("45acp", 1, {["quantity"] = 15})
		character:GetInventory():Add("45acp41", 1, {["quantity"] = 10})
		character:GetInventory():Add("drink_bottlebeer_1", 1, {["quantity"] = 3})
		character:GetInventory():Add("drink_canbeer_5", 1)
		character:GetInventory():Add("bagrubles", 1, {["quantity"] = 500})
		character:GetInventory():Add("kit_newchar", 1)
		character:GetInventory():Add("knife_1", 1)
		character:GetPlayer():AddAddiction("LightAlcoholic")
		character:GetPlayer():AddAddiction("NeurolepticsAddiction")
	end,
	OnLoaded = function(character)
		--local client = character:GetPlayer()  
		--client:SetRunSpeed(400) -- These things dont actually work, they're overridden by the stamina plugin almost instantly
		--client:SetWalkSpeed(200)
	end,
}


ix.backgrounds["alcoholic_heavy"] = {
	name = "«Потерянный»",
	description = "Вы ничего не помните, гудящая голова как радио не настроенное на праведную чистоту давящая своим шумом. Мысли разрываются на тысячу лоскутов и медленно стекают по глазам. Вы не понимаете, почему ваш голос звучит так отвратно и противно. Душа просто отреклась от тела, оставив серому веществу в голове управления над жалким телом. Оно не знает – что такое ЧУВСТВА.".. 
	"\n\nПристрастья к горячительным напиткам"..
	"\n\nСтартовое снаряжение:"..
	"\n  1x Bat"..
	"\n  1x Smirnoff Vodka, 700ml"..
	"\n  1x Shevkoff Black Ultra Premium Vodka, 500ml (Half-Empty)"..
	"\n  1x Damaged Bag with Supplies"..
	"\n  1x Homemade Poaching Knife"..
	"\n  500 Rubles",
	OnCreated = function(client, character) 
		--character:GetInventory():Add("kit_newchar")
		character:GetInventory():Add("anorak", 1, {["durability"] = 85})
		character:GetInventory():Add("bat", 1)
		character:GetInventory():Add("drink_vodka_5", 1)
		character:GetInventory():Add("drink_vodka_3", 1, {["quantity"] = 1})
		character:GetInventory():Add("bagrubles", 1, {["quantity"] = 500})
		character:GetInventory():Add("kit_newchar", 1)
		character:GetInventory():Add("knife_1", 1)
		character:GetPlayer():AddAddiction("StrongAlcoholic")
	end,
	OnLoaded = function(character)
		--local client = character:GetPlayer()  
		--client:SetRunSpeed(400) -- These things dont actually work, they're overridden by the stamina plugin almost instantly
		--client:SetWalkSpeed(200)
	end,
}

ix.backgrounds["smoker"] = {
	name = "«Серость»",
	description = "Вся сознательная жизнь чувствовалась однообразной, нервной, бескрасочной. Без сигарет, вы не можете прожить и дня. Но закрыв глаза, отдавшись желанию о спасении из бесконечного круговорота однообразных событий – Вы оказываетесь в «Закрытой Зоне Отчуждения».".. 
	"\n\nПристрастье к никотину"..
	"\n\nСтартовое снаряжение:"..
	"\n  1x Lead Pipe"..
	"\n  1x 'Spark' Cigarettes (20pk) (Used)"..
	"\n  1x Damaged Bag with Supplies"..
	"\n  1x Homemade Poaching Knife"..
	"\n  500 Rubles",
	OnCreated = function(client, character) 
		--character:GetInventory():Add("kit_newchar")
		character:GetInventory():Add("anorak", 1, {["durability"] = 85})
		character:GetInventory():Add("leadpipe", 1)
		character:GetInventory():Add("drug_cigarette_4", 1, {["quantity"] = math.random(13,15)})
		character:GetInventory():Add("bagrubles", 1, {["quantity"] = 500})
		character:GetInventory():Add("kit_newchar", 1)
		character:GetInventory():Add("knife_1", 1)
		character:GetPlayer():AddAddiction("StrongSmoker")
	end,
	OnLoaded = function(character)
		--local client = character:GetPlayer()  
		--client:SetRunSpeed(400) -- These things dont actually work, they're overridden by the stamina plugin almost instantly
		--client:SetWalkSpeed(200)
	end,
}

ix.backgrounds["druggie"] = {
	name = "«Зависимый»",
	description = "Вы – человек без личной жизни. Вы – не имеет власть над собой. Вы – Просто оболочка, которая возвращается в разум, когда у вас есть доза. Но это не законно. Так что «Закрытая Зона Отчуждения» – выбор для псевдо-свободы.".. 
	"\n\nПристрастье к наркотикам"..
	"\n\nСтартовое снаряжение:"..
	"\n  1x Crowbar"..
	"\n  1x Painkillers"..
	"\n  1x Damaged Bag with Supplies"..
	"\n  1x Homemade Poaching Knife"..
	"\n  500 Rubles",
	OnCreated = function(client, character) 
		--character:GetInventory():Add("kit_newchar")
		character:GetInventory():Add("anorak", 1, {["durability"] = 85})
		character:GetInventory():Add("crowbar", 1)
		character:GetInventory():Add("drug_painkillers", 1)
		character:GetInventory():Add("bagrubles", 1, {["quantity"] = 500})
		character:GetInventory():Add("kit_newchar", 1)
		character:GetInventory():Add("knife_1", 1)
		character:GetPlayer():AddAddiction("DrugUser")
	end,
	OnLoaded = function(character)
		--local client = character:GetPlayer()  
		--client:SetRunSpeed(400) -- These things dont actually work, they're overridden by the stamina plugin almost instantly
		--client:SetWalkSpeed(200)
	end,
}

ix.backgrounds["addict_light"] = {
	name = "Addict (Light)",
	description = "You lived a luxury life, but a sudden turn of events made you go to the zone.".. 
	"\n\nAddicted to Light Alcohol"..
	"\n\nAddicted to Nicotine"..
	"\n\nStarting Equipment:"..
	"\n  1x Contender (.45 ACP, .410 Magnum Buck) (Damaged)"..
	"\n  15x rounds of .45 ACP"..
	"\n  10x rounds of .410 Magnum Buck"..
	"\n  1x Ochakovo Beer, 2l (Almost Full)"..
	"\n  1x Baltika no 7, 900ml"..
	"\n  1x Damaged Bag with Supplies"..
	"\n  1x Homemade Poaching Knife"..
	"\n  1x 'Spark' Cigarettes (20pk) (Used)"..
	"\n  1000 Rubles",

	OnCreated = function(client, character) 
		--character:GetInventory():Add("kit_newchar")
		character:GetInventory():Add("anorak", 1, {["durability"] = 85})
		character:GetInventory():Add("g2contender", 1, {["durability"] = 50})
		character:GetInventory():Add("45acp", 1, {["quantity"] = 20})
		character:GetInventory():Add("45acp41", 1, {["quantity"] = 20})
		character:GetInventory():Add("drink_bottlebeer_1", 1, {["quantity"] = 3})
		character:GetInventory():Add("drink_canbeer_5", 1)
		character:GetInventory():Add("bagrubles", 1, {["quantity"] = 1000})
		character:GetInventory():Add("kit_newchar", 1)
		character:GetInventory():Add("knife_1", 1)
		character:GetInventory():Add("drug_cigarette_4", 1, {["quantity"] = math.random(13,15)})
		character:GetPlayer():AddAddiction("LightAlcoholic")
		character:GetPlayer():AddAddiction("LightSmoker")
	end,
	OnLoaded = function(character)
		--local client = character:GetPlayer()  
		--client:SetRunSpeed(400) -- These things dont actually work, they're overridden by the stamina plugin almost instantly
		--client:SetWalkSpeed(200)
	end,
}
