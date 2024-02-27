-- NOTES:
-- Please note that all values must be floats, i.e., they must have .00 after them.
-- Example: If Config.SUVs is set to 100, it will not work! It must be 60.00!!!
-- The script works for both vanilla vehicles and modded vehicles. :)
-- Setting negatives in the float values can make your vehicle go slower; please do not set it too low; otherwise, the car won't move at all!

Config = {}

-- Choose between "classes" or "vehicles"
Config.Handling = "classes"

-- Vehicle class boosts
Config.Compacts = 60.00
Config.Sedans = 60.00
Config.SUVs = 60.00
Config.Coupes = 60.00
Config.Muscle = 60.00
Config.SportsClassics = 60.00
Config.Sports = 60.00
Config.Super = 60.00
Config.Motorcycles = 60.00
Config.OffRoad = 60.00
Config.Industrial = 60.00
Config.Utility = 60.00
Config.Vans = 60.00
Config.Cycles = 60.00
Config.Boats = 60.00
Config.Helicopters = 1000.00
Config.Planes = 00.00
Config.Service = 60.00
Config.Emergency = 60.00
Config.Military = 60.00
Config.Commercial = 60.00
Config.Trains = 60.00

-- Config file for custom vehicle speeds
Config.CustomSpeeds = {
    {model = "sultanrs", speed = 101.00},
    {model = "sultan", speed = 102.00},
    {model = "feltzer2", speed = 103.00},
    {model = "feltzer3", speed = 104.00}
}
