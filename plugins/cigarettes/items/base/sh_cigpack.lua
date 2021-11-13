ITEM.name = "Cigarette Pack"
ITEM.model = Model("models/kek1ch/drink_cigar1.mdl")
ITEM.description = "A pack of cigarettes."
ITEM.category = "Курение"
ITEM.open = false
ITEM.totalcigs = 5
ITEM.new = true

function ITEM:OnInstanced()
    self:SetData("open", self.open)
    self:SetData("totalcigs", self.totalcigs)
    self:SetData("new", self.new)
end

function ITEM:GetDescription()
    if self:GetData("totalcigs", 0) == self.totalcigs and (self:GetData("open", self.open) == false) and self:GetData("new", self.new) then
        return L(self.description .. "\nПачка запакована.")
    else
        if self:GetData("open", false) == false then
            return L(self.description .. "\nПачка запакована.")
        else
            return L(self.description .. "\nВ пачке осталось " .. self:GetData("totalcigs", self.totalcigs) .. " сигарет.")
        end
    end
end

ITEM.functions.TakeCigarette = {
    name = "Вытащить одну сигарету",
    icon = "icon16/basket_put.png",
    tip = "",
    OnCanRun = function(item)
        if item:GetData("open") then
            return true
        else
            return false
        end
    end,
    OnRun = function(item)
        local character = item.player:GetCharacter()
        local client = item.player

        if item:GetData("totalcigs", 0) > 1 and item:GetData("open") then
            item:SetData("totalcigs", item:GetData("totalcigs", 0) - 1 )

            return false
        else

            return true
        end
    end
}