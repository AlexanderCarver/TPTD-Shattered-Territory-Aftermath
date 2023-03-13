local PLUGIN = PLUGIN

local PANEL = {}

hook.Add("PopulateHelpMenu", "ixHelpMenu", function(tabs)
    tabs["commands"] = nil
    tabs['plugins'] = nil
	tabs["flags"] = function(container)
		-- info text
		local info = container:Add("DLabel")
		info:SetFont("ixSmallFont")
		info:SetText(L("helpFlags"))
		info:SetContentAlignment(5)
		info:SetTextColor(color_white)
		info:SetExpensiveShadow(1, color_black)
		info:Dock(TOP)
		info:DockMargin(0, 0, 0, 8)
		info:SizeToContents()
		info:SetTall(info:GetTall() + 16)

		info.Paint = function(_, width, height)
			surface.SetDrawColor(ColorAlpha(derma.GetColor("Info", info), 160))
			surface.DrawRect(0, 0, width, height)
		end

		-- flags
		for k, v in SortedPairs(ix.flag.list) do
			local background = ColorAlpha(
				LocalPlayer():GetCharacter():HasFlags(k) and derma.GetColor("Success", info) or derma.GetColor("Error", info), 88
			)

			local panel = container:Add("Panel")
			panel:Dock(TOP)
			panel:DockMargin(0, 0, 0, 8)
			panel:DockPadding(4, 4, 4, 4)
			panel.Paint = function(_, width, height)
				derma.SkinFunc("DrawImportantBackground", 0, 0, width, height, background)
			end

			local flag = panel:Add("DLabel")
			flag:SetFont("ixMonoMediumFont")
			flag:SetText(string.format("[%s]", k))
			flag:Dock(LEFT)
			flag:SetTextColor(color_white)
			flag:SetExpensiveShadow(1, color_black)
			flag:SetTextInset(4, 0)
			flag:SizeToContents()
			flag:SetTall(flag:GetTall() + 8)

			local description = panel:Add("DLabel")
			description:SetFont("ixMediumLightFont")
			description:SetText(v.description)
			description:Dock(FILL)
			description:SetTextColor(color_white)
			description:SetExpensiveShadow(1, color_black)
			description:SetTextInset(8, 0)
			description:SizeToContents()
			description:SetTall(description:GetTall() + 8)

			panel:SizeToChildren(false, true)
		end
	end

	tabs["commands"] = function(container)
		-- info text
		local info = container:Add("DLabel")
		info:SetFont("ixSmallFont")
		info:SetText(L("helpCommands"))
		info:SetContentAlignment(5)
		info:SetTextColor(color_white)
		info:SetExpensiveShadow(1, color_black)
		info:Dock(TOP)
		info:DockMargin(0, 0, 0, 8)
		info:SizeToContents()
		info:SetTall(info:GetTall() + 16)

		info.Paint = function(_, width, height)
			surface.SetDrawColor(ColorAlpha(derma.GetColor("Info", info), 160))
			surface.DrawRect(0, 0, width, height)
		end

		-- commands
		for uniqueID, command in SortedPairs(ix.command.list) do
			if (command.OnCheckAccess and !command:OnCheckAccess(LocalPlayer())) then
				continue
			end

			local bIsAlias = false
			local aliasText = ""

			-- we want to show aliases in the same entry for better readability
			if (command.alias) then
				local alias = istable(command.alias) and command.alias or {command.alias}

				for _, v in ipairs(alias) do
					if (v:lower() == uniqueID) then
						bIsAlias = true
						break
					end

					aliasText = aliasText .. ", /" .. v
				end

				if (bIsAlias) then
					continue
				end
			end

			-- command name
			local title = container:Add("DLabel")
			title:SetFont("ixMediumLightFont")
			title:SetText("/" .. command.name .. aliasText)
			title:Dock(TOP)
			title:SetTextColor(ix.config.Get("color"))
			title:SetExpensiveShadow(1, color_black)
			title:SizeToContents()

			-- syntax
			local syntaxText = command.syntax
			local syntax

			if (syntaxText != "" and syntaxText != "[none]") then
				syntax = container:Add("DLabel")
				syntax:SetFont("ixMediumLightFont")
				syntax:SetText(syntaxText)
				syntax:Dock(TOP)
				syntax:SetTextColor(color_white)
				syntax:SetExpensiveShadow(1, color_black)
				syntax:SetWrap(true)
				syntax:SetAutoStretchVertical(true)
				syntax:SizeToContents()
			end

			-- description
			local descriptionText = command:GetDescription()

			if (descriptionText != "") then
				local description = container:Add("DLabel")
				description:SetFont("ixSmallFont")
				description:SetText(descriptionText)
				description:Dock(TOP)
				description:SetTextColor(color_white)
				description:SetExpensiveShadow(1, color_black)
				description:SetWrap(true)
				description:SetAutoStretchVertical(true)
				description:SizeToContents()
				description:DockMargin(0, 0, 0, 8)
			elseif (syntax) then
				syntax:DockMargin(0, 0, 0, 8)
			else
				title:DockMargin(0, 0, 0, 8)
			end
		end
	end

	tabs["FAQ"] = function(container)
        container.greyheader = container:Add("DLabel")
        container.greyheader:SetFont("ixSmallFont")
        container.greyheader:SetText("Часто задаваемые вопросы:")
        container.greyheader:SetContentAlignment(5)
        container.greyheader:SetTextColor(color_white)
        container.greyheader:SetExpensiveShadow(1, color_black)
        container.greyheader:Dock(TOP)
        container.greyheader:DockMargin(0, 0, 0, 8)
        container.greyheader:SizeToContents()
        container.greyheader:SetTall(container.greyheader:GetTall() + 16)
        container.greyheader.Paint = function(_, width, height)
            surface.SetDrawColor(40, 40, 40)
            surface.DrawRect(0, 0, width, height)
        end

        container.BetaText = container:Add("DLabel")
        container.BetaText:SetFont("ixGuideSmallFont")
        container.BetaText:SetText("\n\n1. Где я появился? Вы появились на ВДНХ, ваша задача получить достаточно пулек для покупки снаряжения. \n\n2. Как заработать?Способы получения пулек: -Путем разделки мяса ( Разделанное мясо нужно сложить в миску)  -Сбор грибов ( Грибы сдают в ящик с грибами который находится в той же комнате) -Собирать лут в туннелях лут и  продавать их скупщику мусора.( ВАЖНО на некоторых станциях цена на определенный лут гораздо выше чем на других. К примеру на станции Ганзы) -Убитых мутантов можно разделать ножом, части мутантов скупают торговцы НПС. -Выполнение поручений других игроков \n\n3. Как вступить в фракцию? Чтобы вступить в фракцию вам нужно поговорить с главой фракции . \n\n4. Как стать сталкером? Нужен ранг бывалый и запрос у администрации, либо стать сталкером определенной станции( Вы также можете отрыгивать роль сталкера без роли). \n\n5.  Как поднять уровень?  Убивать мутантов. В вкладке „ВЫ“ вы можете посмотреть ваши навыки, а также прокачать их, если вы не распределили навыки после их получения.\n6. Могу ли я говорить нон рп информацию в голосовой чат? Нет, вам также запрещено общаться через сторонние средства связи по типу дискорда. \n\n7. Как получить гражданство станции? Купить у лидера фракции")
        container.BetaText:Dock(TOP)
        container.BetaText:SetTextColor(color_white)
        container.BetaText:SetExpensiveShadow(1, color_black)
        container.BetaText:SetWrap(true)
        container.BetaText:SetAutoStretchVertical(true)
        container.BetaText:SizeToContents()
        container.BetaText:DockMargin(10, 10, 0, 0)

  
	
	     container.BetaText = container:Add("DLabel")
        container.BetaText:SetFont("ixGuideSmallFont")
        container.BetaText:SetText("\n6. Могу ли я говорить нон рп информацию в голосовой чат? Нет, вам также запрещено общаться через сторонние средства связи по типу дискорда. \n\n7. Как получить гражданство станции? Купить у лидера фракции")
        container.BetaText:Dock(TOP)
        container.BetaText:SetTextColor(color_white)
        container.BetaText:SetExpensiveShadow(1, color_black)
        container.BetaText:SetWrap(true)
        container.BetaText:SetAutoStretchVertical(true)
        container.BetaText:SizeToContents()
        container.BetaText:DockMargin(10, 10, 0, 0)

    end

	tabs["Важная информация"] = function(container)
        container.greyheader = container:Add("DLabel")
        container.greyheader:SetFont("ixSmallFont")
        container.greyheader:SetText("Здравствуй, игрок! Пожалуйста, ознакомься с информацией перед началом игры.")
        container.greyheader:SetContentAlignment(5)
        container.greyheader:SetTextColor(color_white)
        container.greyheader:SetExpensiveShadow(1, color_black)
        container.greyheader:Dock(TOP)
        container.greyheader:DockMargin(0, 0, 0, 8)
        container.greyheader:SizeToContents()
        container.greyheader:SetTall(container.greyheader:GetTall() + 16)
        container.greyheader.Paint = function(_, width, height)
            surface.SetDrawColor(40, 40, 40)
            surface.DrawRect(0, 0, width, height)
        end

        container.BetaText = container:Add("DLabel")
        container.BetaText:SetFont("ixGuideSmallFont")
        container.BetaText:SetText("Добро пожаловать на проект Shattered Territory: Aftermath!")
        container.BetaText:Dock(TOP)
        container.BetaText:SetTextColor(color_white)
        container.BetaText:SetExpensiveShadow(1, color_black)
        container.BetaText:SetWrap(true)
        container.BetaText:SetAutoStretchVertical(true)
        container.BetaText:SizeToContents()
        container.BetaText:DockMargin(10, 10, 0, 0)

        container.SeriousRp = container:Add("DLabel")
        container.SeriousRp:SetFont("ixGuideSmallFont")
        container.SeriousRp:SetText("У нас полностью фулл Рп проект с полным погружением и чтобы не попасть в просак для начала ознакомься с нашими правилами в нашем дискорде")
        container.SeriousRp:Dock(TOP)
        container.SeriousRp:SetTextColor(Color(255, 95, 95))
        container.SeriousRp:SetExpensiveShadow(1, color_black)
        container.SeriousRp:SetWrap(true)
        container.SeriousRp:SetAutoStretchVertical(true)
        container.SeriousRp:SizeToContents()
        container.SeriousRp:DockMargin(10, 10, 0, 0)
    end

	tabs["Начало игры"] = function(container)
        container.greyheader = container:Add("DLabel")
        container.greyheader:SetFont("ixSmallFont")
        container.greyheader:SetText("Небольшая предыстория нашей вселенной!")
        container.greyheader:SetContentAlignment(5)
        container.greyheader:SetTextColor(color_white)
        container.greyheader:SetExpensiveShadow(1, color_black)
        container.greyheader:Dock(TOP)
        container.greyheader:DockMargin(0, 0, 0, 8)
        container.greyheader:SizeToContents()
        container.greyheader:SetTall(container.greyheader:GetTall() + 16)
        container.greyheader.Paint = function(_, width, height)
            surface.SetDrawColor(40, 40, 40)
            surface.DrawRect(0, 0, width, height)
        end

        container.HelloText = container:Add("DLabel")
        container.HelloText:SetFont("ixGuideSmallFont")
        container.HelloText:SetText("Сервер, на котором играешь старается максимально подчиняться логике и истории вселенной Метро 2033, за некоторыми исключениями. Небольшой экскурс по нашей вселенной находится ниже..")
        container.HelloText:Dock(TOP)
        container.HelloText:SetTextColor(color_white)
        container.HelloText:SetExpensiveShadow(1, color_black)
        container.HelloText:SetWrap(true)
        container.HelloText:SetAutoStretchVertical(true)
        container.HelloText:SizeToContents()
        container.HelloText:DockMargin(10, 10, 0, 0)

        container.LoreText = container:Add("DLabel")
        container.LoreText:SetFont("ixGuideItalicFont")
        container.LoreText:SetText(" После ядерной войны 2012 года, Москва погрузилась во мрак и вся жизнь спустилась под землю. Население Москвы на грани вымирания, каждая станция желает выжить. Станции в результате междоусобных войн превратились в города-государства. Туннели между ними населяют страшные чудовища. И только сплатившись можно победить эту нечисть. .")
        container.LoreText:Dock(TOP)
        container.LoreText:SetTextColor(color_white)
        container.LoreText:SetExpensiveShadow(1, color_black)
        container.LoreText:SetWrap(true)
        container.LoreText:SetAutoStretchVertical(true)
        container.LoreText:SizeToContents()
        container.LoreText:DockMargin(10, 5, 0, 8)

        container.GuideText = container:Add("DLabel")
        container.GuideText:SetFont("ixGuideSmallFont")
        container.GuideText:SetText("Сталкер, хотим напомнить, что лор нашего сервера слегка отличается от оригинала, на дворе 2034 год. Война между Красной линией и 4 Рейхом не утихают. Орден 'Спарта' нашли бункер Д-6 без Артема, но после героической смерти Полковника Мельника оставили его и пребрались на другой опорный пункт. Невидимые Наблюдатели поднялись с колен и стараются поддерживать и помогать всем станциям-государствам..")
        container.GuideText:Dock(TOP)
        container.GuideText:SetTextColor(color_white)
        container.GuideText:SetExpensiveShadow(1, color_black)
        container.GuideText:SetWrap(true)
        container.GuideText:SetAutoStretchVertical(true)
        container.GuideText:SizeToContents()
        container.GuideText:DockMargin(10, 5, 0, 8)
    end
    
	tabs["Правила"] = function(container)
        container.greyheader = container:Add("DLabel")
        container.greyheader:SetFont("ixSmallFont")
        container.greyheader:SetText("В этой альтернативной вселенной нет места некоторым сюжетным персонажам, так как ход событий идет не по оригинальному сценарию.Ты выходец со станции, ты появишься на безопасной станции, где ты сможешь начать свой собственный путь. Но кто знает, какая опасность ждет тебя за каждый поворотом")
        container.greyheader:SetContentAlignment(5)
        container.greyheader:SetTextColor(color_white)
        container.greyheader:SetExpensiveShadow(1, color_black)
        container.greyheader:Dock(TOP)
        container.greyheader:DockMargin(0, 0, 0, 8)
        container.greyheader:SizeToContents()
        container.greyheader:SetTall(container.greyheader:GetTall() + 16)
        container.greyheader.Paint = function(_, width, height)
            surface.SetDrawColor(40, 40, 40)
            surface.DrawRect(0, 0, width, height)
        end

        container.MainTitle = container:Add("DLabel")
        container.MainTitle:SetFont("ixGuideSmallFont")
        container.MainTitle:SetText("В свою очередь администрация проекта желает тебе удачи в твоих начинаниях, но обязательно ознакомься с правилами, так как не знание правил не освобождает тебя от ответственности.")
        container.MainTitle:Dock(TOP)
        container.MainTitle:SetTextColor(Color(255, 100, 100))
        container.MainTitle:SetExpensiveShadow(1, color_black)
        container.MainTitle:SetWrap(true)
        container.MainTitle:SetAutoStretchVertical(true)
        container.MainTitle:SizeToContents()
        container.MainTitle:DockMargin(10, 10, 0, 0)

        container.MainText = container:Add("DLabel")
        container.MainText:SetFont("ixGuideTinyFont")
        container.MainText:SetText("Береги себя сталкер и приятного тебе погружения в мир МЕТРО 2033")
        container.MainText:Dock(TOP)
        container.MainText:SetTextColor(color_white)
        container.MainText:SetExpensiveShadow(1, color_black)
        container.MainText:SetWrap(true)
        container.MainText:SetAutoStretchVertical(true)
        container.MainText:SizeToContents()
        container.MainText:DockMargin(10, 5, 0, 10)

        container.VoiceTitle = container:Add("DLabel")
        container.VoiceTitle:SetFont("ixGuideSmallFont")
        container.VoiceTitle:SetText("Правила голосового чата")
        container.VoiceTitle:Dock(TOP)
        container.VoiceTitle:SetTextColor(Color(255, 100, 100))
        container.VoiceTitle:SetExpensiveShadow(1, color_black)
        container.VoiceTitle:SetWrap(true)
        container.VoiceTitle:SetAutoStretchVertical(true)
        container.VoiceTitle:SizeToContents()
        container.VoiceTitle:DockMargin(10, 25, 0, 10)

        container.VoiceText = container:Add("DLabel")
        container.VoiceText:SetFont("ixGuideTinyFont")
        container.VoiceText:SetText("\n1. На сервере имеется функция голосовой связи, доступ к которой имеют все игроки, микрофон которых не производит слишком сильных помех. Если ваш микрофон неисправен или неправильно работает - не включайте микрофон, чтобы избежать проблем с администрацией.\n\n2. Находясь на сервере запрещается использовать программы, изменяющие тембр/высоту голоса человека; Soundpad, а именно проигрывать звуковые дорожки в голосовй чат.\n\n3. За нарушение правил NonRP, Metagaming и любых других в голосовом чате срок наказания будет удвоен на усмотрение администратора.")
        container.VoiceText:Dock(TOP)
        container.VoiceText:SetTextColor(color_white)
        container.VoiceText:SetExpensiveShadow(1, color_black)
        container.VoiceText:SetWrap(true)
        container.VoiceText:SetAutoStretchVertical(true)
        container.VoiceText:SizeToContents()
        container.VoiceText:DockMargin(10, 5, 0, 10)

    end

	tabs["Сообщество"] = function(container)
        container.greyheader = container:Add("DLabel")
        container.greyheader:SetFont("ixSmallFont")
        container.greyheader:SetText("Наша медийная часть")
        container.greyheader:SetContentAlignment(5)
        container.greyheader:SetTextColor(color_white)
        container.greyheader:SetExpensiveShadow(1, color_black)
        container.greyheader:Dock(TOP)
        container.greyheader:DockMargin(0, 0, 0, 8)
        container.greyheader:SizeToContents()
        container.greyheader:SetTall(container.greyheader:GetTall() + 16)
        container.greyheader.Paint = function(_, width, height)
            surface.SetDrawColor(40, 40, 40)
            surface.DrawRect(0, 0, width, height)
        end

        container.discord = container:Add("DButton")
        container.discord:SetFont("ixMenuButtonFontSmall")
        container.discord:SetText("Discord")
        container.discord:SetContentAlignment(5)
        container.discord:SetTextColor(color_white)
        container.discord:SetExpensiveShadow(1, color_black)
        container.discord:Dock(TOP)
        container.discord:DockMargin(0, 0, 0, 8)
        container.discord:SizeToContents()
        container.discord:SetTall(container.discord:GetTall() + 24)
        container.discord.Paint = function(this, width, height)
            surface.SetDrawColor(Color(114, 137, 218))
            surface.DrawRect(0, 0, width, height)
        end
        container.discord.DoClick = function(this)
            gui.OpenURL('https://discord.gg/ggNkacyv7D')
        end

        container.website = container:Add("DButton")
        container.website:SetFont("ixMenuButtonFontSmall")
        container.website:SetText("Правила")
        container.website:SetContentAlignment(5)
        container.website:SetTextColor(color_white)
        container.website:SetExpensiveShadow(1, color_black)
        container.website:Dock(TOP)
        container.website:DockMargin(0, 0, 0, 8)
        container.website:SizeToContents()
        container.website:SetTall(container.website:GetTall() + 24)
        container.website.Paint = function(this, width, height)
            surface.SetDrawColor(Color(44, 44, 44))
            surface.DrawRect(0, 0, width, height)
        end
        container.website.DoClick = function(this) 
            gui.OpenURL('https://docs.google.com/document/d/1i2DF7IWU-GQn2jHJLWtcVLgysGdxyrnnbZ9pmwr-Sxk/edit?usp=sharing')
        end

        container.steam = container:Add("DButton")
        container.steam:SetFont("ixMenuButtonFontSmall")
        container.steam:SetText("Steam")
        container.steam:SetContentAlignment(5)
        container.steam:SetTextColor(color_white)
        container.steam:SetExpensiveShadow(1, color_black)
        container.steam:Dock(TOP)
        container.steam:DockMargin(0, 0, 0, 8)
        container.steam:SizeToContents()
        container.steam:SetTall(container.steam:GetTall() + 24)
        container.steam.Paint = function(this, width, height)
            surface.SetDrawColor(Color(44, 44, 44))
            surface.DrawRect(0, 0, width, height)
        end
        container.steam.DoClick = function(this)
            gui.OpenURL('https://steamcommunity.com/sharedfiles/filedetails/?id=2386955381')
        end

        container.vk = container:Add("DButton")
        container.vk:SetFont("ixMenuButtonFontSmall")
        container.vk:SetText("ВКонтакте")
        container.vk:SetContentAlignment(5)
        container.vk:SetTextColor(color_white)
        container.vk:SetExpensiveShadow(1, color_black)
        container.vk:Dock(TOP)
        container.vk:DockMargin(0, 0, 0, 8)
        container.vk:SizeToContents()
        container.vk:SetTall(container.vk:GetTall() + 24)
        container.vk.Paint = function(this, width, height)
            surface.SetDrawColor(Color(44, 44, 44))
            surface.DrawRect(0, 0, width, height)
        end
        container.vk.DoClick = function(this)
            gui.OpenURL('https://vk.com/helixmetro2033')
        end
    end
end)

function PANEL:Init()
	if (IsValid(PLUGIN.panel)) then
		PLUGIN.panel:Remove()
	end

	self:SetSize(850, 700)
	self:Center()
    self:SetTitle("Помощь")
	self:SetBackgroundBlur(true)
	self:SetDeleteOnClose(true)
    self:SetDraggable(false)
    self:ShowCloseButton(false)

    self:Add('ixHelpMenu')

	self:MakePopup()

    self.close = self:Add("ixMenuButton")
    self.close:Dock(BOTTOM)
    self.close:SetSize(100, 50)
    self.close:SetText("Закрыть")
    self.close.DoClick = function()
        self:Remove()
    end

	PLUGIN.panel = self
end

function PANEL:OnRemove()
	PLUGIN.panel = nil
    ix.option.Set("showStartMessage", false)
end

vgui.Register("ixStartMessage", PANEL, "DFrame")