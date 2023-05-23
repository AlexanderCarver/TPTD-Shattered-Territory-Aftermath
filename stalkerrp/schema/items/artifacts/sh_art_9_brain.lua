ITEM.name = "Мозг"
ITEM.description = "Маленький, мягкий комочек нежно-красного цвета, от которого отходят много тонких и таких же мягких отростков, похожих на иглы."
ITEM.longdesc = "Маленький, мягкий комочек нежно-красного цвета, от которого отходят много тонких и таких же мягких отростков, похожих на иглы. Обладает приятным, цветочным запахом. У вас рядом с ним появляется лёгкое желание держать этот артефакт рядом с собой и никому не отдавать."
ITEM.model ="models/artefacts/heart.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 24000 

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