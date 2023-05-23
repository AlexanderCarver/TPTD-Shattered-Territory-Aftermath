ITEM.name = "Перевёртыш"
ITEM.description = "Артефакт представляет из себя красноватое каменное ядро из которого растут много закрученных в виде колеса, полупрозрачных синеватых лопастей."
ITEM.longdesc = "Артефакт представляет из себя красноватое каменное ядро из которого растут много закрученных в виде колеса, полупрозрачных синеватых лопастей. Не имеет запаха. Очень лёгкий. Лопасти свободно гнутся, но не ломаются даже если вы пытаетесь их отодрать. При попытке коснуться к ядру вы машинально отдёргиваете руку, как при ожоге. Артефакт так и норовит укатиться куда-то."
ITEM.model ="models/artefacts/gimlet.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 5000

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