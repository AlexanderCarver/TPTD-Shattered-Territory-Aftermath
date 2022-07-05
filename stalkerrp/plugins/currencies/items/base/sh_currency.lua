ITEM.name = "Currency Base"
ITEM.description = "Currency Base"
ITEM.model = "models/props_lab/box01a.mdl"

ITEM.currency = "default"

ITEM.unitweight = 0.001

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		draw.SimpleText(item:GetData("money", 0), "DermaDefault", w - 5, h - 5, color_white, TEXT_ALIGN_RIGHT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end

function ITEM:GetDescription()
	if (self:GetMoney() > 0) then
		return self.description.."\n\nЗдесь ровно "..ix.currency.Get(self:GetMoney(), self.currency).."."
	else
		return self.description
	end
end

function ITEM:GetMoney()
	return self:GetData("money", 0)
end

function ITEM:GetWeight()
	return self.unitweight * self:GetMoney()
end

function ITEM:SetAmount(amount)
	self:SetData("money", amount)
end

function ITEM:GiveMoney(amount)
	local money = self:GetMoney()

	money = money + amount

	self:SetData("money", money)

	if (ix.weight) then
		self:UpdateWeight()
	end

	local client = self.player or self.entity or false

	if (client and ix.currencies.GetValue(self.currency, "pickup")) then
		client:EmitSound(ix.currencies.GetValue(self.currency, "pickup"), 75, 90, 0.35)
	end

	return true
end

function ITEM:TakeMoney(amount)
	local money = self:GetMoney()

	if ((money - amount) <= 0) then
		if (ix.weight) then
			self:DropWeight()
		end

		self:Remove()
	else
		self:SetAmount(money - amount)
	end

	local client = self.player or self.entity or false

	if (client and ix.currencies.GetValue(self.currency, "drop")) then
		client:EmitSound(ix.currencies.GetValue(self.currency, "drop"), 75, 90, 0.35)
	end

	return money
end
ITEM.functions.mergeCurrency = {
	name = "Объединить",
	icon = "icon16/box.png",
	OnRun = function(item)
		local client = item.player

		local inventory = client:GetCharacter():GetInventory()
		local items = inventory:GetItemsByUniqueID("currency_"..item.currency)
		local money = 0

		for i, v in pairs(items) do
			if (v != item) then
				money = money + v:GetMoney()
				v:Remove()
			end
		end

		item:GiveMoney(money)

		return false
	end,
	OnCanRun = function(item)
		local client = item.player
		return !item.entity and #client:GetCharacter():GetInventory():GetItemsByUniqueID("currency_"..item.currency) > 1
	end
}

ITEM.functions.splitCurrency = {
	name = "Разделить",
	icon = "icon16/box.png",
	OnRun = function(item)
		local client = item.player

		local plural = ix.currencies.GetValue(item.currency, "plural")

		client:RequestString("Сколько денег Вы хотите разделить?", "Какие суммы "..plural.." Вы делите?", function(number)
			number = tonumber(number)

			if (number) then
				number = math.Round(number, 0)

				if (item:GetMoney() > number) then
					local inventory = client:GetCharacter():GetInventory()

					local success, error = inventory:Add("currency_"..item.currency, 1, {money = number})

					if (success) then
						item:TakeMoney(number)
						client:NotifyLocalized(number.." "..plural.." были разделены.")
					else
						client:NotifyLocalized("Нет возможности объединить средства.")
					end
				else
					client:NotifyLocalized("У Вас нет таких сумм для того, чтобы сделать это.")
				end
			end
		end, 0)

		return false
	end,
	OnCanRun = function(item)
		return item:GetMoney() > 1 and !item.entity
	end
}

function ITEM:SetCurrency() -- This is just here to prevent errors with the ix.currencies.Spawn function.
	return
end
