Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10)
        local ped = PlayerPedId()
        local veh = GetVehiclePedIsIn(ped, false)
        local vehclass = GetVehicleClass(veh)
        if veh ~= nil then
			--print(veh)
           -- print(vehclass)
            if GetVehicleClass(veh) == 0 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Compacts);
            elseif GetVehicleClass(veh) == 1 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Sedans);
            elseif GetVehicleClass(veh) == 2 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.SUVs);
            elseif GetVehicleClass(veh) == 3 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Coupes);
            elseif GetVehicleClass(veh) == 4 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Muscle);
            elseif GetVehicleClass(veh) == 5 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.SportsClassics);	
            elseif GetVehicleClass(veh) == 6 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Sports);			
            elseif GetVehicleClass(veh) == 7 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Super);
            elseif GetVehicleClass(veh) == 8 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Motorcycles);
            elseif GetVehicleClass(veh) == 9 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.OffRoad);
            elseif GetVehicleClass(veh) == 10 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Industrial);
            elseif GetVehicleClass(veh) == 11 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Utility);
            elseif GetVehicleClass(veh) == 12 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Vans);
            elseif GetVehicleClass(veh) == 13 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Cycles);
            elseif GetVehicleClass(veh) == 14 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Boats);
            elseif GetVehicleClass(veh) == 15 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Helicopters);
            elseif GetVehicleClass(veh) == 16 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Planes);
            elseif GetVehicleClass(veh) == 17 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Service);
            elseif GetVehicleClass(veh) == 18 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Emergency);
            elseif GetVehicleClass(veh) == 19 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Military);
            elseif GetVehicleClass(veh) == 20 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Commercial);
            elseif GetVehicleClass(veh) == 21 then
                ModifyVehicleTopSpeed(GetVehiclePedIsIn(ped, false), Config.Trains);
			end
		else
			Wait(10000)
        end
	end
end)



