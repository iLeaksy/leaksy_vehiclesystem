Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000) -- miliseconds
    if Config.Handling == 'classes' then
       -- print('classes')
        Citizen.CreateThread(function()
            while true do
                Citizen.Wait(10)
                local ped = PlayerPedId()
                local veh = GetVehiclePedIsIn(ped, false)
                local vehclass = GetVehicleClass(veh)
                if veh ~= nil then
                    if vehclass == 0 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Compacts);
                    elseif vehclass == 1 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Sedans);
                    elseif vehclass == 2 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.SUVs);
                    elseif vehclass == 3 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Coupes);
                    elseif vehclass == 4 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Muscle);
                    elseif vehclass == 5 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.SportsClassics);	
                    elseif vehclass == 6 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Sports);			
                    elseif vehclass == 7 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Super);
                    elseif vehclass == 8 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Motorcycles);
                    elseif vehclass == 9 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.OffRoad);
                    elseif vehclass == 10 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Industrial);
                    elseif vehclass == 11 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Utility);
                    elseif vehclass == 12 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Vans);
                    elseif vehclass == 13 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Cycles);
                    elseif vehclass == 14 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Boats);
                    elseif vehclass == 15 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Helicopters);
                    elseif vehclass == 16 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Planes);
                    elseif vehclass == 17 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Service);
                    elseif vehclass == 18 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Emergency);
                    elseif vehclass == 19 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Military);
                    elseif vehclass == 20 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Commercial);
                    elseif vehclass == 21 then
                        ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Trains);
                    end
                else
                    Wait(10000)
                end
            end
        end)
elseif Config.Handling == 'vehicles' then
    --print('vehicles')
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(10)
            local playerPed = GetPlayerPed(-1)
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            local vehicleModel = GetDisplayNameFromVehicleModel(GetEntityModel(vehicle))
                for i = 1, #Config.CustomSpeeds do                              
                    if vehicleModel == Config.CustomSpeeds[i].model then
                        ModifyVehicleTopSpeed(vehicle, Config.CustomSpeeds[i].speed );
                    end
                end
        end
    end)
end
end

end)

Citizen.CreateThread(function()
    print('Your current Handling is set to - ',Config.Handling)
end)