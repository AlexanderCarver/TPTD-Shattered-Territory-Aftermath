local PLUGIN = PLUGIN
PLUGIN.name = "Music Player"
PLUGIN.author = "GeFake"
PLUGIN.description = "A simple music player"
PLUGIN.musicList = PLUGIN.musicList or {}

netstream.Hook("simpledebug",function()
    RunConsoleCommand("stopsound")
end)

ix.util.Include("sv_plugin.lua")
ix.util.Include("cl_hooks.lua")