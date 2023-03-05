AddEventHandler(
    "onResourceStart",
    function(resourceName)
        if (GetCurrentResourceName() ~= resourceName) then
            return
        end
        print("^1leaksy_vehiclesystem ^7has been ^2started..")
    end
)
