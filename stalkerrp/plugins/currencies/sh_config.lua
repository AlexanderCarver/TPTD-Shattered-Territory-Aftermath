ix.currencies.config = {
	currencies = {
		-- !! DEFAULT MUST BE INCLUDED !! --
		default = {
			-- NOTE: Switching this from true to false will cause any currency in character inventories to vanish.
			-- If this is switched from false to true the system will automatclly deplete their "digital" currency first before taking the physical.
			physical = true,
			-- The weight (for a single unit of currency), this only works with my Weight plugin. This is in kilograms.
			weight = 0.00001,
			-- The default model for the default currency, also seconds as the fallback model for other currencies.
			model = "models/illusion/eftcontainers/dollar.mdl",
			-- The name of the currency.
			name = "US Dollars",
			-- The description of the currency.
			description = "Денежная единица США, одна из основных резервных валют мира. Доллар США также имеет статус национальной валюты в некоторых других странах. Именно доллар США часто является дополнительной валютой в тех странах, где национальная валюта не является единственным законным средством платежа. Теперь, когда весь мир рухнул, Вам вряд-ли пригодится эта валюта... Или нет?",
			-- The symbol of the currency.
			symbol = "$",
			-- The currency in singular.
			singular = "dollar",
			-- The currency in plural.
			plural = "dollar's",
			-- The sound that plays when this currency is picked up or gained.
			pickup = nil,
			-- The sound that plays with this currency is dropped or lost.
			drop = nil,
		},

		euro = {
			-- NOTE: Switching this from true to false will cause any currency in character inventories to vanish.
			-- If this is switched from false to true the system will automatclly deplete their "digital" currency first before taking the physical.
			physical = true,
			-- The weight (for a single unit of currency), this only works with my Weight plugin. This is in kilograms.
			weight = 0.00001,
			-- The default model for the default currency, also seconds as the fallback model for other currencies.
			model = "models/illusion/eftcontainers/euro.mdl",
			-- The name of the currency.
			name = "European Euro",
			-- The description of the currency.
			description = "Официальная валюта 19 стран еврозоны. Является национальной единой валютой для более чем 340 миллионов европейцев. На ноябрь 2013 года в наличном обращении было 951 млрд евро, что делало эту валюту обладателем самой высокой суммарной стоимости наличных, циркулирующих во всём мире, опережая по этому показателю доллар США. Собственно, сейчас данные бумажки для Вас являются лишь отголоском былого времени. Или нет?",
			-- The symbol of the currency.
			symbol = "€",
			-- The currency in singular.
			singular = "euro",
			-- The currency in plural.
			plural = "euro's",
			-- The sound that plays when this currency is picked up or gained.
			pickup = nil,
			-- The sound that plays with this currency is dropped or lost.
			drop = nil,
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