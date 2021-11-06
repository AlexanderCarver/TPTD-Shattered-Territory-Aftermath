ix.currencies.config = {
	currencies = {
		-- !! DEFAULT MUST BE INCLUDED !! --
		default = {
			-- NOTE: Switching this from true to false will cause any currency in character inventories to vanish.
			-- If this is switched from false to true the system will automatclly deplete their "digital" currency first before taking the physical.
			physical = true,
			-- The weight (for a single unit of currency), this only works with my Weight plugin. This is in kilograms.
			weight = 0.001,
			-- The default model for the default currency, also seconds as the fallback model for other currencies.
			model = "models/mark2580/gtav/mp_office_03c/accessories/cash_pile_02_1.mdl",
			-- The name of the currency.
			name = "United Corporate Euro",
			-- The description of the currency.
			description = "Корпоративная валюта из нанокорбита и микрофибры. Не горит и не сгорает, гнется, но не перегибается, и отлично держится даже в открытом космосе. Идеальный аналог бумажных денег прошлого поколения, хотя большинство предпочитает электронные платежи.",
			-- The symbol of the currency.
			symbol = "UCE",
			-- The currency in singular.
			singular = "United Corporate Euro",
			-- The currency in plural.
			plural = "United Corporate Euro's",
			-- The sound that plays when this currency is picked up or gained.
			pickup = "physics/cardboard/cardboard_box_impact_soft4.wav",
			-- The sound that plays with this currency is dropped or lost.
			drop = "physics/cardboard/cardboard_cup_impact_hard3.wav",
		},

		--[[drachma = {
			physical = true,
			weight = 0.005,
			model = "models/props_lab/box01a.mdl",
			name = "Drachma",
			description = "A currency and coin as old and as ancient as ancient history and recorded memory.",
			symbol = "D",
			singular = "drachma",
			plural = "drachma",
			pickup = nil,
			drop = nil,
		},]]--
	}
}