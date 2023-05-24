ITEM.name = "Рубин"
ITEM.description = "Непонятная вещица, привлекающая Ваш взгляд."
ITEM.longdesc = "Красно-жёлтый артефакт в форме пирамидки. Имеет чётко выраженный запах жжёной резины. Воздух вокруг него слегка преломляется. Довольно лёгкий, на ощупь напоминает что-то из пластика."
ITEM.model ="models/lostsignalproject/items/artefacts/flashlight.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 5000

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