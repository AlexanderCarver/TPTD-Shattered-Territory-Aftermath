local PLUGIN = PLUGIN;
PLUGIN.name = 'Фиксим баги';
PLUGIN.author = 'Bilwin';
PLUGIN.description = 'None';

if SERVER then
	function PLUGIN:CanPlayerEnterVehicle(player, veh, role) --Хренос два вам, багоюзеры
		if IsValid(player) and not player:IsAdmin() then
			return false;
		end
	end
end