ITEM.name = "Food base"
ITEM.description = "A food."
ITEM.category = "food"
ITEM.model = "models/props_lab/bindergraylabel01b.mdl"
ITEM.hunger = 5
ITEM.thirst = 5
ITEM.empty = false
ITEM.functions.Eat = {
	OnRun = function(item)
	local client = item.player
	if item.hunger > 0 then client:restoreHunger(item.hunger) end
	if item.thirst > 0 then client:restoreThirst(item.thirst) end

	if item.water and not item.packaged then
		client:EmitSound("minerva/drink_water.wav", 75, 100)
	else
		client:EmitSound( "minerva/eat"..math.random(1,2)..".wav", 75, 100 )
	end

	if item.packaged and not item.water then
		client:EmitSound("minerva/open_ration_water.wav", 75, 100)
	end

	if not item.empty and item.uniqueID == 'lapsha' then client:GetCharacter():GetInventory():Add('kitchen_pack')return true end

	if not item.empty then client:GetCharacter():GetInventory():Add(item.uniqueID.."_empty") end
		return true
	end,

	OnCanRun = function(item)
		return (!item.empty)
	end,
	icon = "icon16/cup.png",
	name = "Употребить"
}
ITEM.permit = "food"