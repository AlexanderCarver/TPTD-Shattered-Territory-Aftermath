local bands = {
	["gray"] = {Color(128,128,128),"===292th IRB: ARMORED BARRAGE CORPS Armband==="},
	["blue"] = {Color(41, 128, 185),"===CAPS: GHOST SQUAD Armband==="},
	["silver"] = {Color(192, 192, 192),"===292th IRB: SPECIAL OPERATIONS TEAM Armband==="},
	["brown"] = {Color(165,42,42),"===DUTY TEAM Armband==="},
	["orange"] = {Color(255,165,0), "===CAPS: BEAR SQUAD Armband==="}
}

function PLUGIN:PopulateCharacterInfo(client, character, tooltip)
	local band = client:GetNW2String("band",false) --string z typem opaski, czyli można rzec, że kolorem
	if band then --jako, że po zdjęciu banda NWString jest nilem to można zajebać takiego checka
		local panel = tooltip:AddRowAfter("name", "band")
		panel:SetBackgroundColor(bands[band][1]) 
		panel:SetText(bands[band][2])
		panel:SizeToContents()
    end
end	