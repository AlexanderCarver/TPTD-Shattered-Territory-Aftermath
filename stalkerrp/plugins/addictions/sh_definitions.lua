
--[[
	ADDICTION STRUCTURE:
	
	PLUGIN.addictionDefinitions["Light Alcoholic"] = {
		name 			= string,   -- "Pretty" name, for showing to the users (maybe)
		checkChance 	= number, -- Chance in percentage that the addiction will progress a stage worse when ticked (every PLUGIN.addictionInterval seconds)
		satisfyStruct   = { string, number, number } -- A struct containing the trigger and chance the addiction will be satisfied and the amount the addiction will be satisfied by
		updateFunction 	= function(ply, oldlvl, newlvl) -- Called when the state of the addiction changes (ie when sated or when worsened)
		tickFunction 	= function(ply, lvl) -- Called every PLUGIN.addictionTickInterval
	}

	EXAMPLE:
	PLUGIN.addictionDefinitions["LightAlcoholic"] = {
	name = "Alcoholic (Light)",
	checkChance = 50,
	satisfyStruct = {{"AnyAlcohol", 75}, {"ExpensiveAlcohol", 100}},
	updateFunction 	= function(ply, oldlvl, newlvl)
		if (newlvl == ADDICTION_STATE_HEAVYWITHDRAWAL) then
			ply:DamagePsyHealth(20)
		end

		if (newlvl == ADDICTION_STATE_OK and oldlvl > ADDICTION_STATE_NEED) then
			ply:DamagePsyHealth(-40)
		end
	end,
	tickFunction 	= function(ply, lvl)
		if (lvl > ADDICTION_STATE_NEED) then
			ply:DamagePsyHealth(ADDICTION_STATE_NEED - lvl)
		end
	end,
}
]]--

local ADDICTION_STATE_OK = 1
local ADDICTION_STATE_NEED = 2
local ADDICTION_STATE_WITHDRAWAL = 4
local ADDICTION_STATE_HEAVYWITHDRAWAL = 8
local ADDICTION_STATE_WORSTWITHDRAWAL = 12

--[[
PLUGIN.addictionDefinitions["LightAlcoholic"] = {
	name = "Alcoholic (Light)",
	checkChance = 50,
	satisfyStruct = {{"CheapAlcohol", 50}, {"MediumAlcohol", 75}, {"ExpensiveAlcohol", 100}},
	updateFunction 	= function(ply, oldlvl, newlvl)
		if (newlvl == ADDICTION_STATE_HEAVYWITHDRAWAL) then
			ply:DamagePsyHealth(20)
		end

		if (newlvl == ADDICTION_STATE_OK and oldlvl > ADDICTION_STATE_NEED) then
			ply:DamagePsyHealth(-40)
		end
	end,
	tickFunction 	= function(ply, lvl)
		if (lvl > ADDICTION_STATE_NEED) then
			ply:DamagePsyHealth(ADDICTION_STATE_NEED - lvl)
		end
	end,
}]]

PLUGIN.addictionDefinitions["Alcoholic"] = {
	name = "Алкоголизм",
	checkChance = 60,
	satisfyStruct = {{"LightAlcohol", 75, 2}, {"MediumAlcohol", 85, 4}, {"StrongAlcohol", 100, 6}},
	updateFunction 	= function(ply, oldlvl, newlvl)
		if (newlvl >= ADDICTION_STATE_HEAVYWITHDRAWAL) then
			ply:DamagePsyHealth(20)
		end

		if (newlvl < oldlvl) then
			ply:DamagePsyHealth(-15 * (oldlvl - newlvl))
		end
	end,
	tickFunction 	= function(ply, lvl)
		if (lvl >= ADDICTION_STATE_NEED) then
			ply:Notify("I could really go for a drink right now...")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth(lvl - ADDICTION_STATE_NEED)
		end
	end,
}

