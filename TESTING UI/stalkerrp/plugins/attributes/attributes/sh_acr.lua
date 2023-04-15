ATTRIBUTE.name = "Акробатика"
ATTRIBUTE.description = ""

function ATTRIBUTE:OnSetup(client, value)
	client:SetJumpPower(200 + value / 2)
end


