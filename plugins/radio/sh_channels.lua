
local PLUGIN = PLUGIN


-- ДОПОЛНИТЕЛЬНО
-- Основная
ix.radio.RegisterChannel("territorial_channel", {
	color = Color(255, 255, 255, 255)
})
-- Неизвестная
ix.radio.RegisterChannel("unknown_freq_channel", {
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

--Unknown Forces
ix.radio.RegisterChannel("unknown", {
	color = Color(64, 224, 208, 255)
})