PLUGIN.addictionDefinitions["Smoker"] = {
	name = "Никотиновая зависимость",
	checkChance = 80,
	satisfyStruct = {{"LightSmokes", 50, 2}, {"StrongSmokes", 75, 4}, {"SpecialSmokes", 100, 6}},
	updateFunction 	= function(ply, oldlvl, newlvl)
		if (newlvl >= ADDICTION_STATE_HEAVYWITHDRAWAL) then
			ply:DamagePsyHealth(20)
		end

		if (newlvl < oldlvl) then
			ply:DamagePsyHealth(-10 * (oldlvl - newlvl))
		end
	end,
	tickFunction 	= function(ply, lvl)
		if (lvl >= ADDICTION_STATE_NEED) then
			ply:Notify("Мне бы промочить горло... Нужен алкоголь.")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
			ply:Notify("У меня дрожат руки... Мне нужен алкоголь.")
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth((lvl - ADDICTION_STATE_NEED)*2)
			ply:Notify("Блять, как же у меня болит голова... Мне срочно нужен алкоголь.")
		end
	end,
}

PLUGIN.addictionDefinitions["DrugUser"] = {
	name = "Наркомания",
	checkChance = 100,
	satisfyStruct = {{"LightDrugs", 80, 2}, {"MediumDrugs", 90, 4}, {"StrongDrugs", 100, 6}},
	updateFunction 	= function(ply, oldlvl, newlvl)
		if (newlvl >= ADDICTION_STATE_HEAVYWITHDRAWAL) then
			ply:DamagePsyHealth(20)
		end

		if (newlvl < oldlvl) then
			ply:DamagePsyHealth(-10 * (oldlvl - newlvl))
		end
	end,
	tickFunction 	= function(ply, lvl)
		if (lvl >= ADDICTION_STATE_NEED) then
			ply:Notify("Мне нужно въебаться... Хотя бы чем-нибудь.")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
			ply:Notify("У меня дрожат руки... Начинается ломка. Мне срочно нужна доза хотя бы чего-нибудь.")
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth((lvl - ADDICTION_STATE_NEED)*2)
			ply:Notify("БЛЯТЬ, МНЕ СРОЧНО НУЖНА НАРКОТА. Я ГОТОВ УБИВАТЬ РАДИ НЕЁ.")
		end
	end,
}

PLUGIN.addictionDefinitions["AntidepressantUser"] = {
	name = "Зависимость от антидепрессантов",
	checkChance = 75,
	satisfyStruct = {{"LightAntidepressants", 100, 4}, {"StrongAntidepressants", 100, 6}},
	updateFunction 	= function(ply, oldlvl, newlvl)
		if (newlvl >= ADDICTION_STATE_HEAVYWITHDRAWAL) then
			ply:DamagePsyHealth(20)
		end

		if (newlvl < oldlvl) then
			ply:DamagePsyHealth(-10 * (oldlvl - newlvl))
		end
	end,
	tickFunction 	= function(ply, lvl)
		if (lvl >= ADDICTION_STATE_NEED) then
			ply:Notify("Мне нужно принять антидепрессанты...")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
			ply:Notify("Блять, мне плохо. Нужно срочно принять антидепрессанты, пока не стало только хуже.")
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth((lvl - ADDICTION_STATE_NEED)*2)
			ply:Notify("У меня ломка из-за отсутствия антидепрессантов.")
		end
	end,
}

PLUGIN.addictionDefinitions["AntipsychoticUser"] = {
	name = "Зависимость от нейролептиков",
	checkChance = 75,
	satisfyStruct = {{"Antipsychotic", 100, 6}},
	updateFunction 	= function(ply, oldlvl, newlvl)
		if (newlvl >= ADDICTION_STATE_HEAVYWITHDRAWAL) then
			ply:DamagePsyHealth(20)
		end

		if (newlvl < oldlvl) then
			ply:DamagePsyHealth(-10 * (oldlvl - newlvl))
		end
	end,
	tickFunction 	= function(ply, lvl)
		if (lvl >= ADDICTION_STATE_NEED) then
			ply:Notify("Мне нужно принять антипсихотические препараты...")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
			ply:Notify("Блять, мне плохо. Нужно срочно принять антипсихотики, пока не стало только хуже.")
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth((lvl - ADDICTION_STATE_NEED)*2)
			ply:Notify("У меня отходняк из-за отсутствия антипсихотиков.")
		end
	end,
}