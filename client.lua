Citizen.CreateThread(
    function()
        while true do
            Citizen.Wait(2000) -- miliseconds
            if Config.Handling == "classes" then
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

                Citizen.CreateThread(
                    function()
                        while true do
                            Citizen.Wait(1000) -- 1000 ms = 1seconds //wait 1s
                            local ped = PlayerPedId()
                            local veh = GetVehiclePedIsIn(ped, false)
                            if veh then
                                local vehclass = GetVehicleClass(veh)
                                local config = classesConfigs[vehclass]
                                if config then
                                    ModifyVehicleTopSpeed(veh, config)
                                end
                            else
                                Citizen.Wait(10000) -- 1000 ms = 1sec // wait 10s
                            end
                        end
                    end
                )
            elseif Config.Handling == "vehicles" then
                Citizen.CreateThread(
                    function()
                        while true do
                            Citizen.Wait(1000) -- Wait 5 seconds before checking again
                            local ped = PlayerPedId()
                            if IsPedInAnyVehicle(ped, false) then -- Check if the player is in a vehicle
                                local veh = GetVehiclePedIsIn(ped, false)
                                local vehicleHash = GetEntityModel(veh)
                                for i = 1, #Config.CustomSpeeds do
                                    if vehicleHash == GetHashKey(Config.CustomSpeeds[i].model) then
                                        local vehicletospeedup = GetVehiclePedIsIn(ped, false)
                                        ModifyVehicleTopSpeed(vehicletospeedup, Config.CustomSpeeds[i].speed)
                                    end
                                end
                            else
                                Citizen.Wait(5000) -- Wait another 5 seconds before checking again
                            end
                        end
                    end
                )
            else
                print("You have not selected a proper config for what to boost! Please check your *config.lua* file")
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
