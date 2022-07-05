// Доступ по вайтлисту

Schema.white = {}
Schema.white["STEAM_0:0:81566201"] = "Ross";
Schema.white["STEAM_0:1:613914042"] = "Twink Ross";
Schema.white["STEAM_0:0:59581740"] = "Clumba";

function Schema:CheckPassword(id)
	id = util.SteamIDFrom64(id);
	
	local inWhitelist = Schema.white[id];

	return inWhitelist, !inWhitelist && "You're not in the whitelist"
end;