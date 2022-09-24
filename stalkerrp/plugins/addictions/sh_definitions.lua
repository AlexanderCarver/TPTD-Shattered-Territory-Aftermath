
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
local ADDICTION_STATE_WORSTWITHDRAWAL = 11

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

PLUGIN.addictionDefinitions["LightAlcoholic"] = {
	name = "Алкоголизм",
	checkChance = 60,
	satisfyStruct = {{"CheapAlcohol", 75, 2}, {"MediumAlcohol", 100, 2}, {"ExpensiveAlcohol", 100, 4}},
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
			ply:Notify("Я чувствую, что хочу выпить алкоголь...")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth(lvl - ADDICTION_STATE_NEED)
		end
	end,
}

PLUGIN.addictionDefinitions["StrongAlcoholic"] = {
	name = "Хронический алкоголизм",
	checkChance = 60,
	satisfyStruct = {{"CheapAlcohol", 50, 1}, {"MediumAlcohol", 75, 2}, {"ExpensiveAlcohol", 100, 3}},
	updateFunction 	= function(ply, oldlvl, newlvl)
		if (newlvl >= ADDICTION_STATE_HEAVYWITHDRAWAL) then
			ply:DamagePsyHealth(35)
		end

		if (newlvl < oldlvl) then
			ply:DamagePsyHealth(-20 * (oldlvl - newlvl))
		end
	end,
	tickFunction 	= function(ply, lvl)
		if (lvl >= ADDICTION_STATE_NEED) then
			ply:Notify("Мне нужно выпить алкоголь...")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth((lvl - ADDICTION_STATE_NEED)*2)
		end
	end,
}

PLUGIN.addictionDefinitions["LightSmoker"] = {
	name = "Никотиновая зависимость",
	checkChance = 100,
	satisfyStruct = {{"WeakSmokes", 50, 1}, {"StrongSmokes", 75, 3}, {"SpecialSmokes", 100, 6}},
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
			ply:Notify("Я чувствую, что мне надо закурить...")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth((lvl - ADDICTION_STATE_NEED)*2)
		end
	end,
}

PLUGIN.addictionDefinitions["StrongSmoker"] = {
	name = "Никотиновая зависимость (хроническое)",
	checkChance = 100,
	satisfyStruct = {{"WeakSmokes", 25, 1}, {"StrongSmokes", 50, 4}, {"SpecialSmokes", 100, 6}},
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
			ply:Notify("Мне нужно перекурить...")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth((lvl - ADDICTION_STATE_NEED)*2)
		end
	end,
}

PLUGIN.addictionDefinitions["DrugUser"] = {
	name = "Наркомания",
	checkChance = 100,
	satisfyStruct = {{"PrescriptionDrugs", 75, 2}, {"Marijuana", 100, 2}, {"StrongerDrugs", 100, 6}},
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
			ply:Notify("Мне... Надо вмазаться. Срочно.")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth((lvl - ADDICTION_STATE_NEED)*2)
		end
	end,
}

--======================================================================================================--

PLUGIN.addictionDefinitions["OpiateAddiction"] = {
	name = "Зависимость от опиатов",
	checkChance = 50,
	satisfyStruct = {{"Содержит опиоиды", 75, 2}},
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
			ply:Notify("Мне очень сильно хочется принять обезболивающее...")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth((lvl - ADDICTION_STATE_NEED)*2)
		end
	end,
}

PLUGIN.addictionDefinitions["NeurolepticsAddiction"] = {
	name = "Зависимость от нейролептиков",
	checkChance = 50,
	satisfyStruct = {{"Нейролептик", 75, 2}},
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
			ply:Notify("Мне очень сильно хочется принять нейролептик... Мой разум как будто бы разрушен.")
		end

		if (lvl >= ADDICTION_STATE_WORSTWITHDRAWAL) then
			ply:DamagePsyHealth(10)
		end

		if (lvl >= ADDICTION_STATE_WITHDRAWAL) then
			ply:DamagePsyHealth((lvl - ADDICTION_STATE_NEED)*2)
		end
	end,
}