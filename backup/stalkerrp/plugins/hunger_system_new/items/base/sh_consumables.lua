ITEM.name = "Еда"
ITEM.description = "Пища"
ITEM.model = "models/props/cs_office/Cardboard_box02.mdl"
ITEM.category = "Food and Liquids"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 0

ITEM.alcohol = 0
ITEM.hunger = 0
ITEM.thirst = 0
ITEM.quantity = 1
ITEM.refillable = false

ITEM.weight = 0
ITEM.flatweight = 0

function ITEM:GetDescription()
	local quant = self:GetData("quantity", self.ammoAmount or self.quantity or 0)
	local quantdesc = ""
	local invdesc = ""
	if self.longdesc then
		invdesc = "\n\n"..(self.longdesc)
	end

	if self.quantdesc then
		quantdesc = "\n\n"..Format(self.quantdesc, quant)
	end

	if (self.entity) then
		return (self.description)
	else
        return (self.description..quantdesc..invdesc)
	end
end

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		local cooked = item:GetData("cooked", 1)
		local quantity = item:GetData("quantity", item.quantity)

		draw.SimpleText(quantity.."/"..item.quantity, "ixSmallFont", 3, h - 1, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end

function ITEM:PopulateTooltip(tooltip)
    if (!self.entity and (self.thirst > 0 or self.isDrink)) then
        ix.util.PropertyDesc(tooltip, "Съедобное (утоляет жажду)", Color(64, 224, 208))
    elseif (!self.entity and self.hunger > 0) then
        ix.util.PropertyDesc(tooltip, "Съедобное (утоляет голод)", Color(64, 224, 208))
    elseif (!self.entity and self.thirst > 0 and self.hunger > 0) then
        ix.util.PropertyDesc(tooltip, "Съедобное (можно употребить)", Color(64, 224, 208))
    end

    if (self.PopulateTooltipIndividual) then
      self:PopulateTooltipIndividual(tooltip)
    end
end

function ITEM:DecideFunction()
	if ITEM.thirst > 0 or ITEM.isDrink then
		ITEM.functions.use = {
			name = "Выпить",
			OnCanRun = function(item)

				return (!IsValid(item.entity)) and item.invID == item:GetOwner():GetCharacter():GetInventory():GetID()
			end,
			OnRun = function(item)
				local hunger = item.player:GetCharacter():GetData("hunger", 100)
				local thirst = item.player:GetCharacter():GetData("thirst", 100)
				local client = item.player

				ix.util.PlayerPerformBlackScreenAction(item.player, "Употребление жидкости...", 5, function(player) 
					player:SetHunger(hunger + item.hunger)
					player:SetThirst(thirst + item.thirst)
				end)

				local quantity = item:GetData("quantity", item.quantity)
				
				item.player:UpdateThirstState(item.player)

				if item.alcohol > 0 then
					item.player:IncreaseDrunkLevel(item.alcohol)
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					item:SetData("quantity", quantity)
					return false
				end
			end
		}
	elseif ITEM.hunger > 0 then
		ITEM.functions.use = {
			name = "Съесть",
			icon = "icon16/stalker/eat.png",
			OnCanRun = function(item)

				return (!IsValid(item.entity)) and item.invID == item:GetOwner():GetCharacter():GetInventory():GetID()
			end,
			OnRun = function(item)
				local hunger = item.player:GetCharacter():GetData("hunger", 100)
				local thirst = item.player:GetCharacter():GetData("thirst", 100)
				local client = item.player

				ix.util.PlayerPerformBlackScreenAction(item.player, "Употребление пищи...", 5, function(player) 
					player:SetHunger(hunger + item.hunger)
					player:SetThirst(thirst + item.thirst)
				end)

				local quantity = item:GetData("quantity", item.quantity)
				item.player:UpdateHungerState(item.player)
				if item.empty then
					local inv = item.player:GetCharacter():GetInventory()
					inv:Add(item.empty)
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					item:SetData("quantity", quantity)
					return false
				end
			end
		}
	elseif ITEM.hunger > 0 and ITEM.thirst > 0 then
		ITEM.functions.use = {
			name = "Употребить",
			icon = "icon16/stalker/eat.png",
			OnCanRun = function(item)

				return (!IsValid(item.entity)) and item.invID == item:GetOwner():GetCharacter():GetInventory():GetID()
			end,
			OnRun = function(item)
				local hunger = item.player:GetCharacter():GetData("hunger", 100)
				local thirst = item.player:GetCharacter():GetData("thirst", 100)
				local client = item.player

				ix.util.PlayerPerformBlackScreenAction(item.player, "Употребление пищи...", 5, function(player) 
					player:SetHunger(hunger + item.hunger)
					player:SetThirst(thirst + item.thirst)
				end)

				local quantity = item:GetData("quantity", item.quantity)
				item.player:UpdateHungerState(item.player)
				item.player:UpdateThirstState(item.player)
				if item.empty then
					local inv = item.player:GetCharacter():GetInventory()
					inv:Add(item.empty)
				end

				quantity = quantity - 1
				
				if (quantity >= 1) then
					item:SetData("quantity", quantity)
					return false
				end
			end
		}
	end	
end

function ITEM:GetWeight()
  return self.flatweight + (self.weight * self:GetData("quantity", self.quantity))
end