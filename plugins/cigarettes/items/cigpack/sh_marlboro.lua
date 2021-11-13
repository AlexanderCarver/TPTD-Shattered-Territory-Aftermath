ITEM.name = "Пачка сигарет «Marlboro»"
ITEM.description = "Пачка сигарет, которые могут помочь утолить Вашу боль... Или забыться."
ITEM.model = Model("models/closedboxshib.mdl")
ITEM.category = "Курение"
ITEM.open = false
ITEM.totalcigs = 10
ITEM.price = 6
ITEM.new = true

ITEM.functions.TakeCigarette = {
    name = "Достать сигарету",
    tip = "",
    icon = "icon16/brick.png",
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

ITEM.functions.OpenCigarettes = {
	name = "Распаковать",
	tip = "",
    icon = "icon16/door_open.png",
    OnCanRun = function(item)
        if item:GetData("open") == false then
            return true
        else
            return false
        end
    end,
    OnRun = function(item)
    	item:SetData("open", true)
    	return false
    end
}
ITEM.postHooks.TakeCigarette = function(item, result)
    local index = item:GetData("id")

    if !(item.player:GetCharacter():GetInventory():Add("cigarette", 1)) then
        ix.item.Spawn("cigarette", item.player)
    end
end