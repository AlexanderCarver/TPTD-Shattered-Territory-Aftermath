ITEM.name = "Крикун"
ITEM.description = "Увесистое каменное образование формы, характерной для кристаллов. Имеет золотистый оттенок."
ITEM.longdesc = "Увесистое каменное образование формы, характерной для кристаллов. Имеет золотистый оттенок. На свету заметно как по нему проходятся мерцающие белые волны. Если приглядеться, то в них можно увидеть какие-то образы."
ITEM.model ="models/nasca/etherealsrp_artifacts/goldfish.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 14500 

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