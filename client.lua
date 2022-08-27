-- Variables
local QBCore = exports['qb-core']:GetCoreObject()
local PlayerData = QBCore.Functions.GetPlayerData()
local Initialized = false


-- Handlers
AddEventHandler('QBCore:Client:OnPlayerLoaded', function()
   local PlayerData = QBCore.Functions.GetPlayerData()
    if not Initialized then Init() end
end)

RegisterNetEvent('QBCore:Client:OnPlayerUnload', function()
  local PlayerData = {}
end)

function Init()
    Initialized = true
    CreateThread(function()
        for k in pairs(Config.Table) do
            for i = 1, #Config.Table[k]['Vehicles'] do
                local model = GetHashKey(Config.Table[k]["Vehicles"][i].defaultVehicle)
                RequestModel(model)
                while not HasModelLoaded(model) do
                    Wait(0)
                end
                local veh = CreateVehicle(model, Config.Table[k]["Vehicles"][i].coords.x, Config.Table[k]["Vehicles"][i].coords.y, Config.Table[k]["Vehicles"][i].coords.z, false, false)
                SetModelAsNoLongerNeeded(model)
                SetVehicleOnGroundProperly(veh)
                SetEntityInvincible(veh, true)
                SetVehicleDirtLevel(veh, 0.0)
                SetVehicleDoorsLocked(veh, 3)
                SetEntityHeading(veh, Config.Table[k]["Vehicles"][i].coords.w)
                FreezeEntityPosition(veh, true)
                SetVehicleNumberPlateText(veh, 'LAKESIDE-RP')
            end
        end
    end)
end