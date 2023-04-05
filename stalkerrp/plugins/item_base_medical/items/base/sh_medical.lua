ITEM.name = "Medical Stuff"
ITEM.model = "models/healthvial.mdl"
ITEM.width = 1
ITEM.height = 1
ITEM.description = "A Medical Stuff"
ITEM.healAmount = 5
ITEM.healSeconds = 3
ITEM.category = "Медикаменты"

ITEM.medAttr = 0

-- Через сколько секунд, полностью вылечится персонаж от инфекции.
ITEM.healInfectationSeconds = 0

-- Если true то предмет будет воскрешающим.
ITEM.healRevive = false

-- Сколько секунд будет занимать реанимация
ITEM.healReviveSeconds = 5

if CLIENT then
	function ITEM:GetDescription()
		local medical = LocalPlayer():GetCharacter():GetAttribute("medical", 0)
		local heal_hp = math.Round(self.healAmount / self.healSeconds + medical / 2, 1)
		
		if self.medAttr > 0 then
			return L(self.description .. "\n Вы не знаете дозировку применения этого препарата. \n Восстановливает примерно " .. heal_hp .. " процентов от текущего физического состояния.")
		else
			return L(self.description .. "\n Восстанавливает примерно " .. heal_hp .. " процентов от текущего физического состояния.")
		end
	end
end

local function healPlayer(client, target, amount, seconds, attribute)
	if (client:Alive() and target:Alive()) then
		hook.Run("OnPlayerHeal", client, target, amount, seconds)

		local id = "ixHeal_"..FrameTime()
		timer.Create(id, 1, seconds, function()
			if (!IsValid(target) or !target:Alive()) then
				timer.Remove(id)	
			end

			target:SetHealth(math.Clamp(target:Health() + (amount/seconds) + attribute/2, 0, target:GetMaxHealth()))
		end)
		
		client:GetCharacter():SetAttrib("medical", attribute + 0.08)
	end
end

ITEM:Hook("drop", function(item)
	local owner = item.GetOwner and item:GetOwner()
	
	if (IsValid(owner) and owner.beingUsed == item) then
		owner = nil
		return
	end
end)

function ITEM:CanTransfer()
	local owner = self.GetOwner and self:GetOwner()
	
	if (IsValid(owner) and owner.beingUsed == self) then
		owner = nil
		return false
	end
end

ITEM.functions.use_revive = {
	name = "Оказать ПМП",
	icon = "icon16/lighting.png",
	sound = "revive.wav",
	OnRun = function(item_obj)
		local client = item_obj.player

		if (item_obj.healRevive and IsValid(client) and client:IsPlayer() and client:Alive()) then
			local data = {}
			data.start = client:GetShootPos()
			data.endpos = data.start + client:GetAimVector() * 96
			data.filter = client
			
			local target = util.TraceLine(data).Entity
			data = nil

			if (IsValid(target) and target:GetClass() == "prop_ragdoll" and IsValid(target.ragdoll)) then
				local ragdoll = target.ragdoll

				if ragdoll:IsPlayer() and !ragdoll:Alive() then
					local medical = client:GetCharacter():GetAttribute("medical", 0)
					local add = medical / 4 + (item_obj.healAmount or 0) * 0.2

					if add >= 30 then
						client:ChatPrint("Вы не сомневаетесь в успешности ПМП.")
					elseif add < 30 and add >= 20 then
						client:ChatPrint("Вы осознаёте, что существует маленький шанс неудачи в оказании ПМП.")
					elseif add < 20 and add >= 10 then
						client:ChatPrint("Вы осознаете, что сильно рискуете, приводя в чувства раненного.")
					else
						client:ChatPrint("Вы очень сильно рискуете, приводя в чувства раненного.")
					end

					local force = math.random(1, 100) + add
					client.beingUsed = item_obj

					local revive_sec = item_obj.healReviveSeconds or 5
					ragdoll:SetAction("Вам пытаются оказать первую помощь...", revive_sec)

					client:SetAction("Вы оказываете первую помощь: " .. ragdoll:GetName(), revive_sec)
					client:DoStaredAction(target, function()
						if IsValid(ragdoll) and !ragdoll:Alive() then
							client.beingUsed = nil
							item_obj:Remove()

							if force >= 30 then
								client:Chat_Emote("succrevive")

								ragdoll:SetNetVar("deathTime", nil)
								ragdoll:Spawn()
								ragdoll:SetPos(target:GetPos())

								local positions = ix.util.FindEmptySpace(ragdoll, {client, ragdoll})

								for _, v in ipairs(positions) do
									ragdoll:SetPos(v)

									if (!ragdoll:IsStuck()) then
										break
									end
								end

								ragdoll:SetHealth(math.min(50 * 0.01 * force, ragdoll:GetMaxHealth()))

								client:GetCharacter():SetAttrib("medical", medical + math.Round(math.random() * 0.3, 2))

								if IsValid(target) then
									target:Remove()
								end
							else
								client:Chat_Emote("failrevive")
								ragdoll:SetNetVar("deathStartTime", CurTime())
								ragdoll:SetNetVar("deathTime", CurTime() + ix.config.Get("spawnTime", 5))
								target:Remove()
							end
						end
					end, revive_sec, function()
						client:SetAction()
						if IsValid(ragdoll) then ragdoll:SetAction() end
						
						client.beingUsed = nil
					end)
				end
			end
		end

		return false
	end,
	OnCanRun = function(item_obj)
		if IsValid(item_obj.entity) or !item_obj.healRevive then return false end
		
		local client = item_obj.player

		local data = {}
		data.start = client:GetShootPos()
		data.endpos = data.start + client:GetAimVector() * 96
		data.filter = client
		
		local target = util.TraceLine(data).Entity
		data = nil
		
		return IsValid(target) and target:GetClass() == "prop_ragdoll"
	end
}

