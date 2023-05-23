ITEM.name = "Крикун"
ITEM.description = "Два, прижатых очень плотно друг к другу объекта, напоминающие сливы, но с которых была срезана кожа так, чтобы это походило на чьи-то глаза."
ITEM.longdesc = "Два, прижатых очень плотно друг к другу объекта, напоминающие сливы, но с которых была срезана кожа так, чтобы это походило на чьи-то глаза. Очень твёрдые на ощупь, как камни, не имеют запаха."
ITEM.model ="models/lostsignalproject/items/artefacts/spaika.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 7600 

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