ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

------------------------- TUTO ---------------------------
----------------------------------------------------------
----------------------------------------------------------
ESX.RegisterUsableItem('REPLACE THIS', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('sp_clothes:REPLACE THIS', source)
end)
----------------------------------------------------------
----------------------------------------------------------
----------------------------------------------------------









ESX.RegisterUsableItem('tshirt', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('sp_clothes:tshirt', source)
end)

ESX.RegisterUsableItem('jeans', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('sp_clothes:jeans', source)
end)

ESX.RegisterUsableItem('bag', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('sp_clothes:bag', source)
end)

ESX.RegisterUsableItem('shoe', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('sp_clothes:shoe', source)
end)

ESX.RegisterUsableItem('mask', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	TriggerClientEvent('sp_clothes:mask', source)
end)

