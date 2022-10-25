ATTRIBUTE.name = "Психика"
ATTRIBUTE.description = ""

function ATTRIBUTE:OnSetup(client, value)
	client:SetMaxHealth(ix.char.GetLocalVar("PsyHP") + (value * ix.config.Get("psyMultiplier")))
end