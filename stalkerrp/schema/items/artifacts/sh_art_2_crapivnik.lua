ITEM.name = "Крапивник"
ITEM.description = "Шарообразный артефакт жёлтого цвета с зелёными вкраплениями."
ITEM.longdesc = "Шарообразный артефакт жёлтого цвета с зелёными вкраплениями. Покрыт небольшими, тупыми и сияющими жёлтым шипами. От него исходит еле уловимый запах затхлой бумаги. На ощупь схож с толстым, хорошим книжным переплётом. Оставляет неприятное ощущение ноющего зуда при контакте, которое проходит, если убрать руку."
ITEM.model ="models/lostsignalproject/items/artefacts/sandstone.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 5500

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