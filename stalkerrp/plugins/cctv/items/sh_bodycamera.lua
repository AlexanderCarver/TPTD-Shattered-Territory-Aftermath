ITEM.name = "Нательная камера MIUFLY 1296P"
ITEM.description = "Нательная камера или переносная камера - это переносная система записи. Нательные камеры имеют множество применений и конструкций, из которых наиболее известно использование в составе полицейского оборудования. Данная камера будет весьма полезной при фиксации Ваших злоключений."
ITEM.model = "models/illusion/eftcontainers/wirelesstransmitter.mdl"
ITEM.height = 1
ITEM.width = 1
ITEM.weight = 0.285

ITEM.isBodycamera = true

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		if item:GetData("equip") then
			surface.SetDrawColor(110, 255, 110, 100)
		else
			surface.SetDrawColor(255, 110, 110, 100)
		end

		surface.DrawRect(w - 14, h - 14, 8, 8)
	end
	
	function ITEM:PopulateTooltip(tooltip)
		if (self:GetData("equip")) then
			local name = tooltip:GetRow("name")
			name:SetBackgroundColor(derma.GetColor("Success", tooltip))
		end
	end
end

ITEM:Hook("drop", function(item)
	if (item:GetData("equip")) then
		item:SetData("equip", nil)
		item:GetOwner():SetNetVar("Bodycamera", nil)
	end
end)

function ITEM:OnLoadout()
	if (self:GetData("equip")) then
		self.player:SetNetVar("Bodycamera", true)
	else
		self.player:SetNetVar("Bodycamera", nil)
	end
end

ITEM.functions.Equip = {
	name = "Переключить",
	icon = "icon16/connect.png",
	OnRun = function(item)
		local client = item.player
		client:EmitSound("buttons/button14.wav", 70, 150)
		
		if (item:GetData("equip")) then
			item:SetData("equip", nil)
			client:SetNetVar("Bodycamera", nil)
		else
			item:SetData("equip", true)
			client:SetNetVar("Bodycamera", true)
		end
		
		client = nil

		return false
	end,
	OnCanRun = function(item)
		if (IsValid(item.entity)) then
			return false
		end
		
		local items = item.player:GetCharacter():GetInventory():GetItems()

		for _, v in pairs(items) do
			if (v.id != item.id) then
				local itemTable = ix.item.instances[v.id]

				if (!itemTable) then
					client:NotifyLocalized("tellAdmin", "wid!xt")
					return false
				else
					if (itemTable.isBodycamera and itemTable:GetData("equip")) then
						client:Notify("Вы не можете поставить на себя больше одной нательной камеры!")
						return false
					end
				end
			end
		end
	end
}