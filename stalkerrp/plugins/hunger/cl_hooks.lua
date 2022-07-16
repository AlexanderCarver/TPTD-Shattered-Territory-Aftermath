if CLIENT then
    ix.bar.Add(function() return LocalPlayer():GetLocalVar("hunger", 0) / 100,"Голод" end, Color(176, 134, 28), nil, "hunger")
	ix.bar.Add(function() return LocalPlayer():GetLocalVar("thirst", 0) / 100,"Жажда" end, Color(40, 40, 200), nil, "thirst")
end