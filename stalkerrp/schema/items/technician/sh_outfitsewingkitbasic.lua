ITEM.name = "Набор для шитья одежды"
ITEM.model = "models/lostsignalproject/items/repair/sewing_kit_a.mdl"
ITEM.description = "Общие инструменты и материалы для ухода за поврежденной одеждой."
ITEM.longdesc = "Легкий швейный набор, состоящий из катушки для ткани, нескольких стальных игл и ножниц. С его помощью можно зашивать пулевые отверстия или разрывы в мягких тканях спецодежды. Его практическое применение ограничено из-за малой длины нити и невысокой прочности игл, поэтому при более серьезных повреждениях набор будет бесполезен. По той же причине он совместим лишь с несколькими материалами. Тем не менее, настоятельно рекомендуется всегда использовать все, что доступно, чтобы сделать набор более эффективным."
ITEM.flag = "A"
ITEM.price = "3000"
ITEM.repairAmount = 5
ITEM.repairTreshhold = 75
ITEM.quantity = 3
ITEM.sound = "stalkersound/inv_repair_sewing_kit_fast.mp3"

ITEM.functions.use = {
	name = "Использовать",
	tip = "useTip",
	icon = "icon16/stalker/repair.png",
	isMulti = true,
	multiOptions = function(item, client)
		local targets = {}
		local char = client:GetCharacter()
		
		
		if (char) then
			local inv = char:GetInventory()

			if (inv) then
				local items = inv:GetItems()

				for k, v in pairs(items) do
					if (v.isBodyArmor or v.isHelmet or v.isGasmask) and item.repairTreshhold < v:GetData("durability", 0) and v:GetData("durability", 0) < 100 then
						table.insert(targets, {
							name = L("Починка "..v.name.." с прочностью "..math.Round(v:GetData("durability",0), 2).." и процентом стойкости "..math.Clamp(math.Round(v:GetData("durability",0), 2)+item.repairAmount*(1+(client:GetCharacter():GetAttribute("technician", 0)/100)), 0, 100).." процент стойкости."),
							data = {v:GetID()},
						})
					else
						continue
					end
				end
			end
		end

		return targets
		end,
	OnCanRun = function(item)				
		return (!IsValid(item.entity))
	end,
	OnRun = function(item, data)
		local client = item.player
		local char = client:GetCharacter()
		local inv = char:GetInventory()
		local items = inv:GetItems()
		local target = data
		local comp = client:GetCharacter():GetInventory():HasItem("component")
		
		for k, invItem in pairs(items) do
			if (data[1]) then
				if (invItem:GetID() == data[1]) then
					target = invItem

					break
				end
			else
				client:Notify("Вы не выбрали броню.")
				return false
			end
		end
		
		if target:GetData("equip") != true then
			if target:GetData("durability",100) > item.repairTreshhold then
				target:SetData("durability", math.Clamp(target:GetData("durability",100) + item.repairAmount*(1+(client:GetCharacter():GetAttribute("technician", 0)/100)), 0, 100))
				client:Notify(target.name.." successfully repaired.")
				comp:SetData("quantity", comp:GetData("quantity") - (target.repairCost/5)*(1-(client:GetCharacter():GetAttribute("technician", 0)/100)))
				item.player:EmitSound(item.sound or "items/battery_pickup.wav")
				if item:GetData("quantity",100) > 1 then
					item:SetData("quantity", item:GetData("quantity",100) - 1)
					return false
				else
					return true
				end
			else
				client:Notify("Одежда слишком сильно повреждена.")
				return false
			end
		else
			client:Notify("Снимите снаряжение!")
			return false	
		end
	end,
}

function ITEM:GetDescription()
	local quant = self:GetData("quantity", 1)
	local str = self.description.."\n"..self.longdesc.."\n\n"

	local customData = self:GetData("custom", {})
	if(customData.desc) then
		str = customData.desc
	end

	if (self.entity) then
		return self.description.."\n \nThis tool has "..math.Round(quant).." uses left durability."
	else
        return (str.."Количество восстановленной прочности: "..self.repairAmount.."% \nМинимальный процент стойкости: "..self.repairTreshhold.."%".."\n \nЭтот инструмент имеет "..quant.."/"..self.quantity.." использований.")
	end
end

function ITEM:GetName()
	local name = self.name
	
	local customData = self:GetData("custom", {})
	if(customData.name) then
		name = customData.name
	end
	
	return name
end

ITEM.functions.Custom = {
	name = "Изменить",
	tip = "Customize this item",
	icon = "icon16/wrench.png",
	OnRun = function(item)		
		ix.plugin.list["customization"]:startCustom(item.player, item)
		
		return false
	end,
	
	OnCanRun = function(item)
		local client = item.player
		return client:GetCharacter():HasFlags("N") and !IsValid(item.entity)
	end
}

ITEM.functions.Inspect = {
	name = "Осмотр",
	tip = "Inspect this item",
	icon = "icon16/picture.png",
	OnClick = function(item, test)
		local customData = item:GetData("custom", {})

		local frame = vgui.Create("DFrame")
		frame:SetSize(540, 680)
		frame:SetTitle(item.name)
		frame:MakePopup()
		frame:Center()

		frame.html = frame:Add("DHTML")
		frame.html:Dock(FILL)
		
		local imageCode = [[<img src = "]]..customData.img..[["/>]]
		
		frame.html:SetHTML([[<html><body style="background-color: #000000; color: #282B2D; font-family: 'Book Antiqua', Palatino, 'Palatino Linotype', 'Palatino LT STD', Georgia, serif; font-size 16px; text-align: justify;">]]..imageCode..[[</body></html>]])
	end,
	OnRun = function(item)
		return false
	end,
	OnCanRun = function(item)
		local customData = item:GetData("custom", {})
	
		if(!customData.img) then
			return false
		end
		
		if(item.entity) then
			return false
		end
		
		return true
	end
}

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		draw.SimpleText(item:GetData("quantity", 1).."/"..item.quantity, "stalkerregularinvfont", 3, h - 1, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end

function ITEM:OnInstanced(invID, x, y)
	if !self:GetData("quantity") then
		self:SetData("quantity", self.quantity)
	end
end