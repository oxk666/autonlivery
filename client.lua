-- Stuba hallitsee

RegisterCommand('autonlivery', function(source, args) -- Komento minkä kirjoitat chattiin, kun haluat vaihtaa auton "maalauksen"
	if (
		ESX.PlayerData.job.name == 'police' and
		ESX.PlayerData.job.grade >= 6 or
		ESX.PlayerData.job.name == 'fib'
    ) then
		local Veh = GetVehiclePedIsIn(GetPlayerPed(-1))
		SetVehicleLivery(Veh, tonumber(args[1]))
		ESX.ShowNotification('Livery on vaihdettu ID:'.. args[1])
	end
end, false)