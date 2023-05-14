ITEM.name = "Canned base"
ITEM.description = "This is base a food."
ITEM.longdesc = "This a long desc of base of food. SHIIIIET."
ITEM.model = "models/props_junk/popcan01a.mdl"

ITEM.width = 1
ITEM.height = 1

ITEM.weight = 0 --Не трогать. Одно что-то ебашить надо.

ITEM.category = "Food"

function ITEM:GetDescription()
	local invdesc = ""
	if self.longdesc then
		invdesc = "\n\n"..(self.longdesc)
	end

	if (self.entity) then
		return (self.description)
	else
        return (self.description..quantdesc..invdesc)
	end
end

function ITEM:PopulateTooltip(tooltip)
    if (self.PopulateTooltipIndividual) then
      self:PopulateTooltipIndividual(tooltip)
    end
end