ITEM.name = "Зелёный горошек"
ITEM.description = "Консервированная пища, пригодная к употреблению."
ITEM.longdesc = "Зелёный горошек, сохранённый с помощью способа консервации, сертифицированного ГОСТ'ом. Горох заготавливают с целью длительного хранения, пытаясь максимально сохранить витамины и питательные вещества. Сами консервы вырабатывают из молодых зёрен, когда они ещё нежны и богаты сахаром и витаминами. Очень вкусно."
ITEM.model = "models/banka.mdl"
ITEM.skin = 4

ITEM.width = 1
ITEM.height = 1

ITEM.price = 375
ITEM.destroy_item = true

ITEM.thirst_amount = 5
ITEM.hunger_amount = 14
ITEM.drunk_amount = 0
ITEM.staminaAmount = 8

ITEM.quantity = 2

ITEM.weight = 0.160
ITEM.flatweight = 0.038

function ITEM:PopulateTooltipIndividual(tooltip)
    ix.util.PropertyDesc2(tooltip, "Съедобное", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/hunger.png"))
    ix.util.PropertyDesc2(tooltip, "Разогреваемое", Color(64, 224, 208), Material("vgui/ui/stalker/armorupgrades/thermprot.png"))
end

ITEM.functions.use = {
    name = "Употребить",
    icon = "icon16/stalker/eat.png",
    OnRun = function(item)
        local quantity = item:GetData("quantity", item.quantity or 1)
        
        quantity = quantity - 1
        item:SetData("quantity", quantity)
        
        local client = item.player
        local mul = COOKLEVEL[item:GetData("cooklevel", 0)][1]
        
        if mul < 1 then
            mul = 1
        end
        
        if (item.thirst_amount ~= 0) then
            client:AddThirstVar(item.thirst_amount * mul)
        end
        
        if (item.hunger_amount ~= 0) then
            client:AddHungerVar(item.hunger_amount * mul)
        end
        
        if (item.drunk_amount ~= 0) then
            client:AddDrunkVar(item.drunk_amount)
        end
        
        if (math.random(1, 5) == 3) then
            client:SetHealth(math.Clamp(client:Health() + math.random(1, 10), 0, client:GetMaxHealth()))
        end
        
        client:EmitSound("stalkersound/inv_flask.mp3", 50, 75)
        
        ix.util.PlayerPerformBlackScreenAction(item.player, "Употребление...", 4, function(player) 
			ix.chat.Send(player, "me", "достаёт консервированную банку и употребляет находящийся внутри зелёный горошек.")
		end)

        if (quantity <= 0) then
            if (item.empty_item and ix.item.Get(item.empty_item)) then
                if (!client:GetCharacter():GetInventory():Add(item.empty_item)) then
                    ix.item.Spawn(item.empty_item, client)
                    return true
                end
            end
            
            if (item.destroy_item) then
                return true
            end
        end

        return false
    end,
    
    OnCanRun = function(item)
        if (item:GetData("quantity", item.quantity or 1) <= 0) then
            return false
        end
        
        return true
    end
}