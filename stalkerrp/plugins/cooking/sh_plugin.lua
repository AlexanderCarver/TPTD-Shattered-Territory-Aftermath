PLUGIN.Name = "Cooking Mod"
PLUGIN.Author = "TPTD Dev Team"
PLUGIN.Description = "Плагин для приготовления пищи."

ix.util.Include("sv_plugin.lua")
ix.util.Include("cl_plugin.lua")
if SERVER then return end