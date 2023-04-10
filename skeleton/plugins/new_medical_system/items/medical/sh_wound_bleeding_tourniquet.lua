ITEM.name = "Жгут"
ITEM.description = "Резинка советской эпохи, способная останавить серьёзное кровотечение."
ITEM.longdesc = "Устройство, которое используется для оказания давления на конечность или конечность, чтобы остановить поток крови. Его можно использовать в экстренных случаях, если обычные средства не помогают."
ITEM.model = "models/illusion/eftcontainers/bandage.mdl"
--перевязывает место ранения стерильным бинтом, останавливая кровотечение.

ITEM.width = 1
ITEM.height = 1
ITEM.price = 0

ITEM.quantity = 1
ITEM.restore = 60
--ITEM.psyheal = 12

ITEM.weight = 0.0004
ITEM.flatweight = 0.010

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, 0, 200),
	ang = Angle(90, 0, 45),
	fov = 1.7,
}

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc2(tooltip, "Гемостатик (эффективный)", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/bleeding.png"))

end

function CheckBleeding(player)
	if ix and ix.Wounds and ix.Wounds.GetBleeding then
		return ix.Wounds:GetBleeding(player) > 0
	else
		return false
	end
end

ITEM.functions.Apply = {
	name = "Наложить жгут",
	icon = "icon16/stalker/swallow.png",
	sound = "stalkersound/inv_bandage.mp3",
	OnRun = function(itemTable)
		local player = itemTable.player
		local quantity = itemTable:GetData("quantity", itemTable.quantity)
		local character = player:GetCharacter()

		ix.util.PlayerPerformBlackScreenAction(player, "Наложение жгута...", 6, function(player)
				if math.random() <= 0.9 then
					ix.Wounds:RemoveBleeding(player)
					player:Notify("Вы успешно остановили кровотечение.")
					ix.chat.Send(player, "me", "накладывает жгут на поврежденную конечность, туго затягивая его, чтобы остановить кровотечение.")
				else
					player:Notify("Не удалось остановить кровотечение.")
					ix.chat.Send(player, "me", "накладывает жгут на поврежденную конечность, туго затягивая его, чтобы остановить кровотечение.")
				end
			end)
		
		quantity = quantity - 1
	
		if (quantity >= 1) then
			itemTable:SetData("quantity", quantity)
			return false
		end
	
		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity)) and item.invID == item:GetOwner():GetCharacter():GetInventory():GetID()
	end
}