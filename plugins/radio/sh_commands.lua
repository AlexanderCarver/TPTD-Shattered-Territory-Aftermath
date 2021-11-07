
local PLUGIN = PLUGIN

ix.command.Add("CharAddRadioChannel", {
	description = "Добавить персонажу доступный канал связи.",
	privilege = "Helix - Manage Radio",
	superAdminOnly = true,
	arguments = {
		ix.type.player,
		ix.type.string
	},
	OnRun = function(self, client, target, channel)
		if (ix.radio.IsValidChannel(channel)) then
			ix.radio.AddPlayerToChannel(target, channel)

			client:Notify("Вы дали возможность " .. target:Name() .. " общаться в следующем канале: " .. channel .. ".")
			target:Notify("Вы получили доступ к каналу " .. channel .. ". Администратор: " .. client:Name() .. ".")
		else
			return "Указанный Вами канал не существует!"
		end
	end
})

ix.command.Add("CharRemoveRadioChannel", {
	description = "Забрать у персонажа доступ к определенному каналу связи.",
	privilege = "Helix - Manage Radio",
	superAdminOnly = true,
	arguments = {
		ix.type.player,
		ix.type.string
	},
	OnRun = function(self, client, target, channel)
		if (ix.radio.IsValidChannel(channel)) then
			ix.radio.RemovePlayerFromChannel(target, channel)

			client:Notify("Вы забрали возможность у " .. target:Name() .. " общаться в следующем канале: " .. channel .. ".")
			target:Notify("У Вас забрали возможность общаться в канале " .. channel .. ". Администратор: " .. client:Name() .. ".")
		else
			return "Указанный Вами канал не существует!"
		end
	end
})

ix.command.Add("SetChannel", {
	description = "Установить канал связи.",
	alias = "SC",
	arguments = ix.type.text,

	OnRun = function(self, client, text)
		text = text:Trim()
		local freq = tonumber(text)

		if (freq) then
			local item = client:GetCharacter():GetInventory():HasItem("handheld_radio")

			if (item) then
				if (!ix.radio.IsValidChannel("freq_" .. text)) then
					ix.radio.RegisterChannel("freq_" .. text, {
						isFrequency = true
					})
				end

				item:SetData("channel", "freq_" .. text)
				client:GetCharacter():SetRadioChannel("freq_" .. text)
				client:Notify("Вы установили у своей рации следующую частоту: " .. freq)

				net.Start("ixRadio.registerChannel")
					net.WriteString("freq_" .. text)
				net.Broadcast()
			else
				client:Notify("У Вас отсутствует какое-либо устройство для связи!")
			end
		else
			local name = string.gsub(text, "%s", "_")

			if (ix.radio.IsValidChannel(name)) then
				if (ix.radio.IsPlayerSubscribedToChannel(client, name)) then
					client:GetCharacter():SetRadioChannel(name)
					client:Notify("Вы установили канал следующий канал для связи: \""..name.."\"")
				else
					client:Notify("У Вас нет доступа к этому каналу связи.")
				end
			else
			return "Указанный Вами канал не существует!"
			end
		end
	end,
})

ix.command.Add("Radio", {
	description = "Говорить в рацию.",
	alias = "R",
	arguments = ix.type.text,

	OnRun = function(self, client, text)
		if (!ix.radio.CanPlayerSay(client, text)) then
			return
		end

		ix.chat.Send(client, "radio", text)
		ix.chat.Send(client, "radio_eavesdrop", text)
	end,
})

ix.command.Add("RadioWhisper", {
	description = "Тихо говорить в рацию.",
	alias = "RW",
	arguments = ix.type.text,

	OnRun = function(self, client, text)
		if (!ix.radio.CanPlayerSay(client, text)) then
			return
		end

		ix.chat.Send(client, "radio_whisper", text)
		ix.chat.Send(client, "radio_eavesdrop_whisper", text)
	end,
})

ix.command.Add("RadioYell", {
	description = "Громко говорить в рацию.",
	alias = "RY",
	arguments = ix.type.text,

	OnRun = function(self, client, text)
		if (!ix.radio.CanPlayerSay(client, text)) then
			return
		end

		ix.chat.Send(client, "radio_yell", text)
		ix.chat.Send(client, "radio_eavesdrop_yell", text)
	end,
})
