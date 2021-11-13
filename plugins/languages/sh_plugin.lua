PLUGIN.name = "Languages"
PLUGIN.description = "Now players can use different languages, learn them and understand."
PLUGIN.author = "AleXXX_007, DrodA"

netstream.Hook("UpdateLatAttrib", function(client, isSpeaker)
	client:GetCharacter():UpdateAttrib("lat", 0.005)
end)

if (SERVER) then
	function PLUGIN:OnCharacterCreated(client, character)
		if character:GetFaction() == "4capcommand" then
			character:SetAttributes("lat", 50)
		end
		--elseif character:GetFaction() == "belki" then
			--character:SetAttributes("elf", 100)
		--end
	end
end

local utf = {
	"Ġ","Æ","ì","Ä","φ","ï","₧","Ç",

	"Ɯ","Ĥ","Ǆ","ƒ","Ƀ","Ň","Ł","Ç",

	"¢","Ÿ","Ƀ","ӕ","Ň","Ł","Ą","Ÿ",
}

local function constructStr( tab )
	local str = ""
	for _, char in pairs( tab ) do
		str = str .. char
	end

	return str
end

string.corrupt = function( str, intensity )
	local bstr = {}
	str:gsub( "[%z\x01-\x7F\xC2-\xF4][\x80-\xBF]*", function( c ) table.insert( bstr, c ) end )
	for i=1, intensity do
		bstr[ math.random( 1, #bstr ) ] = table.Random( utf )
	end
	
	return constructStr( bstr )
end

ix.chat.Register("lat", {
	CanSay = function(speaker, text)
		if (IsValid(speaker) and speaker:GetCharacter()) then
			local lang = speaker:GetCharacter():GetAttribute("lat", 0)
			if lang >= 10 then
				return true
			end
			speaker:Notify("Вы не знаете латыни, чтобы говорить на данном языке!")
		end
		
		return false
	end,
	CanHear = ix.config.Get("chatRange", 280),
	OnChatAdd = function(speaker, text, anon, skill)
		local color
		if (LocalPlayer():GetEyeTrace().Entity == speaker) then
			color = ix.config.Get("chatListenColor")
		else
			color = ix.config.Get("chatColor")
		end	
		
		local langspeak = skill
		local msg = string.corrupt(text, utf8.len(text) - math.Round((utf8.len(text)/100)*(langspeak)))
		
		local speaker_id = speaker:GetCharacter():GetID()
		local client_id = LocalPlayer():GetCharacter():GetID()

		if client_id == speaker_id then				
			if langspeak == 40 then
				chat.AddText(color, speaker:Name().." говорит на латыни: " .. text)
			else
				chat.AddText(color, speaker:Name().." говорит на латыни: " .. msg)
			end
		else
			local langlisten = LocalPlayer():GetCharacter():GetAttribute("lat", 0)
			local msg1 = string.corrupt(msg, utf8.len(text) - math.Round((utf8.len(text) / 50) * (langlisten)))
			local msg2 = string.corrupt(text, utf8.len(text) - math.Round((utf8.len(text) / 50) * (langlisten)))
			if langspeak == 40 then
				if langlisten >= 10 then
					chat.AddText(color, speaker:Name().." говорит на латыни: " .. text)
				else
					chat.AddText(color, speaker:Name().." говорит на латыни: " .. msg2)
				end
			else
				if langlisten >= 10 then
					chat.AddText(color, speaker:Name().." говорит на латыни: " .. msg)
				else
					chat.AddText(color, speaker:Name().." говорит на латыни: " .. msg1)
				end
			end
		end
		if speaker_id ~= client_id then
			netstream.Start("UpdateLatAttrib", LocalPlayer(), speaker_id == client_id)
		else
			netstream.Start("UpdateLatAttrib", speaker, speaker_id == client_id)
		end
	end,
	prefix = {"/l"}
})