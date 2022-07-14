-- Schema info
Schema.name = "[TPTD] Shattered Territory: Aftermath"
Schema.description = "Ты сам загнал себя в этот кошмар... Хотя мог бы жить обычной жизнью."
Schema.author = "Orig: COTZ Community, Red: TPTD Dev Team"
--Schema.logo = "vgui/background/wallpaper.jpg"

ix.util.Include("libs/thirdparty/sh_netstream2.lua")

-- Additional files that aren't auto-included should be included here. Note that ix.util.Include will take care of properly
-- using AddCSLuaFile, given that your files have the proper naming scheme.

-- You could technically put most of your schema code into a couple of files, but that makes your code a lot harder to manage -
-- especially once your project grows in size. The standard convention is to have your miscellaneous functions that don't belong
-- in a library reside in your cl/sh/sv_schema.lua files. Your gamemode hooks should reside in cl/sh/sv_hooks.lua. Logical
-- groupings of functions should be put into their own libraries in the libs/ folder. Everything in the libs/ folder is loaded
-- automatically.
ix.util.Include("cl_schema.lua")
ix.util.Include("sv_schema.lua")

ix.util.Include("cl_skin.lua")

ix.util.Include("cl_hooks.lua")
ix.util.Include("sh_hooks.lua")
ix.util.Include("sv_hooks.lua")

-- You'll need to manually include files in the meta/ folder, however.
ix.util.Include("meta/sh_item.lua")
ix.util.Include("meta/sh_inventory.lua")


ix.flag.Add("1", "Trader.")
ix.flag.Add("A", "Admin")
ix.flag.Add("N", "Event/Customization")

ALWAYS_RAISED["weapon_flashlight"] = true
ALWAYS_RAISED["stalker_bolt"] = true
ALWAYS_RAISED["detector_bear"] = true
ALWAYS_RAISED["detector_veles"] = true
ALWAYS_RAISED["detector_echo"] = true
ALWAYS_RAISED["guitar"] = true

ix.currency.symbol = "₽" -- the rubles symbol was an issue for people not with UTF-8 or whatever was used
ix.currency.singular = "рубль"
ix.currency.plural = "рублей"

player_manager.AddValidHands( "stalker_default", "models/arms/c_arms_stalker.mdl", 0, 0 )
