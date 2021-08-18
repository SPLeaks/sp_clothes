ESX          = nil

clothes = false

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

function loadAnimDict(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end





-------------------------- TUTO --------------------------------
----------------------------------------------------------------
-- SetPedComponentVariation(GetPlayerPed(-1), 1, 14, 2, 0) -----
-- 1 = Apparel categories example : mask, t-shirt, watch, etc --
------------------- 14 = Clothing number -----------------------
------------------- 2 = Clothing color -------------------------
----------------------------------------------------------------
----------------- if you want to add more ----------------------
----------------------------------------------------------------
RegisterNetEvent('sp_clothes:REPLACE THIS')
AddEventHandler('sp_clothes:REPLACE THIS', function()
   local player = PlayerPedId()
	if not clothes then
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	clothes = true
	SetPedComponentVariation(GetPlayerPed(-1), 1, 64, 1, 0)
	elseif clothes then
	clothes = false
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	SetPedComponentVariation(GetPlayerPed(-1), 1, -1, 0, 2)
	end
end)
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------
----------------------------------------------------------------









RegisterNetEvent('sp_clothes:tshirt')
AddEventHandler('sp_clothes:tshirt', function()
   local player = PlayerPedId()
	if not clothes then
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	clothes = true
	SetPedComponentVariation(GetPlayerPed(-1), 11, 14, 1, 0)
	SetPedComponentVariation(GetPlayerPed(-1), 3, 12, 0, 0) -- If you want to add a t-shirt, don’t touch this because it’s for the arms
	elseif clothes then
	clothes = false
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	SetPedComponentVariation(GetPlayerPed(-1), 11, 15, 0, 2)
	SetPedComponentVariation(GetPlayerPed(-1), 3, 15, 0, 0) -- If you want to add a t-shirt, don’t touch this because it’s for the arms
	end
end)

RegisterNetEvent('sp_clothes:jeans')
AddEventHandler('sp_clothes:jeans', function()
   local player = PlayerPedId()
	if not clothes then
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	clothes = true
	SetPedComponentVariation(GetPlayerPed(-1), 4, 13, 1, 0)
	elseif clothes then
	clothes = false
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	SetPedComponentVariation(GetPlayerPed(-1), 4, 21, 0, 2)
	end
end)

RegisterNetEvent('sp_clothes:shoe')
AddEventHandler('sp_clothes:shoe', function()
   local player = PlayerPedId()
	if not clothes then
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	clothes = true
	SetPedComponentVariation(GetPlayerPed(-1), 6, 1, 1, 0)
	elseif clothes then
	clothes = false
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	SetPedComponentVariation(GetPlayerPed(-1), 6, 5, 0, 2)
	end
end)

RegisterNetEvent('sp_clothes:bag')
AddEventHandler('sp_clothes:bag', function()
   local player = PlayerPedId()
	if not clothes then
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	clothes = true
	SetPedComponentVariation(GetPlayerPed(-1), 5, 0, 1, 0)
	elseif clothes then
	clothes = false
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	SetPedComponentVariation(GetPlayerPed(-1), 5, 41, 0, 2)
	end
end)

RegisterNetEvent('sp_clothes:mask')
AddEventHandler('sp_clothes:mask', function()
   local player = PlayerPedId()
	if not clothes then
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	clothes = true
	SetPedComponentVariation(GetPlayerPed(-1), 1, 64, 1, 0)
	elseif clothes then
	clothes = false
	Wait (600)
	ClearPedSecondaryTask(PlayerPedId())
	SetPedComponentVariation(GetPlayerPed(-1), 1, -1, 0, 2)
	end
end)
