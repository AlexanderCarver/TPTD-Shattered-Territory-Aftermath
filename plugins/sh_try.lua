do
ix.chat.Register("try", {
 	format = "** [Попытка] %s %s",
 	GetColor = function() return Color(140, 122, 230)end,
 	CanHear = ix.config.Get("chatRange", 280) * 2,
 	prefix = {},
	description = "@cmdMe",
 	indicator = "[Пытается сделать что-то...]",
	deadCanChat = true
})
end

ix.command.Add("try", {
	description = "Попробовать сделать что-то.",
	arguments = ix.type.text,
	OnRun = function(self, client, text)
        local str
        if not string.EndsWith(text,".") then
            text = text.."."
        end
        local git = tobool(math.random(0, 1))
        if git then 
            str= " удалось "..text
        else
            str = " не удалось "..text
        end
		ix.chat.Send(client, "try", str)
        

	end
})

