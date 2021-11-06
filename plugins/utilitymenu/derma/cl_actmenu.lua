﻿local function ixActMenu()
	local animation = {"/Actstand","/Actsit","/Actsitwall","/Actcheer","/Actlean","/Actinjured","/Actarrestwall","/Actarrest","/Actthreat","/Actdeny","/Actmotion","/Actwave","/Actpant","/ActWindow"}
	local animationdesc = {"Встать в определённую позу.","Присесть на землю.","Сесть возле стены.","Радоваться.","Прислониться к стене.","Лечь на землю в качестве раненного.","Встать лицом к стене.","Помахать двумя руками над головой.","Угрожать.","Отказать.","Приказать двигаться.","Помахать одной рукой.","Наклониться, будучи уставшим.","Прислониться к окну."}
	local frame = vgui.Create( "DFrame" )
	frame:SetSize( 900, 700 )
	frame:SetTitle( "Меню дополнительных действий" )
	frame:MakePopup()
	frame:Center()

	local left = vgui.Create( "DScrollPanel", frame )
	left:Dock( LEFT )
	left:SetWidth( frame:GetWide() / 2 - 7 )
	left:SetPaintBackground( true )
	left:DockMargin( 0, 0, 4, 0 )

	local right = vgui.Create( "DScrollPanel", frame )
	right:Dock( FILL )
	right:SetPaintBackground( true )

	for i = 1, 14 do
		local but = vgui.Create( "DButton", frame )
		but:SetText( animationdesc [i] )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 24 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", animation [i])
		end
		right:AddItem( but )
	end
	
		local Perso = vgui.Create( "DLabel", frame )
		Perso:Dock( TOP )
		Perso:DockMargin( 8, 0, 0, 0 )
		Perso:SetFont("ixSmallFont")
		Perso:SetText( "Персонаж: ".. LocalPlayer():GetCharacter():GetName() )
		Perso:SetSize( 36, 21 )
		left:AddItem( Perso )
		
		local faction = ix.faction.indices[LocalPlayer():GetCharacter():GetFaction()]
		
		local Perso = vgui.Create( "DLabel", frame )
		Perso:Dock( TOP )
		Perso:DockMargin( 8, 0, 0, 0 )
		Perso:SetFont("ixSmallFont")
		Perso:SetText( "Подразделение: ".. faction.name )
		Perso:SetSize( 36, 20 )
		left:AddItem( Perso )
		
		local Perso = vgui.Create( "DLabel", frame )
		Perso:Dock( TOP )
		Perso:DockMargin( 8, 0, 0, 0 )
		Perso:SetFont("ixSmallFont")
		Perso:SetText( "Деньги: ".. ix.currency.Get(LocalPlayer():GetCharacter():GetMoney()) )
		Perso:SetSize( 36, 20 )
		left:AddItem( Perso )
		
		local Perso = vgui.Create( "DLabel", frame )
		Perso:Dock( TOP )
		Perso:DockMargin( 8, 0, 0, 0 )
		Perso:SetFont("ixSmallFont")
		Perso:SetText( "Здоровье: ".. LocalPlayer():Health() )
		Perso:SetSize( 36, 20 )
		left:AddItem( Perso )
		
		local Perso = vgui.Create( "DLabel", frame )
		Perso:Dock( TOP )
		Perso:DockMargin( 8, 0, 0, 0 )
		Perso:SetFont("ixSmallFont")
		Perso:SetText( "Броня: ".. LocalPlayer():Armor() )
		Perso:SetSize( 36, 20 )
		left:AddItem( Perso )
		
		-----------------------------------------------------------
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "Подняться на ноги" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/chargetup")
		end
		left:AddItem( but )
	
		local but = vgui.Create( "DButton", frame )
		but:SetText( "Упасть на землю (расслабиться)" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/charfallover")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "Обыскать человека перед собой, который связан" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/charsearch")
		end
		left:AddItem( but )
end
usermessage.Hook("ixActMenu", ixActMenu)