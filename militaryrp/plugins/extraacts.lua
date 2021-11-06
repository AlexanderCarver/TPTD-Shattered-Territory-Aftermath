
PLUGIN.name = "Extra Acts"
PLUGIN.author = "alexgrist"
PLUGIN.description = "Adds extra player acts."

if (!ix.act) then
	return
end



function PLUGIN:SetupActs()

	-- id

	ix.act.Register("ID", {"citizen_male", "citizen_female"}, {

		sequence = "g_scan_ID"

	})



	-- kneel

	ix.act.Register("Sit3", "citizen_female", {

		sequence = "d1_t02_Plaza_Sit02",

		--finish = {"", "d1_t01_BreakRoom_Sit02_Exit"},

		untimed = true

	})



	ix.act.Register("Kneel", "citizen_male", {

		sequence = "d1_town05_daniels_kneel_entry"

	})



	ix.act.Register("Kneel", "citizen_male", {

		start = {"d1_town05_daniels_kneel_entry", ""},

		sequence = {"d1_town05_daniels_kneel_idle", "roofidle2"},

		untimed = true

	})



	ix.act.Register("Kneel", "citizen_female", {

		sequence = {"canals_mary_postidle", "canals_mary_preidle"},

		untimed = true

	})



	ix.act.Register("Kneel", "vortigaunt", {

		sequence = "rescue_idle",

		untimed = true

	})



	-- knock

	ix.act.Register("Knock", "citizen_male", {

		sequence = "d1_town05_Leon_Door_Knock"

	})



	ix.act.Register("Knock", "metrocop", {

		sequence = "adoorknock"

	})



	-- laydown

	ix.act.Register("LayDown", "citizen_male", {

		sequence = {"Lying_Down", "laycouch1"},

		finish = {"", "laycouch1_exit"},

		untimed = true

	})



	ix.act.Register("LayDown", "citizen_female", {

		sequence = {"Lying_Down", "laycouch1"},

		untimed = true

	})



	-- search

	ix.act.Register("Search", "metrocop", {

		sequence = "spreadwall"

	})

end







