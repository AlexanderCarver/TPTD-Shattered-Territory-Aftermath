util.AddNetworkString("CookingMod/IsSuccess")

netstream.Hook("Cook", function(ply, food)
	local item = ix.item.list[food]
    if not item.HasCookable then return end

    local char = ply:GetCharacter()
	local inv = char:GetInventory()
	local cooking_result = ix.item.list[item.CookResult]

    inv:Remove(inv:HasItem(food):GetID())

    local success = math.random(0, 100) <= math.min((cooking_result.cooking_chance or 75) + char:GetAttribute("cum", 0), 100)

    net.Start("CookingMod/IsSuccess")
    	net.WriteBool(success)
    net.Send(ply)

    if not success then return end

    timer.Simple(cooking_result.cooking_time or 5, function()
    	if not inv then return end
    	inv:Add(item.CookResult)
    end)
end)