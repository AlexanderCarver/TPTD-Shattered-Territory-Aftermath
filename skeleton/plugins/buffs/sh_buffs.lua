--[[
	PLUGIN.buffs[ << string, Buff's Unique Name>> ] = { -- This is the unique name for identifying the buff.
		name =<< string, Buff's Display Name>>, -- This is the display name of the buff. 
		desc = << string, Buff's Description>>, -- This is the description of this buff.
		nodisp = << boolean, Buff's Display Factor >>, -- This is the factor for displaying this buff. ( For advaced scripters )
		func = << function, Buff's Think Function >>,
		onbuffed = << function, Buff's Function that executes on buffed >>, 
		onunbuffed = << function, Buff's Function that executes on Unbuffed >>, 
	}
]]--

local PLUGIN = PLUGIN

PLUGIN.buffs[ "buff_slowheal" ] = {
	name = "Лечение",
	desc = "Вы медленно излечиваетесь",
	func = function( player, parameter)
		player.timeNextHeal = player.timeNextHeal or CurTime()
		if player.timeNextHeal < CurTime() then
			player:SetHealth(math.Clamp(player:Health() + (parameter.amount or 1), 0, player:GetMaxHealth()))

			player.timeNextHeal = CurTime() + 2
		end
	end,
}

PLUGIN.buffs[ "buff_rapidheal" ] = {
	name = "Лечение",
	desc = "Вы медленно излечиваете свои травмы.",
	func = function( player, parameter)
		player.timeNextFastHeal = player.timeNextFastHeal or CurTime()
		if player.timeNextFastHeal < CurTime() then
			player:SetHealth(math.Clamp(player:Health() + (parameter.amount or 1), 0, player:GetMaxHealth()))

			player.timeNextFastHeal = CurTime() + 1
		end
	end,
}

PLUGIN.buffs[ "buff_fastheal" ] = {
	name = "Лечение",
	desc = "Вы быстро излечиваете свои травмы.",
	func = function( player, parameter)
		player.timeNextFastHeal = player.timeNextFastHeal or CurTime()
		if player.timeNextFastHeal < CurTime() then
			player:SetHealth(math.Clamp(player:Health() + (parameter.amount or 1), 0, player:GetMaxHealth()))

			player.timeNextFastHeal = CurTime() + 0.5
		end
	end,
}

PLUGIN.buffs[ "buff_staminarestore" ] = {
	name = "Восстановление энергии",
	desc = "Вы восстанавливаете свою энергию.",
	func = function( player, parameter)
		player.timeNextTickStam = player.timeNextTickStam or CurTime()
		if player.timeNextTickStam < CurTime() then
			player:SetLocalVar("stm", math.min(player:GetLocalVar("stm", 100) + (parameter.amount or 1), 100))

			player.timeNextTickStam = CurTime() + 2
		end
	end,
}

PLUGIN.buffs[ "buff_toxinremoval" ] = {
	name = "Выведение токсинов",
	desc = "Токсины выходит из вашего организма.",
	func = function( player, parameter)
		player.timeNextTickRadRem = player.timeNextTickRadRem or CurTime()
		if player.timeNextTickRadRem < CurTime() then
			player:DecreaseDrunkLevel(-parameter.amount)

			player.timeNextTickRadRem = CurTime() + 2
		end
	end,
}

PLUGIN.buffs[ "debuff_toxinadd" ] = {
	name = "Токсичность",
	desc = "Токсины в Вашем организме.",
	func = function( player, parameter)
		player.timeNextTickRadRem = player.timeNextTickRadRem or CurTime()
		if player.timeNextTickRadRem < CurTime() then
			player:IncreaseDrunkLevel(parameter.amount)

			player.timeNextTickRadRem = CurTime() + 2
		end
	end,
}

PLUGIN.buffs[ "buff_radiationremoval" ] = {
	name = "Выведение радиации",
	desc = "Радиация выходит из вашего организма.",
	func = function( player, parameter)
		player.timeNextTickRadRem = player.timeNextTickRadRem or CurTime()
		if player.timeNextTickRadRem < CurTime() then
			player:DecreaseDrunkLevel(-parameter.amount)

			player.timeNextTickRadRem = CurTime() + 2
		end
	end,
}

