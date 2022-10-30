ITEM.name = "Adrenaline Injector"
ITEM.description = "An injector, designed to inject adrenaline."
ITEM.longdesc = "Adrenaline has many different actions depending on the type of cells it is acting upon. However, the overall effect of adrenaline is to prepare the body for the ‘fight or flight’ response in times of stress.\nThis injector pen is much like the commercially available EpiPen, but with a stronger dosage. It can bring someone unconscious back to consciousness, or give a real rush of energy and heightened senses for a short while."
ITEM.model = "models/lostsignalproject/items/medical/adrenaline.mdl"

ITEM.sound = "stalkersound/inv_syringe.mp3"

ITEM.width = 1
ITEM.height = 1
ITEM.price = 960

ITEM.quantity = 1

ITEM.weight = 0.070
ITEM.flatweight = 0.010

ITEM.exRender = true
ITEM.iconCam = {
	pos = Vector(0, 0, 200),
	ang = Angle(90, 0, 45),
	fov = 1.7,
}

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc(tooltip, "Drug", Color(64, 224, 208))
end

ITEM.functions.use = {
    name = "Инъекция (себе)",
    icon = "icon16/pill_go.png",
    OnRun = function(item)
        local quantity = item:GetData("quantity", item.quantity)
        timer.Create(healingdelay, 1.5, 8, timer.Create(healingdelay, 1.5, 8, function()
        if item.player:Alive() then
        item.player:SetHealth(item.player:GetMaxHealth() * 0.01 + item.player:Health() 
        end
        end)
	else
	return
	end
        client:GetCharacter():SetAttrib("medical", attribute + 5)
        item.player:GetCharacter():SatisfyAddictions("StrongerDrugs")

        quantity = quantity - 1

        if (quantity >= 1) then
            item:SetData("quantity", quantity)
            return false
        end

        ix.chat.Send(item.player, "iteminternal", "делает себе инъекцию"..item.name..".", false)

        return true
    end,
    OnCanRun = function(item)
        return (!IsValid(item.entity)) and item.invID == item:GetOwner():GetCharacter():GetInventory():GetID()
    end
}

ITEM.functions.use_on = {
    name = "Инъекция (напротив)",
    icon = "icon16/pill_go.png",
    OnRun = function(item)
        local client = item.player
        local data = {}
        data.start = client:GetShootPos()
        data.endpos = data.start + client:GetAimVector() * 96
        data.filter = client
        local target = util.TraceLine(data).Entity
        local quantity = item:GetData("quantity", item.quantity)
        data = nil

        if (IsValid(target) and target:IsPlayer()) then
            timer.Create(healingdelay, 1.5, 8, timer.Create(healingdelay, 1.5, 8, function()
        if target:Alive() then
            target:SetHealth(target:GetMaxHealth() * 0.01 + target:Health() 
        end
            end)
        else
            return
        end
        
        client:GetCharacter():SetAttrib("medical", attribute + 0.08)
        target:GetCharacter():SatisfyAddictions("StrongerDrugs")
        target:Name(Character:GetName())

        quantity = quantity - 1

        if (quantity >= 1) then
            item:SetData("quantity", quantity)
            return false
        end

        ix.chat.Send(item.player, "iteminternal", "делает инъекцию "..target.name.."., false)
        return true
            
        end,
    OnCanRun = function(item)
        local cur_item = item.player.beingUsed
        if (IsValid(item.entity) or cur_item and cur_item == item) then
            cur_item = nil
            return false
        end
        
        return true
    end
end
}