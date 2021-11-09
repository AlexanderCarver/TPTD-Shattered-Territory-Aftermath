ITEM.name = "Pack of American Cigarettes"
ITEM.model = Model("models/kek1ch/drink_cigar0.mdl")
ITEM.description = "A pack of pre-war American cigarettes."
ITEM.category = "Recreation"
ITEM.open = false
ITEM.totalcigs = 10
ITEM.price = 15
ITEM.new = true

ITEM.functions.TakeCigarette = {
    name = "Take Cigarette",
    tip = "Take a cigarette.",
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
	name = "Open Cigarettes",
	tip = "Open the pack of cigarettes.",
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