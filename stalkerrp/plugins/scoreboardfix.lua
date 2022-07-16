local PLUGIN = PLUGIN

PLUGIN.name = "Scoreboard Flag"
PLUGIN.author = "Apsy"

ix.flag.Add("W", "Can the player see the scoreboard?")

if ( CLIENT ) then
    function PLUGIN:CreateMenuButtons(tabs)
        if ( LocalPlayer():GetCharacter():HasFlags("W") ) then
            tabs["ADM: Игроки"] = function(container) 
                container:Add("ixScoreboard")
            end
        end
    end
end