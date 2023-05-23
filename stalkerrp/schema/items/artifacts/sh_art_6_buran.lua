ITEM.name = "Буран"
ITEM.description = "Скопление приятного пурпурного света в форме цветка, которое переливаясь постоянно то появляется, то исчезает."
ITEM.longdesc = "Скопление приятного пурпурного света в форме цветка, которое переливаясь постоянно то появляется, то исчезает. Не имеет запаха. На ощупь никак не ощущается. Как будто его и не существует."
ITEM.model ="models/lostsignalproject/items/artefacts/electra_flash.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 12250 

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