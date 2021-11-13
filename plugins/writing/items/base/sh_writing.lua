local PLUGIN = PLUGIN

ITEM.name = "Writing Base"
ITEM.description = "Something that can be written on."
ITEM.price = 2
ITEM.model = Model("models/props_c17/paper01.mdl")
ITEM.width = 1
ITEM.height = 1
ITEM.classes = {CLASS_EOW}
ITEM.business = true
ITEM.bAllowMultiCharacterInteraction = true

function ITEM:GetDescription()
	local str = "Кажется, в нём что-то написано... Надо прочесть.\n %s"

	local blocked_author = self:GetData("blocked_author", 0)
	
	if blocked_author == 0 then
		str = "Кажется, в нём что-то написано... Надо прочесть.\n %s"
		return Format(str, self:GetData("blocked", "Не запечатано и не тронуто."))
	else
		str = "Кажется, в нём что-то написано... Надо прочесть.\n Сорвал печать: %s"
		
		local character = ix.char.loaded[blocked_author]
		return Format(str, character and character:GetName() or "Неизвестный")
	end
end

function ITEM:SetText(text, character)
	text = tostring(text):utf8sub(1, PLUGIN.maxLength)

	self:SetData("text", text, false, false, true)
	self:SetData("owner", character and character:GetID() or 0)
end

ITEM.functions.View = {
	OnRun = function(item)
		netstream.Start(item.player, "ixViewPaper", item:GetID(), item:GetData("text", ""), 0)
		return false
	end,

	OnCanRun = function(item)
		local owner = item:GetData("owner", 0)

		return owner != 0
	end
}

ITEM.functions.Edit = {
	OnRun = function(item)
		netstream.Start(item.player, "ixViewPaper", item:GetID(), item:GetData("text", ""), 1)
		return false
	end,

	OnCanRun = function(item)
		local owner = item:GetData("owner", 0)

		return owner == 0 or owner == item.player:GetCharacter():GetID() and item:GetData("text", "") == ""
	end
}

ITEM.functions.take.OnCanRun = function(item)
	local owner = item:GetData("owner", 0)

	return IsValid(item.entity) and (owner == 0 or owner == item.player:GetCharacter():GetID())
end

ITEM.functions.Block = { -- sorry, for name order.
	name = "Запечатать пергамент личной печатью",
	tip = "useTip",
	icon = "icon16/delete.png",
	OnRun = function(item)
		local client = item.player
		
		local character = client:GetCharacter()
		local has_wax = character:GetInventory():HasItem("wax")
	
		if has_wax then
			has_wax:Remove()
			
			item:SetData("owner", character and character:GetID() or 0)
			item:SetData("blocked", "Запечатано")
			
			client:EmitSound("npc/barnacle/neck_snap1.wav")
			item.model = "models/items/magic/scrolls/scroll_rolled.mdl"
		else
			client:Notify("У Вас отсутствует воск для запечатывания данного пергамента!")
		end
		return false
	end,
	OnCanRun = function(item)
		local owner = item:GetData("owner", 0)
		return IsValid(item.entity) and (owner == 0 or owner == item.player:GetCharacter():GetID())
	end
}

ITEM.functions.UnBlock = { -- sorry, for name order.
	name = "Сорвать печать и прочитать письмо",
	tip = "useTip",
	icon = "icon16/delete.png",
	OnRun = function(item)
	local client = item.player
		item:SetData("owner", nil)
		
		local character = client:GetCharacter()
		item:SetData("blocked_author", character and character:GetID() or 0)
		item:SetData("blocked", "Печать сорвана.")
		
		item.model = "models/items/magic/scrolls/scroll_open.mdl"
		client:EmitSound("physics/cardboard/cardboard_box_impact_bullet1.wav")
		return false
	end,
	OnCanRun = function(item)
		if item:GetData("blocked", "Печать сорвана.") == "Печать сорвана." then
			return false
		end
	end,
}