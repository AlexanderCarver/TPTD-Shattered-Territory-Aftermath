ITEM.name = "Зажигалка"
ITEM.description = "Обычная зажигалка на жидком газе с фитилем и клапаном. Используется при зажигании чего-либо."
ITEM.model = "models/mark2580/gtav/mp_apa_low/lobby/lighter_01.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.price = 25

ITEM.functions.use = { -- sorry, for name order.
	name = "Разжечь костер",
	icon = "icon16/fire.png",
	OnRun = function(item)
		local client = item.player
		local trace = client:GetEyeTraceNoCursor()
		if trace.HitPos:Distance( client:GetShootPos() ) <= 192 then
			if (trace.HitPos) then
				local char = client:GetCharacter()
				local has_item = char:GetInventory():HasItem("wood")
				
				if has_item then
					has_item:Remove()
					
					local fire = ents.Create("ix_campfire")
					fire:SetPos(trace.HitPos)
					fire:Spawn()
					client:Notify("Нажмите [ALT+E], чтобы убрать костер.")
				else
					client:Notify("У Вас отсутствуют материалы, необходимые для разведения костра!")
					return false
				end
			end
		else
			client:Notify("Вы не можете разжечь костер так далеко!")
		end;
		return false
	end,
}