PLUGIN.buffs[ "buff_psyheal" ] = {
	name = "Лечение психики",
	desc = "Ваш разум медленно восстанавливается.",
	func = function( player, parameter)
		player.timeNextTickPsyHeal = player.timeNextTickPsyHeal or CurTime()
		if player.timeNextTickPsyHeal < CurTime() then
			player:HealPsyHealth(parameter.amount)

			player.timeNextTickPsyHeal = CurTime() + 2
		end
	end,
}

PLUGIN.buffs[ "buff_radprotect" ] = {
	name = "Радиозащита",
	desc = "Вы полностью защищены от радиации.",
	func = function( player, parameter)
		
	end,
}

PLUGIN.buffs[ "buff_psysuppress" ] = {
	name = "Подавление психики",
	desc = "Психические эффекты больше не влияют на Вас.",
	func = function( player, parameter)
		
	end,
	onbuffed = function( player, parameter )
		player:SetNWBool("ix_psysuppressed", true)
	end,
	ondebuffed = function( player, parameter )
		player:SetNWBool("ix_psysuppressed", false)
	end,
}

PLUGIN.buffs[ "buff_psyblock" ] = {
	name = "Психическая защита",
	desc = "Вы полностью защищены от психических атак.",
	func = function( player, parameter)
		
	end,
	onbuffed = function( player, parameter )
		player:SetNWFloat("ix_psyblock", player:GetNWFloat("ix_psyblock",0) + parameter.amount )
	end,
	ondebuffed = function( player, parameter )
		player:SetNWFloat("ix_psyblock", player:GetNWFloat("ix_psyblock",0) - parameter.amount )
	end,
}

PLUGIN.buffs[ "debuff_radiation" ] = {
	name = "Радиоактивность",
	desc = "Излучение начинает пропитывать Ваш организм.",
	func = function( player, parameter)
		player.timeNextTickRad = player.timeNextTickRad or CurTime()
		if player.timeNextTickRad < CurTime() then
			player:addRadiation(parameter.amount)

			player.timeNextTickRad = CurTime() + 0.5
		end
	end,
}

PLUGIN.buffs[ "debuff_psy" ] = {
	name = "Потеря психики",
	desc = "Вы медленно сходите с ума.",
	func = function( player, parameter)
		player.timeNextTickPsyDmg = player.timeNextTickPsyDmg or CurTime()
		if player.timeNextTickPsyDmg < CurTime() then
			player:DamagePsyHealth(parameter.amount)

			player.timeNextTickPsyDmg = CurTime() + 0.5
		end
	end,
}
/*
PLUGIN.buffs[ "leghurt" ] = {
	name = "Leg Injury",
	desc = "Your legs are injured and your movement has been handicapped.",
	onbuffed = function( player, parameter )
		if !player:HasBuff( "leghurt" ) then
			player:ChatPrint( nut.lang.Get("buff_legs_injured") )
		end
	end,
	ondebuffed = function( player, parameter )
		if !player:Alive() then return end
		if player:HasBuff( "leghurt" ) then
			player:ChatPrint( nut.lang.Get("buff_legs_restored") )
		end
	end,
	func = function( player, parameter)
		player.timeNextMoan = player.timeNextMoan or CurTime()
		if player.timeNextMoan < CurTime() then
			local gender = player.character:GetVar( "gender" )
			player:EmitSound( Format( "vo/npc/%s01/pain0%d.wav", gender, math.random( 1, 9 ) ) )
			player.timeNextMoan = CurTime() + 5
			player:ScreenFadeOut(.5, Color(255, 50, 50, 50))
		end
	end,
}
*/
PLUGIN.buffs[ "buff_hijump" ] = {
	name = "Высокий прыжок",
	desc = "Вы крайне высоко прыгаете.",
	func = function( player, parameter)
		
	end,
	onbuffed = function( player, parameter )
		local jumpval = player:GetJumpPower()
		player:SetJumpPower(jumpval + parameter.amount)
	end,
	ondebuffed = function( player, parameter )
		local jumpval = player:GetJumpPower()
		player:SetJumpPower(jumpval - parameter.amount)
	end,
}