ITEM.name = "Canned base"
ITEM.description = "This is base a food."
ITEM.longdesc = "This a long desc of base of food. SHIIIIET."
ITEM.model = "models/props_junk/popcan01a.mdl"

ITEM.width = 1
ITEM.height = 1

ITEM.weight = 0 --Не трогать.
ITEM.flatweight = 0 --Указывать изначальный вес.

ITEM.category = "Food"

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

function ITEM:PopulateTooltip(tooltip)
    if (self.PopulateTooltipIndividual) then
      self:PopulateTooltipIndividual(tooltip)
    end
end

function ITEM:OnInstanced(invID, x, y, item)
	item:SetData("quantity", item.quantity or 1)
end

function ITEM:GetWeight()
  return self.flatweight + (self.weight * self:GetData("quantity", self.quantity))
end