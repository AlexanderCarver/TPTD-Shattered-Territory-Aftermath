local PLUGIN = PLUGIN

PLUGIN.name = "Disable Character Swap"
PLUGIN.author = "Zak"
PLUGIN.description = "Prevents players from switching characters when enabled."

ix.config.Add("charSwapDisabled", false, "Should switching characters be disabled?", nil, {
	category = "characters"
})

ix.lang.AddTable("russian", {
	cmdToggleCharSwap = "Переключение режима выбора игровых персонажей."
})

do
	local COMMAND = {
		description = "@cmdToggleCharSwap",
		superAdminOnly = true
	}

	function COMMAND:OnRun(client, language)
		local newValue = !ix.config.Get("charSwapDisabled")

		ix.config.Set("charSwapDisabled", newValue)
		ix.util.Notify(newValue and "Свободное переключение персонажей было отключено." or "Свободное переключение персонажей было включено. Вы можете спокойно менять их в любое время.")
	end

	ix.command.Add("ToggleCharSwap", COMMAND)
end

if (SERVER) then
	function PLUGIN:CanPlayerUseCharacter(client, character)
		local currentCharacter = client:GetCharacter()

		if (currentCharacter and ix.config.Get("charSwapDisabled") == true and !client:IsAdmin()) then
			return false
		end
	end
end
