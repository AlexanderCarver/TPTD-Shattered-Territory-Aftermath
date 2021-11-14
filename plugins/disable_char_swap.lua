﻿
--[[
Copyright 2018 Zak

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
]]

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
