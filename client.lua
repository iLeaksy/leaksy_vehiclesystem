Citizen.CreateThread(function()
    -- Vehicle classes mapped to config settings
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

    -- Hash map of custom speeds for quick lookup
    local customSpeeds = {}
    for _, vehicle in ipairs(Config.CustomSpeeds) do
        customSpeeds[GetHashKey(vehicle.model)] = vehicle.speed
    end

    while true do
        Citizen.Wait(1000) -- Check every second
        local ped = PlayerPedId()

        if IsPedInAnyVehicle(ped, false) then
            local veh = GetVehiclePedIsIn(ped, false)
            
            if Config.Handling == "classes" then
                -- Modify speed based on vehicle class
                local vehClass = GetVehicleClass(veh)
                local config = classesConfigs[vehClass]
                if config then
                    ModifyVehicleTopSpeed(veh, config)
                end

            elseif Config.Handling == "vehicles" then
                -- Modify speed based on specific vehicle model
                local vehicleHash = GetEntityModel(veh)
                local speed = customSpeeds[vehicleHash]
                if speed then
                    ModifyVehicleTopSpeed(veh, speed)
                end

            else
                print("Invalid Config.Handling setup. Please check your config.lua file.")
            end
        else
            Citizen.Wait(5000) -- Delay when player is not in a vehicle
        end
    end
end)

-- Startup config validation
Citizen.CreateThread(function()
    if Config.Handling == "classes" or Config.Handling == "vehicles" then
        print("Current Handling mode:", Config.Handling)
    else
        print("Invalid Config.Handling. Use 'classes' or 'vehicles' in your config.")
    end
end)
