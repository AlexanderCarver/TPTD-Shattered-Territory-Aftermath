function AddAmmoType(name, text)
	game.AddAmmoType({name = name})
	
	if CLIENT then
		language.Add(name .. "_ammo", text)
	end
end
--ЛЕВОЕ БЕРИ, ЯК, ПРАВОЕ ОСТАВЛЯЙ
--ЕСЛИ БУДЕШЬ ВПИСЫВАТЬ ЧТО-ТО - БЕРИ ЛЕВОЕ, ТО-ЕСТЬ .357sig
--Малые калибры:
AddAmmoType("9x18mm", "9x18mm") --att.Override_Ammo = "9x18mm"
AddAmmoType("9x19mm", "9x19mm") --att.Override_Ammo = "9x19mm"
AddAmmoType(".40sw", ".40 S&W") --att.Override_Ammo = ".40sw"
AddAmmoType(".357sig", ".357 SIG") --att.Override_Ammo = ".357sig"
AddAmmoType("10mm", "10mm") --att.Override_Ammo = "10mm"
AddAmmoType(".45acp", ".45 ACP") --att.Override_Ammo = ".45acp"
AddAmmoType(".380acp", ".380 ACP") --att.Override_Ammo = ".380acp"
AddAmmoType(".22lr", ".22 LR") --att.Override_Ammo = ".22lr"
AddAmmoType(".44magnum", ".44 Magnum") --att.Override_Ammo = ".44magnum"
AddAmmoType(".44special", ".44 Special") --att.Override_Ammo = ".44special"
AddAmmoType(".50ae", ".50 Action Express") --att.Override_Ammo = ".50ae"

--Винтовочные калибры:
AddAmmoType("5.45x39mm", "5.45x39mm") --att.Override_Ammo = "5.45x39mm"
AddAmmoType("7.62x39mm", "7.62x39mm") --att.Override_Ammo = "7.62x39mm"
AddAmmoType("5.56x45mm", "5.56x45mm NATO") --att.Override_Ammo = "5.56x45mm"
AddAmmoType("7.62x51mm", "7.62x51mm NATO")
AddAmmoType("7.62x54mm", "7.62x54mm")
AddAmmoType(".338lm", ".338 Lapua Magnum")
AddAmmoType(".300wm", ".300 Winchester Magnum")

--Дробовики:
AddAmmoType(".410bore", ".410 Bore") --att.Override_Ammo = ".410bore"
AddAmmoType("12gauge00", "12 Gauge (00)")
AddAmmoType("12gauge000", "12 Gauge (000)")
AddAmmoType("12gaugebird", "12 Gauge (9)")
AddAmmoType("12gaugeflech", "12 Gauge (Flechettes)")
AddAmmoType("12gaugeslug", "12 Gauge (Slug)")

--Гранаты:
AddAmmoType("M381HE", "40x46mm (M381 HE)")
AddAmmoType("40x46smoke", "40x46mm (Smoke)")
AddAmmoType("M433HEDP", "40x46mm (M433 HEDP)")
AddAmmoType("M576", "40x46mm (M576)")
AddAmmoType("M397A1", "40x46mm (M397A1 Airburst)")
AddAmmoType("vog25", "VOG-25")

--AddAmmoType("", "")