local PLUGIN = PLUGIN

PLUGIN.name = "Whitelist"
PLUGIN.author = "wildflowericecoffee"
PLUGIN.description = "Adds a server whitelist"

ix.config.Add("whitelistEnabled", false, "Enables the server whitelist.", nil, {
    category = "Whitelist"
})

if SERVER then
    function PLUGIN:LoadData()
        self.allowed = self:GetData() or {}
    end

    function PLUGIN:SaveData()
        self:SetData(self.allowed)
    end

    function PLUGIN:CheckPassword(steamID64)
        local steamID = util.SteamIDFrom64(steamID64)

        if ix.config.Get("whitelistEnabled") and not self.allowed[steamID] then
            return false, "Извините, но Вас нет в белом списке тестеров для подключения. Пожалуйста, подключитесь к Discord-серверу проекта TPTD, чтобы получить доступ: https://discord.gg/jwvSFPahcg | " .. GetHostName()
        end
    end

    function PLUGIN:PlayerAuthed(client, steamID, uniqueID)
        if ix.config.Get("whitelistEnabled") and not self.allowed[steamID] then
            game.KickID(uniqueID, "Извините, но Вас нет в белом списке тестеров для подключения. Пожалуйста, подключитесь к Discord-серверу проекта TPTD, чтобы получить доступ: https://discord.gg/jwvSFPahcg | " .. GetHostName())
        end
    end
end

ix.command.Add("WhitelistAdd", {
    description = "Добавить SteamID в белый список.",
    privilege = "Manage Server Whitelist",
    superAdminOnly = true,
    arguments = ix.type.string,
    OnRun = function(self, client, steamID)
        if not steamID:match("STEAM_(%d+):(%d+):(%d+)") then
            return "Неправильный SteamID!"
        end

        if PLUGIN.allowed[steamID] then
            return "Данный SteamID уже находится в белом списке!"
        else
            PLUGIN.allowed[steamID] = true

            return "Белый список был обновлён."
        end
    end
})

ix.command.Add("WhitelistRemove", {
    description = "Удалить SteamID из белого списка.",
    privilege = "Manage Server Whitelist",
    superAdminOnly = true,
    arguments = ix.type.string,
    OnRun = function(self, client, steamID)
        if not steamID:match("STEAM_(%d+):(%d+):(%d+)") then
            return "Неправильный SteamID!"
        end

        if not PLUGIN.allowed[steamID] then
            return "Данный SteamID не находится в белом списке!"
        else
            PLUGIN.allowed[steamID] = nil

            return "Белый список был обновлён."
        end
    end
})

ix.command.Add("WhitelistClear", {
    description = "Очистить белый список.",
    privilege = "Manage Server Whitelist",
    superAdminOnly = true,
    OnRun = function(self)
        PLUGIN.allowed = {}

        return "Белый список был очищен."
    end
})

ix.command.Add("WhitelistAddAll", {
    description = "Добавить всех играющих в белый список.",
    privilege = "Manage Server Whitelist",
    superAdminOnly = true,
    OnRun = function(self)
        for _, client in ipairs(player.GetHumans()) do
            if IsValid(client) then
                PLUGIN.allowed[client:SteamID()] = true
            end
        end

        return "Все играющие игроки были добавлены в белый список."
    end
})
