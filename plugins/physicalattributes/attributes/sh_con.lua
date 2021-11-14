ATTRIBUTE.name = "Конституция"
ATTRIBUTE.description = ""

function ATTRIBUTE:OnSetup(client, value)
	client:SetMaxHealth(ix.config.Get("defaultMaxHealth") + (value * ix.config.Get("constitutionMultiplier")))
end