--[[

    Overwatch Rank Manager for Helix

    Installation:
        1. Edit the self.rankTable variable within PLUGIN:OnLoaded() to fit your rank needs.
        2. Place this Lua file into your schema plugin directory.

]]

local PLUGIN = PLUGIN

PLUGIN.name = "Overwatch Rank Manager"
PLUGIN.author = "Gary Tate"
PLUGIN.description = "Allows Overwatch to manage ranks."
PLUGIN.schema = "HL2 RP"
PLUGIN.license = [[
The MIT License (MIT)
Copyright (c) 2019 Gary Tate
Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
]]

PLUGIN.rankTable = PLUGIN.rankTable or {}

ix.lang.AddTable("english", {
    cmdRankDemote = "Вы были сняты с поста командующего настоятель.",
    cmdRankPromote = "Вы были зачислены на пост командующего настоятеля.",
    cRankConfigDisabled = "На данный момент система рангов отключена.",
    cRankPromotion = "%s получил честь от %s быть повышенным до %s.",
    cRankDemotion = "%s был понижен %s до %s.",
    cRankMaxRank = "%s уже имеет самый высокий ранг.",
    cRankMinRank = "%s уже имеет самый низкий ранг.",
    cRankInvalidRank = "%s не существует в таблице рангов. Повышение или понижение невозможно.",
    cRankInvalidFaction = "%s не является существующей фракцией",
    cRankInvalidInput = "%s не является существующим рангом."
})

function PLUGIN:OnLoaded()
    timer.Simple(0, function()
        self.rankTable = {
            [FACTION_ARMY] = {"[PVT] | Private", "[PSC] | Private Second Class", "[PFC] | Private First Class", "[SPC] | Specialist", "[CPL] | Corporal", "[SGT] | Sergeant", "[SSG] | Staff Sergeant", "[SFC] | Sergeant First Class", "[MSG] | Master Sergeant", "[FSG] | First Sergeant", "[SGM] | Sergeant Major"}
        }
    end)
end

ix.command.Add("RankPromote", {
    description = "@cmdRankPromote",
    arguments = {
        ix.type.character,
        bit.bor(ix.type.string, ix.type.optional)
    },
    OnCheckAccess = function(self, client)
        return client:IsDispatch()
    end,
    OnRun = function(self, client, target, rank)
        local ranks = PLUGIN.rankTable[target:GetFaction()]

        -- Checks if player is in a valid faction from rankTable
        if (istable(ranks)) then
            local name = target:GetName()
            local newRank

            if (rank) then
                newRank = table.KeyFromValue(ranks, string.upper(rank))

                if (!newRank) then
                    return "@cRankInvalidInput", rank
                end
            else
                if (string.find(name, ranks[#ranks])) then
                    return "@cRankMaxRank", name
                end

                for k, v in ipairs(ranks) do
                    if (string.find(name, v)) then
                        newRank = next(ranks, k)

                        break
                    end
                end
            end

            if (newRank) then
                newRank = ranks[newRank]

                local newName = name:gsub("%:([%w]+)%.",
                    string.format(":%s.", newRank)
                )

                target:SetName(newName)

                for _, v in ipairs(player.GetAll()) do
                    if (self:OnCheckAccess(v) or v == target:GetPlayer()) then
                        v:NotifyLocalized("cRankPromotion", client:GetName(), name, newName)
                    end
                end
            else
                return "@cRankInvalidRank", name
            end
        else
            return "@cRankInvalidFaction", target:GetName()
        end
    end
})

ix.command.Add("RankDemote", {
    description = "@cmdRankDemote",
    arguments = {
        ix.type.character,
        bit.bor(ix.type.string, ix.type.optional)
    },
    OnCheckAccess = function(self, client)
        return client:IsDispatch()
    end,
    OnRun = function(self, client, target, rank)
        local ranks = PLUGIN.rankTable[target:GetFaction()]

        -- Checks if player is in a valid faction from rankTable
        if (istable(ranks)) then
            local name = target:GetName()
            local newRank

            if (rank) then
                newRank = table.KeyFromValue(ranks, string.upper(rank))

                if (!newRank) then
                    return "@cRankInvalidInput", rank
                end
            else
                if (string.find(name, ranks[1])) then
                    return "@cRankMinRank", name
                end

                for k, v in ipairs(ranks) do
                    if (string.find(name, v)) then
                        newRank = math.Clamp(k - 1, 1, #ranks)

                        break
                    end
                end
            end

            if (newRank) then
                newRank = ranks[newRank]

                local newName = name:gsub("%:([%w]+)%.",
                    string.format(":%s.", newRank)
                )

                target:SetName(newName)

                for _, v in ipairs(player.GetAll()) do
                    if (self:OnCheckAccess(v) or v == target:GetPlayer()) then
                        v:NotifyLocalized("cRankDemotion", client:GetName(), name, newName)
                    end
                end
            else
                return "@cRankInvalidRank", name
            end
        else
            return "@cRankInvalidFaction", target:GetName()
        end
    end
})
