
PLUGIN.name = "Message Flash"
PLUGIN.description = "Flashes the client's Garry's Mod application when a message is posted in the chat."
PLUGIN.author = "Aspect™"

ix.lang.AddTable("english", {
	optFlashWindow = "Flash Window",
	optdFlashWindow = "Whether your Garry's Mod Application should flash when a message is posted in the chat."
})

ix.option.Add("flashWindow", ix.type.bool, true, {
	category = "chat"
})

if (CLIENT) then
	function PLUGIN:MessageReceived(client, info)
		if (ix.option.Get("flashWindow", true) and system.IsWindows() and !system.HasFocus()) then
			system.FlashWindow()
		end
	end
end
