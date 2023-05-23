ITEM.name = "Кбольшая Пемза"
ITEM.description = "Артефакт, которой выглядит как камень большого размера со странным, фиолетовым следом в некоторых местах."
ITEM.longdesc = "Артефакт, которой выглядит как камень большого размера со странным, фиолетовым следом в некоторых местах. Напоминает стекло при прикосновении. Имеет множество дыр и полостей. Очень тяжёлый."
ITEM.model ="models/artefacts/sponge.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 6000

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