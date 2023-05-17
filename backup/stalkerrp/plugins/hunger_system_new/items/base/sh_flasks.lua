
ITEM.name = "Пища"
ITEM.description = "Пища"
ITEM.category = "Пища"
ITEM.model = "models/Gibs/HGIBS.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.weight = 0.1
ITEM.hunger = 0;
ITEM.thirst = 0;

ITEM.foodtype = ""
ITEM.quantity = 1;
ITEM.canGarbage = false;
ITEM.refillable = false;

function ITEM:OnInstanced()
    if !self:GetData('hunger') then
        self:SetData('hunger', self.hunger)
    end;
    if !self:GetData('thirst') then
        self:SetData('thirst', self.thirst)
    end;
    if !self:GetData('quantity') then
        self:SetData('quantity', self.quantity)
    end;
    if !self:GetData("IsGarbage") then
        self:SetData('IsGarbage', false)
    end;
    if self:GetData('quantity', 1) == 1 && self.canGarbage then
        self:SetData("IsGarbage", true)
    end;
    
end;

ITEM.functions.OnDrink = {
    name = "Выпить",
    OnRun = function(item)
     local player = item.player;
     player:EmitSound('stalker/interface/inv_softdrink.mp3')
     player:SetHunger(math.Clamp( player:GetLocalVar('hunger') + item:GetData('hunger'), 0, 100 ))
     player:SetThirst(math.Clamp( player:GetLocalVar('thirst') + item:GetData('thirst'), 0, 100 ))

     item:SetData('quantity', 1)
     if !item.canGarbage then player:GetCharacter():RemoveCarry(item) return true;
     elseif item.canGarbage then item:SetData('IsGarbage', true) return false; end;
    end,
    OnCanRun = function(item)
        return item.foodtype == 'drink' && !item:GetData("IsGarbage")
    end
}

ITEM.functions.Refill = {
    name = "Наполнить",
    OnRun = function(item)
        local player = item.player;
        local plyArea = (ix.area.stored[player:GetArea()] or {});

        if player:WaterLevel() > 0 then
            item:SetData('thirst', item.thirst)
            item:SetData("IsGarbage", false)
            item:SetData('quantity', item.quantity)

            ix.util.PlayerPerformBlackScreenAction(item.player, "Употребление пищи...", 5, function(player) 
            
                player:EmitSound("ambient/water/water_splash"..math.random(1, 3)..".wav")
        end;
        return false;
    end,
    OnCanRun = function(item)
        local player = item.player;
        print(item:GetData('quantity') < item.quantity)
        return item.refillable && item:GetData('quantity') < item.quantity && !IsValid(item.entity) && player:WaterLevel() > 0
    end
}

function ITEM:GetWeight()
    return self.flatweight + (self.weight * self:GetData("quantity", self.quantity))
  end