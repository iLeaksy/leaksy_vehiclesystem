Citizen.CreateThread(
    function()
        local classesConfigs = {
            [0] = Config.Compacts,
            [1] = Config.Sedans,
            [2] = Config.SUVs,
            [3] = Config.Coupes,
            [4] = Config.Muscle,
            [5] = Config.SportsClassics,
            [6] = Config.Sports,
            [7] = Config.Super,
            [8] = Config.Motorcycles,
            [9] = Config.OffRoad,
            [10] = Config.Industrial,
            [11] = Config.Utility,
            [12] = Config.Vans,
            [13] = Config.Cycles,
            [14] = Config.Boats,
            [15] = Config.Helicopters,
            [16] = Config.Planes,
            [17] = Config.Service,
            [18] = Config.Emergency,
            [19] = Config.Military,
            [20] = Config.Commercial,
            [21] = Config.Trains
        }

        local customSpeeds = {}
        for i = 1, #Config.CustomSpeeds do
            customSpeeds[GetHashKey(Config.CustomSpeeds[i].model)] = Config.CustomSpeeds[i].speed
        end

        while true do
            Citizen.Wait(1000)
            local ped = PlayerPedId()
            if IsPedInAnyVehicle(ped, false) then
                local veh = GetVehiclePedIsIn(ped, false)
                if Config.Handling == "classes" then
                    local vehclass = GetVehicleClass(veh)
                    local config = classesConfigs[vehclass]
                    if config then
                        ModifyVehicleTopSpeed(veh, config)
                    end
                elseif Config.Handling == "vehicles" then
                    local vehicleHash = GetEntityModel(veh)
                    local speed = customSpeeds[vehicleHash]
                    if speed then
                        ModifyVehicleTopSpeed(veh, speed)
                    end
                else
                    print("You have not selected a proper config for what to boost! Please check your *config.lua* file")
                end
            else
                Citizen.Wait(5000)
            end
        end
    end
)

Citizen.CreateThread(
    function()
        if Config.Handling == "classes" or Config.Handling == "vehicles" then
            print("Your current Handling is set to -", Config.Handling)
        else
            print("Invalid Config.Handling setup, should be classes or vehicles")
        end
    end
)
