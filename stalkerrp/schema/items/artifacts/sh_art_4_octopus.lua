ITEM.name = "Осьминог"
ITEM.description = "Из этого тёмного артефакта тянется много двигающихся переплетающихся отростков, которые заканчиваются утолщениями."
ITEM.longdesc = "Из этого тёмного артефакта тянется много двигающихся переплетающихся отростков, которые заканчиваются утолщениями. Загадочно переливается сияющим золотистым светом. Очень упругий на ощупь, слегка холодный. Имеет неописуемый запах, который вызывает у вас ассоциацию с прошлым, почему-то."
ITEM.model ="models/artefacts/grape.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 22500 

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