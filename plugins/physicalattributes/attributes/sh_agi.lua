﻿ATTRIBUTE.name = "Ловкость"
ATTRIBUTE.description = ""

function ATTRIBUTE:OnSetup(client, value)
	client:SetRunSpeed(ix.config.Get("runSpeed") + (value * ix.config.Get("agilityMultiplier")))
end
