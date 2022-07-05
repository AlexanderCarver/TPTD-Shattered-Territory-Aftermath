PLUGIN.name = "More Hurt Effects"
PLUGIN.author = "Pokernut, Frosty"
PLUGIN.description = "Add more hurt effects."

painSounds = {
	"actor/pain3.mp3",
	"actor/pain2.mp3",
	"actor/pain1.mp3"
}

if (SERVER) then
  function PLUGIN:PlayerHurt(client, attacker, health, damage)
	if ((client.ixNextPain or 0) < CurTime()) then
		client.ixNextPain = CurTime() + 0.33
		if (damage > 5 and client:Armor() == 0) then
			client:ViewPunch(Angle(-1.3, 1.8, 0))
			client:EmitSound(painSounds[math.random(1, 3)], 40)
		end
	end
  end
end