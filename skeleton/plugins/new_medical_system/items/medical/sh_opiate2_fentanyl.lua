ITEM.name = "Фентанил"
ITEM.description = "Одноразовый шприц с лекарственным средством в герметичной упаковке."
ITEM.longdesc = "Опиоидный анальгетик, мощный агонист μ-опиоидных рецепторов. Выпускается в виде цитрата. Применяется главным образом как анальгетик в анестезиологии."
ITEM.model = "models/lostsignalproject/items/medical/glucose.mdl"

ITEM.sound = "stalkersound/inv_syringe.mp3"

ITEM.width = 1
ITEM.height = 1
ITEM.price = 1875

ITEM.quantity = 1
ITEM.restore = 60
ITEM.toxin = 50
--ITEM.psyheal = 12

ITEM.weight = 0.0015
ITEM.flatweight = 0.015

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, 0, 200),
	ang = Angle(90, 0, 45),
	fov = 1.7,
}

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc2(tooltip, "Болеутоляющее", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/hpregen.png"))
    ix.util.PropertyDesc2(tooltip, "Сильный опиат", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/psi.png"))
	ix.util.PropertyDesc2(tooltip, "Инъекция", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/impact.png"))
end

ITEM.functions.use = {
	name = "Сделать инъекцию",
	icon = "icon16/stalker/swallow.png",
	OnRun = function(item)
		local quantity = item:GetData("quantity", item.quantity)

		ix.util.PlayerPerformBlackScreenAction(item.player, "Инъекция...", 2, function(player) 
			player:AddBuff("buff_fastheal", 45, { amount = item.restore/60 }) --Делим на два.
			player:IncreaseDrunkLevel(item.toxin)
            player:GetCharacter():SatisfyAddictions("UniversalDrug")
        end)

		ix.chat.Send(item.player, "iteminternal", "достаёт шприц с фентанилом и делает себе инъекцию, заметно зажмурившись.", false)


		quantity = quantity - 1

		if (quantity >= 1) then
			item:SetData("quantity", quantity)
			return false
		end


		return true
	end,
	OnCanRun = function(item)
		return (!IsValid(item.entity)) and item.invID == item:GetOwner():GetCharacter():GetInventory():GetID()
	end
}