ITEM.name = "Сопля"
ITEM.description = "Зелёный прозрачный сгусток чего-то не очень плотного."
ITEM.longdesc = "Зелёный прозрачный сгусток чего-то не очень плотного. Ощущается как склизкий и липкий воздушный шарик, наполненный водой. Пахнет как слегка залежалая вишня."
ITEM.model ="models/nasca/etherealsrp_artifacts/fireball.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 17000 

ITEM.functions.use = {
	name = "Активировать",
    icon = "icon16/stalker/accept.png",
    sound = "stalkersound/inv_harv.mp3",
    OnRun = function(item)
        if(item:GetData("cooldown",0) < os.time())then
        	item:SetData("cooldown", os.time()+(3600*2) ) --2 hours

            ix.chat.Send(item.player, "me", "активирует артефакт "..item.name..", прокручивая его в руках.", false)
            ix.util.PlayerPerformBlackScreenAction(item.player, "Активация артефакта...", 4, function(player)

            end)
        end

        return false
    end,
    OnCanRun = function(item)
        return !IsValid(item.entity) and item:GetData("cooldown",0) < os.time() and item.invID == item:GetOwner():GetCharacter():GetInventory():GetID()
    end
}