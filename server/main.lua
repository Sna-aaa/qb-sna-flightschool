local QBCore = exports['qb-core']:GetCoreObject()


RegisterServerEvent('qb-flightschool:server:AddLicense', function(license)
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local licenses = Player.PlayerData.metadata["licences"]

	if license == 'plane' or license == 'heli' or license == 'thflight' then
		licenses[license] = true
	end
	if license == "thflight" then
		Player.Functions.AddItem('flight_test_permit', 1)
		TriggerClientEvent('inventory:client:ItemBox', src, 'flight_test_permit', "add")
	else
		local permit = Player.Functions.GetItemByName("flight_test_permit")
		if permit then
			Player.Functions.RemoveItem('flight_test_permit', 1)
			TriggerClientEvent("inventory:client:ItemBox", src, 'flight_test_permit', "remove")
		end
	end
	Player.Functions.SetMetaData("licences", licenses)
	if license ~= "thflight" then
		local permit = Player.Functions.GetItemByName("flight_license")
		if permit then
			TriggerClientEvent('QBCore:Notify', src, Lang:t("license_updated"), 'success')
		else
			TriggerClientEvent('QBCore:Notify', src, Lang:t("goto_cityhall"), 'success')
		end
	end
end)


RegisterServerEvent('qb-flightschool:server:StartTest', function(data)
	local type = data.type
    local src = source
    local Player = QBCore.Functions.GetPlayer(src)
	local licenses = Player.PlayerData.metadata["licences"]
	local launch = false

	if type == "thflight" then
		launch = true
	else
		if licenses['thflight'] then
			launch = true
		else
			TriggerClientEvent('QBCore:Notify', src, Lang:t("no_code"), 'error')
		end
	end
	if launch then
		if Player.PlayerData.money["cash"] >= Config.Licenses[type].price then
			if Config.Licenses[type].price > 0 then
				Player.Functions.RemoveMoney("cash", Config.Licenses[type].price, "Flight Test")
				TriggerClientEvent('QBCore:Notify', src, Lang:t('you_paid', {value = Config.Licenses[type].price}), 'success')
			end
			TriggerClientEvent("qb-flightschool:client:StartTest", src, type)
		else
			TriggerClientEvent('QBCore:Notify', src, Lang:t("not_enough_money"), 'error')
		end
	end
end)
