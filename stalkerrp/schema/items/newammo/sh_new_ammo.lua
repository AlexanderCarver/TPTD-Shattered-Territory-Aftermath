function AddAmmoType(name, text)
	game.AddAmmoType({name = name})
	
	if CLIENT then
		language.Add(name .. "_ammo", text)
	end
end

---------------------------------------------------
AddAmmoType("9x17mm", "9x17 мм")
AddAmmoType("9x17hpmm", "9x17 мм (JHP)")
---------------------------------------------------
AddAmmoType("9x18mm", "9x18 мм")
AddAmmoType("9x18apmm", "9x18 мм (ПБМ гж)")
AddAmmoType("9x18blkmm", "9x18 мм (10ТК)")
AddAmmoType("9x18hpmm", "9x18 мм (СП8 гж)")
---------------------------------------------------
AddAmmoType("9x19mm", "9x19 мм")
AddAmmoType("9x19apmm", "9x19 мм (ПБП гж)")
AddAmmoType("9x19hpmm", "9x19 мм (QuakeMaker)")
---------------------------------------------------
AddAmmoType("45acp", ".45 ACP")
AddAmmoType("45apacp", ".45 ACP (AP)")
AddAmmoType("45hpacp", ".45 ACP (FMJ)")
---------------------------------------------------
AddAmmoType("357sig", ".357 SIG")
AddAmmoType("357apsig", ".357 SIG (FMJ)")
AddAmmoType("357hpsig", ".357 SIG (HP)")
---------------------------------------------------
AddAmmoType("10mm", "10 мм")
AddAmmoType("44magnum", ".44 Magnum")
AddAmmoType("50ae", ".50 Action Express")
AddAmmoType("7.63x25mm", "7.63x25 мм")
AddAmmoType("7.65x17mm", "7.65x17 мм")
---------------------------------------------------
AddAmmoType("5.45x39mm", "5.45x39 мм")
AddAmmoType("5.45x39apmm", "5.45x39 мм (БС)")
AddAmmoType("5.45x39blkmm", "5.45x39 мм (7Х3)")
AddAmmoType("5.45x39hpmm", "5.45x39 мм (HP)")
AddAmmoType("5.45x39submm", "5.45x39 мм (УС)")
AddAmmoType("5.45x39trr", "5.45x39 мм (Т гс)")
---------------------------------------------------
AddAmmoType("5.56x45mm", "5.56x45 мм НАТО")
AddAmmoType("5.56x45apmm", "5.56x45 мм НАТО (M855)")
AddAmmoType("5.56x45blkmm", "5.56x45 мм НАТО (M200)")
AddAmmoType("5.56x45hpmm", "5.56x45 мм НАТО (HP)")
AddAmmoType("5.56x45submm", "5.56x45 мм НАТО (MK 255 Mod 0)")
AddAmmoType("5.56x45trr", "5.56x45 мм (M856)")
---------------------------------------------------
AddAmmoType("7.62x39mm", "7.62x39 мм")
AddAmmoType("7.62x39apmm", "7.62x39 мм (БП гж)")
AddAmmoType("7.62x39blkmm", "7.62x39 мм (ПХС-19)")
AddAmmoType("7.62x39hpmm", "7.62x39 мм (HP)")
AddAmmoType("7.62x39submm", "7.62x39 мм (УС гж)")
AddAmmoType("7.62x39trrmm", "7.62x39 мм (Т-45М1 гж)")
---------------------------------------------------
AddAmmoType("7.62x51mm", "7.62x51 мм НАТО")
AddAmmoType("7.62x51apmm", "7.62x51 мм НАТО (M80)")
AddAmmoType("7.62x51hpmm", "7.62x51 мм НАТО (ТПЗ SP)")
AddAmmoType("7.62x51matchmm", "7.62x51 мм НАТО (M993)")
AddAmmoType("7.62x51tmjmm", "7.62x51 мм НАТО (M61)")
AddAmmoType("7.62x51trgmm", "7.62x51 мм НАТО (M62 Tracer)")
---------------------------------------------------
AddAmmoType("7.62x54mm", "7.62x54 мм")
AddAmmoType("7.62x54apmm", "7.62x54 мм (СНБ гж)")
AddAmmoType("7.62x54blkmm", "7.62x54 мм (57-X-340)")
AddAmmoType("7.62x54hpmm", "7.62x54 мм (ЛПС гж)")
AddAmmoType("7.62x54trgmm", "7.62x54 мм (Т-46М гж)")
---------------------------------------------------
AddAmmoType("12.7x99mm", "12.7x99 мм")
AddAmmoType("12.7x99apmm", "12.7x99 мм (M962)")
AddAmmoType("12.7x99blkmm", "12.7x99 мм (Blank Cartridge)")
AddAmmoType("12.7x99trrmm", "12.7x99 мм (M21)")
---------------------------------------------------
AddAmmoType("338lm", ".338 Lapua Magnum")
AddAmmoType("338aplm", ".338 Lapua Magnum (AP)")
AddAmmoType("338hplm", ".338 Lapua Magnum (TAC-X)")
---------------------------------------------------
AddAmmoType("12x70mm", "12x70 мм")
AddAmmoType("12x70flechmm", "12x70 мм (флешетты)")
AddAmmoType("12x70magmm", "12x70 мм (8.5 картечь 'Магнум')")
AddAmmoType("12x70slugmm", "12x70 мм (СКП)")
---------------------------------------------------
AddAmmoType("23x75mm", "23x75 мм")
AddAmmoType("23x75barmm", "23x75 мм (Баррикада)")
AddAmmoType("23x75zvezmm", "23x75 мм (Звезда)")
---------------------------------------------------
AddAmmoType("7.92x57mm", "7.92x57 мм")
AddAmmoType("7.92x33mm", "7.92x33 мм")



AddAmmoType("M381HE", "40x46 мм (M381 HE)")
AddAmmoType("40x46smoke", "40x46 мм (Smoke)")
AddAmmoType("M576", "40x46 мм (M576)")
AddAmmoType("M781", "40x46 мм (M781)")
AddAmmoType("vog25", "VOG-25")

--AddAmmoType("", "")