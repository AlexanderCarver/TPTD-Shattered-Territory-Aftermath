﻿
PLUGIN.name = "Blacklist"
PLUGIN.author = "Dobytchick, Frosty"
PLUGIN.description = "This plugin adds a blacklist. Do not remove those who are in it, because they can harm your servers"

local blacklist =
{
	["STEAM_0:0:84488977"] = {reason = "[Привет, Данбазик! К сожалению, ты - грязное животное, которому нет места в нашем обществе. Иди своей дорогой, шлюха. Слава Маллалу.]"},
	["STEAM_0:1:94068933"] = {reason = "[Привет, Артем! К сожалению, ты - грязное и токсичное дикое зверьё, которому точно нет места в нашем цивилизованном обществе. Возвращайся в свой 'DegrodSquad' и будь там, пожалуйста.]"},
	["STEAM_0:0:21110724"] = {reason = "[Господи, сравнивать Федеральную Службу Безопасности и тебя - это какой-то долбанный позор и вверх кощунства. Такие конченные мрази, как ты, которые настолько цинично обесценивают труд тех, кто регулярно рискует жизнью в своей работе, защищая нашу страну и нас, достойны только пермаментного анального изнасилования и комбинации 'выключить-и-обоссать'. Ты даже хуже шлюхи, так что на этом проекте ты больше играть не будешь никогда."},
	["STEAM_0:1:80859302"] = {reason = "[Юристов, знающих свои права, не вызывали. Иди обратно под шконку, говноед, пока тебя снова по фактам не разнесли, как девочку маленькую. Слава Маллалу.]"},
	["STEAM_0:1:56035394"] = {reason = "[Привет, Рекс! К сожалению, ты - грязное животное, которому нет места в нашем обществе. Иди своей дорогой, шлюха. Слава Маллалу.]"},
	["STEAM_0:1:422724823"] = {reason = "[Привет, Стик! К сожалению, ты - грязное животное, которому нет места в нашем обществе. Иди своей дорогой, шлюха. Слава Маллалу.]"},
	["STEAM_0:1:211631536"] = {reason = "[Ты больше в Гаррис не играешь, Тим. Забыл? :)]"},
	["STEAM_0:1:125800652"] = {reason = "[КТУЛХУ ФГХТАНГ! Иди обратно на дно ролевого мира, морское ракообразное семейства 'ралевик-данжжен-энд-дрэгонский'.]"},
	["STEAM_0:1:92758232"] = {reason = "[Опа-опа, Дум пожаловал. Уж не думал, что в наше чудесное общество завалится такое конченное животное, потревожив наш покой, но, видимо, всё плохое когда-нибудь случается... Короче, расклад такой: ты не сможешь зайти, так что быстро вернулся под шконарь, чёртов алкаш-говноед.]"},
	["STEAM_0:1:37763718"] = {reason = "[Нет, Андрей. Нельзя заходить... Гаси камутер и иди спать, так как завтра на работу.~]"},
	["STEAM_0:1:570480638"] = {reason = "5-ый Отдел всегда работал на ура, так что адыхай, ублюдок."},
    ["STEAM_0:1:99527353"] = {reason = "Ох щит, итс э nedo-ddos."},
    ["STEAM_0:0:141119170"] = {reason = "Ох щит, итс э nedo-ddos."},

	
	
	
	
	
	
--	[""] = {reason = ""},
}
if SERVER then
	function PLUGIN:PlayerAuthed(client, steamid, uniqueid)
		if blacklist[client:SteamID()] then
			client:Kick("Вы под запретом и не можете играть данном проекте! Примечание от административной части проекта TPTD: " ..blacklist[client:SteamID()].reason)
			client:Ban(0, false)
		end
	end
end