ITEM.name = "Audio Player Base"
ITEM.model = "models/devcon/mrp/props/casette.mdl"
ITEM.cassete = true
ITEM.width = 1
ITEM.height = 1


function ITEM:GetDescription()
    return "Кассета с записью: " .. self.name .. "\nЧтобы её включить, явно потребуется проигрыватель"
end