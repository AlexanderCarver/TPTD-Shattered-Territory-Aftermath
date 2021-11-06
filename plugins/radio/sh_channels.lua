
local PLUGIN = PLUGIN


-- ДОПОЛНИТЕЛЬНО
-- Основная
ix.radio.RegisterChannel("dtccss_main_channel", {
	color = Color(255, 255, 255, 255)
})
-- Патрульная
ix.radio.RegisterChannel("dtccss_patrol_channel", {
	color = Color(255, 204, 0, 255)
})
-- Медицинская
ix.radio.RegisterChannel("dtccss_medical_channel", {
	color = Color(204, 51, 0, 255)
})
-- Секретная
ix.radio.RegisterChannel("nova_channel", {
	color = Color(255, 153, 0, 255)
})



-- CAPS
-- Главная
ix.radio.RegisterChannel("dtccss_maincaps_channel", {
	color = Color(51, 51, 153, 255)
})
-- Офицерская
ix.radio.RegisterChannel("dtccss_officercaps_channel", {
	color = Color(51, 51, 153, 255)
})
-- Bear Squad
ix.radio.RegisterChannel("dtccss_bear_channel", {
	color = Color(51, 51, 153, 255)
})
-- Ghost Squad
ix.radio.RegisterChannel("dtccss_ghost_channel", {
	color = Color(51, 51, 153, 255)
})



-- ARMADA COMMAND
-- Главный
ix.radio.RegisterChannel("dtccss_mainarm_channel", {
	color = Color(0, 128, 0, 255)
})
-- Офицерская
ix.radio.RegisterChannel("dtccss_officerarm_channel", {
	color = Color(0, 128, 0, 255)
})



-- SQUADRON COMMAND
-- Главная
ix.radio.RegisterChannel("dtccss_mainsquad_channel", {
	color = Color(0, 128, 0, 255)
})
-- Офицерская
ix.radio.RegisterChannel("dtccss_officersquad_channel", {
	color = Color(0, 128, 0, 255)
})



-- CIS Главная
ix.radio.RegisterChannel("dtccss_maincis_channel", {
	color = Color(0, 128, 128, 255)
})
-- CIS Офицерская
ix.radio.RegisterChannel("dtccss_officercis_channel", {
	color = Color(0, 128, 128, 255)
})



-- SAC Главная
ix.radio.RegisterChannel("dtccss_mainsac_channel", {
	color = Color(50, 205, 50, 255)
})
-- SAC Офицерская
ix.radio.RegisterChannel("dtccss_officersac_channel", {
	color = Color(50, 205, 50, 255)
})



-- IRB
-- Главный
ix.radio.RegisterChannel("dtccss_mainirb_channel", {
	color = Color(51, 51, 0, 255)
})
-- Офицерская
ix.radio.RegisterChannel("dtccss_officerirb_channel", {
	color = Color(51, 51, 0, 255)
})



-- Spaceship Technical Personnel
-- Основная
ix.radio.RegisterChannel("dtccss_mainstp_channel", {
	color = Color(107, 142, 35, 255)
})
-- Руководящая
ix.radio.RegisterChannel("dtccss_officerstp_channel", {
	color = Color(107, 142, 35, 255)
})



--Unknown Forces
ix.radio.RegisterChannel("unknown", {
	color = Color(64, 224, 208, 255)
})