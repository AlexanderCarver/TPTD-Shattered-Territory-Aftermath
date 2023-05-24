ITEM.name = "Перевёртыш"
ITEM.description = "Небольшой крутящийся ярко-бирюзовый шарик, заключённый в очень упругую, непробиваемую желеобразную оболочку, слегка влажную на ощупь."
ITEM.longdesc = "Небольшой крутящийся ярко-бирюзовый шарик, заключённый в очень упругую, непробиваемую желеобразную оболочку, слегка влажную на ощупь. Слегка поблёскивает разными цветами. Каждый раз когда вы пытаетесь принюхаться и понять запах этого артефакта он меняется на абсолютно другой."
ITEM.model ="models/lostsignalproject/items/artefacts/claw.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 13000 

/*
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
*/