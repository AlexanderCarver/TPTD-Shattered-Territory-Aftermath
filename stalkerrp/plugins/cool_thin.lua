PLUGIN.name = "Additional Things"
PLUGIN.author = "GeFake"
PLUGIN.description = "Some options on right-click on player in scoreboard menu, ESP for items and more"

--[[-------------------------------------------------------------------------
	Restrict business
---------------------------------------------------------------------------]]

function PLUGIN:CanPlayerUseBusiness()
	return false
end

--[[-------------------------------------------------------------------------
	TAB MENU OPTIONS
---------------------------------------------------------------------------]]

hook.Add("PopulateScoreboardPlayerMenu", "ixAdmin", function(client, menu)
	if not LocalPlayer():IsAdmin() then return end
	if not client:IsValid() then return end

	local charopts = {}

	charopts["Изменить имя"] = {
		function()
			Derma_StringRequest("Изменить имя персонажа", "Какое имя Вы желаете установить данному персонажу?", client:Name(), function(text)
				ix.command.Send("CharSetName", client:Name(), text)
			end, nil, "Изменить", "Отмена")
		end
	}

	charopts["Изменить модель"] = {
		function()
			Derma_StringRequest("Изменить модель персонажа", "Какую модель Вы желаете установить данному персонажу?", client:GetModel(), function(text)
				ix.command.Send("CharSetModel", client:Name(), text)
			end, nil, "Изменить", "Отмена")
		end
	}
	
	charopts["Изменить фракцию"] = {
		function()
			local menu = vgui.Create("DFrame")
			menu:SetSize(ScrW() / 7.5, ScrH() / 6)
			menu:MakePopup()
			menu:Center()
			menu:SetTitle("Изменить фракцию персонажа")

			for k, v in pairs(ix.faction.indices) do
				local button = vgui.Create("DButton", menu)
				button:Dock(TOP)
				button:SetText(L(v.name))
				button:SetTall(65)
				button.DoClick = function()
					ix.command.Send("PlyTransfer", client:Name(), v.uniqueID)
					ix.command.Send("PlyWhitelist", client:Name(), v.uniqueID)
					menu:Remove()
				end
			end
		end
	}

	charopts["Выдать предмет"] = {
		function()
			local menu = vgui.Create("DFrame")
			menu:SetSize(ScrW() / 2, ScrH() / 1.8)
			menu:MakePopup()
			menu:Center()
			menu:SetTitle("Меню создания предметов")
			local panel = menu:Add("DScrollPanel")
			panel:Dock(FILL)

			categoryPanels = {}

			for k, v in pairs(ix.item.list) do
				if (!categoryPanels[L(v.category)]) then
					categoryPanels[L(v.category)] = v.category
				end
			end
			
			for category, realName in SortedPairs(categoryPanels) do
				local collapsibleCategory = panel:Add("DCollapsibleCategory")
				collapsibleCategory:SetTall(36)
				collapsibleCategory:SetLabel(category)
				collapsibleCategory:Dock(TOP)
				collapsibleCategory:SetExpanded(0)
				collapsibleCategory:DockMargin(5, 5, 5, 0)
				collapsibleCategory.category = realName

				for k, v in pairs(ix.item.list) do
					if v.category == collapsibleCategory.category then
						local item = collapsibleCategory:Add("DButton")
						item:SetText(v.name)
						item:SizeToContents()
						item.DoClick = function()
							ix.command.Send("CharGiveItem", client:Name(), v.uniqueID, 1)
							surface.PlaySound("buttons/button14.wav")
						end
					end
				end

				categoryPanels[realName] = collapsibleCategory
			end
		end
	}

	charopts["Изменить класс"] = {
		function()
			local menu = vgui.Create("DFrame")
			menu:SetSize(ScrW() / 7.5, ScrH() / 6)
			menu:MakePopup()
			menu:Center()
			menu:SetTitle("Изменить класс персонажа")

			for k, v in pairs(ix.class.list) do
				if (v.faction == client:Team()) then
					local button = vgui.Create("DButton", menu)
					button:Dock(TOP)
					button:SetText(L(v.name))
					button:SetTall(65)
					button.DoClick = function()
						ix.command.Send("CharSetClass", client:Name(), v.uniqueID)
						menu:Remove()
					end
				end
			end
		end
	}

	local char, charOpt = menu:AddSubMenu('Персонаж')
	for k, v in pairs(charopts) do
		char:AddOption(k, v[1])
	end
end)

--[[-------------------------------------------------------------------------
	DEAD AND HURT LOGS
---------------------------------------------------------------------------]]

	function PLUGIN:PlayerDeath(client, inflictor, attacker)
	if attacker:IsPlayer() then
		ix.log.AddRaw(client:Name() .. " был убит " .. attacker:Name() .. ", используя " .. attacker:GetActiveWeapon():GetClass(), nil, Color(255,50,50))
	else
		ix.log.AddRaw(client:Name() .. " был убит " .. attacker:GetClass(), nil, Color(255,50,50))
	end
end

	function PLUGIN:PlayerHurt(client, attacker, health, damage)
	if attacker:IsPlayer() then
		ix.log.AddRaw(client:Name() .. " получил " .. damage .. " единиц урона от " .. attacker:Name() .. ", который использовал " .. attacker:GetActiveWeapon():GetClass() .. ", оставив  " .. health .. " единиц здоровья.", nil, Color(255, 200, 0))
	else
		ix.log.AddRaw(client:Name() .. " получил " .. math.floor(damage) .. " урон от " .. attacker:GetClass() .. ", оставив " .. math.floor(health) .. " единиц здоровья.", nil, Color(255, 200, 0))
	end
end

--[[-------------------------------------------------------------------------
	IX COMMANDS
---------------------------------------------------------------------------]]

ix.command.Add("CharRespawn", {
	description = "Возрождение мертвых персонажей.",
	adminOnly = true,
	arguments = {ix.type.character},
	OnRun = function(self, client, character)
		local target = character.player
		if IsValid(target) and target:IsPlayer() and target:Alive() then return client:Notify("Этого персонажа невозможно возродить!") end

		client:Notify("Вы возродили " .. target:Name())
		target:SetNetVar("deathTime", 0)

		if client ~= target then
			target:Notify("Вас воскресили из мертвых! Администратор: " .. client:SteamName())
		end
	end
})

local pos = {
	Vector(4267.831543, 10293.161133, -8002.906738),
	Vector(4264.136230, 10464.564453, -8002.933105),
	Vector(4434.273926, 10468.227539, -8002.825195),
	Vector(4356.537109, 10475.516602, -959.928406),
	Vector(4592.887695, 10752.286133, -791.847107)
}

ix.command.Add("GotoAdminZone", {
	description = "Телепортирует Вас в административную зону.",
	superAdminOnly = true,
	OnRun = function(self, client)
		client:SetPos(table.Random(pos) + Vector(0, 0, 10))
	end
})