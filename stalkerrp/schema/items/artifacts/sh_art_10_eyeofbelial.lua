ITEM.name = "Око Белиала"
ITEM.description = "Артефакт, похожий на сферу пламени."
ITEM.longdesc = "Артефакт, похожий на сферу пламени. Пахнет пригоревшим мясом. На ощупь напоминает очень затвердевший комок идеально ровного пластилина. Чем дольше он касается вашей кожи, тем горячее он становится. У вас рядом с ним слегка кружится голова, а также появляется чувство, что за вами кто-то наблюдает."
ITEM.model ="models/lostsignalproject/items/artefacts/dragon_eye.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 35000 

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