ITEM.functions.use = {
	name = "Употребить",
	icon = "icon16/pill.png",
	sound = "takepills1.wav",
	OnRun = function(item)
		local client = item.player
		if (IsValid(client)) then
			local medical = client:GetCharacter():GetAttribute("medical", 0)
			
			if medical >= item.medAttr then
				client.beingUsed = item
				
				client:SetAction("Применение...", 12, function()
					if (not IsValid(client) or not client:Alive()) then 
						client.beingUsed = nil
						return 
					end
				
					client:ScreenFade(1, Color(153, 0, 0, 100), .4, 0)
				
					healPlayer(client, client, item.healAmount, item.healSeconds, medical)
					
					if item.healInfectationSeconds > 0 and client.HealInfectation then
						client:HealInfectation(item.healInfectationSeconds)
					end
					
					client.beingUsed = nil
					item:Remove()
				end)
			else
				client:Notify("У Вас отсутствуют знания, необходимые для применения данного препарата!")
			end
		end
		
		return false
	end,
	
	OnCanRun = function(item)
		local cur_item = item.player.beingUsed
		if cur_item and cur_item == item then
			cur_item = nil
			return false
		end
		
		return true
	end
}

ITEM.functions.use_on = {
	name = "Вылечить",
	icon = "icon16/pill_go.png",
	OnRun = function(item)
		local client = item.player
		
		local data = {}
		data.start = client:GetShootPos()
		data.endpos = data.start + client:GetAimVector() * 96
		data.filter = client
		
		local target = util.TraceLine(data).Entity
		data = nil

		if (IsValid(target) and target:IsPlayer()) then
			local medical = client:GetCharacter():GetAttribute("medical", 0)
			
			if medical >= item.medAttr then
				client.beingUsed = item
				client:EmitSound("takepills1.wav", 100, 70)
				
				client:SetAction("Применение...", 8)
				client:DoStaredAction(target, function()
					local dist = client:GetPos():Distance(target:GetPos())
					
					if (dist < 128) then
						client:ScreenFade(1, Color(153, 0, 0, 100), .4, 0)
						target:ScreenFade(1, Color(153, 0, 0, 100), .4, 0)
					
						healPlayer(client, target, item.healAmount, item.healSeconds, medical)
						
						if item.healInfectationSeconds > 0 and target.HealInfectation then
							target:HealInfectation(item.healInfectationSeconds)
						end
						
						client.beingUsed = nil
						item:Remove()
					else
						return
					end
					
				end, 3, function()
					client:SetAction()
					target:SetAction()
					
					client.beingUsed = nil
				end)
				
				target:SetAction("Применение...", 12)
			else
				client:Notify("Вы не знаете, как применять данный препарат.")
			end
		end

		return false
	end,
	OnCanRun = function(item)
		local cur_item = item.player.beingUsed
		if (IsValid(item.entity) or cur_item and cur_item == item) then
			cur_item = nil
			return false
		end
		
		return true
	end
}

---------------------------------------

function ITEM:GetDescription()
	local quant = self:GetData("quantity", self.ammoAmount or self.quantity or 0)
	local quantdesc = ""
	local invdesc = ""
	if self.longdesc then
		invdesc = "\n\n"..(self.longdesc)
	end

	if self.quantdesc then
		quantdesc = "\n\n"..Format(self.quantdesc, quant)
	end

	if (self.entity) then
		return (self.description)
	else
        return (self.description..quantdesc..invdesc)
	end
end

if (CLIENT) then
	function ITEM:PaintOver(item, w, h)
		draw.SimpleText(item:GetData("quantity", item.quantity).."/"..item.quantity, "ixSmallFont", 3, h - 1, color_white, TEXT_ALIGN_LEFT, TEXT_ALIGN_BOTTOM, 1, color_black)
	end
end

function ITEM:PopulateTooltip(tooltip)
    if (self.PopulateTooltipIndividual) then
      self:PopulateTooltipIndividual(tooltip)
    end
end

ITEM:Hook("use", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
end)

ITEM:Hook("usetarget", function(item)
	item.player:EmitSound(item.sound or "items/battery_pickup.wav")
end)

function ITEM:GetWeight()
  return self.flatweight + (self.weight * self:GetData("quantity", self.quantity))
end