local function ixActMenu()
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
		but:SetText( "Обыскать человека перед собой" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/charsearch")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "Посмотреть текущие задачи" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/viewobjectives")
		end
		left:AddItem( but )
		
		-----------------------------------------------------------
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO: Главная" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_main_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO: Патрульная" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_patrol_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO: Медицинская" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_medical_channel")
		end
		left:AddItem( but )
		
		-----------------------------------------------------------
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO CAPS: Главная" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_maincaps_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO CAPS: Офицерская" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_officercaps_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO CAPS: 1-ая частота" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_bear_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO CAPS: 2-ая частота" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_ghost_channel")
		end
		left:AddItem( but )

		-----------------------------------------------------------
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO ARMCOM: Главная" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_mainarm_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO ARMCOM: Офицерская" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_officerarm_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO SQUADCOM: Главная" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_mainsquad_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO SQUADCOM: Офицерская" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_officersquad_channel")
		end
		left:AddItem( but )
		
		-----------------------------------------------------------
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO CIS: Главная" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_maincis_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO CIS: Офицерская" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_officercis_channel")
		end
		left:AddItem( but )

		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO SAC: Главная" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_mainsac_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO SAC: Офицерская" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_officersac_channel")
		end
		left:AddItem( but )
		
		-----------------------------------------------------------
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO IRB: Главная" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_mainirb_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO IRB: Офицерская" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_officerirb_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO STP: Главная" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_mainstp_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO STP: Руководящая" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc dtccss_officerstp_channel")
		end
		left:AddItem( but )
		
		local but = vgui.Create( "DButton", frame )
		but:SetText( "RADIO: UNKNOWN" )
		but:SetFont("ixSmallFont")
		but:SetSize( 36, 50 )
		but:Dock( TOP )
		but.DoClick = function()
			frame:Close()
			RunConsoleCommand("say", "/sc unknown")
		end
		left:AddItem( but )
end
usermessage.Hook("ixActMenu", ixActMenu)