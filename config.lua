local QBCore = exports['qb-core']:GetCoreObject()
Config                 = {}
Config.DrawDistance    = 100.0
Config.MaxErrors       = 5
Config.SpeedMultiplier = 3.6

Config.Licenses = {
	thflight	= {name = Lang:t("theory_test"),		price = 5000},
	plane  		= {name = Lang:t("flight_test_plane"),	price = 100},
	heli		= {name = Lang:t("flight_test_heli"),	price = 150},
}

Config.VehicleModels = {
	plane  		 = 'dodo',
	heli 		 = 'havok'
}

--Config.SpeedLimits = {
--	residence = 50,
--	town      = 80,
--	freeway   = 120
--}

Config.Zones = {
	FlightSchool = {
		Pos   = vector3(-1155.04, -2715.28, 19.89),
	},

	VehicleSpawnPoint = {
		Pos   = vector4(-978.65, -2996.51, 11.95, 61.07),
	}

}

Config.CheckPoints = {

	{
		Pos = {x = -1064.91, y = -2979.39, z = 13.96},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t("go_next_point"), 5000)
		end
	},

	{
		Pos = {x = -1023.24, y = -3061.04, z = 13.94},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t("go_next_point"), 5000)
		end
	},

	{
		Pos = {x = -1011.76, y = -3129.57, z = 13.94},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t("go_next_point"), 5000)
		end
	},

	{
		Pos = {x = -1478.29, y = -2867.07, z = 50.96},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t("go_next_point"), 5000)
		end
	},

	{
		Pos = {x = -1985.79, y = -2583.05, z = 208.94},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t("go_next_point"), 5000)
		end
	},

	{
		Pos = {x = -3807.71, y = 19.63, z = 410.03},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t("go_next_point"), 5000)
		end
	},

	{
		Pos = {x = -3267.47, y = 2473.18, z = 477.76},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t("go_next_point"), 5000)
		end
	},

	{
		Pos = {x = -615.01, y = 2543.81, z = 564.87},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t("go_next_point"), 5000)
		end
	},

	{
		Pos = {x = 284.09, y = 2827.10, z = 238.94},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t("go_next_point"), 5000)
		end
	},

	{
		Pos = {x = 579.14, y = 2912.26, z = 169.19},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t("go_next_point"), 5000)
		end
	},

	{
		Pos = {x = 853.16, y = 2995.65, z = 107.86},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t('gratz_stay_alert'), 5000)
		end
	},

	{
		Pos = {x = 997.62, y = 3059.63, z = 57.99},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 1281.22, y = 3136.57, z = 40.41},
		Action = function(playerPed, vehicle)
			DrawMissionText(Lang:t('go_next_point'), 5000)
		end
	},

	{
		Pos = {x = 1699.26, y = 3249.33, z = 40.95},
		Action = function(playerPed, vehicle)
			PlaySound(-1, 'RACE_PLACED', 'HUD_AWARDS', false, 0, true)
			QBCore.Functions.DeleteVehicle(vehicle)
		end
	},
}
