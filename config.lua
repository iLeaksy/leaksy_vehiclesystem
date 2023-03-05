--NOTES
-- Please note that all values must be float, meaning the must have .00 after them.
-- Example: If Config.SUVs is set to 100, it will not work! It Must be 100.00!!!
-- The Script works for both vanilla vehicles and modded vehicles. :)
-- Setting Negatives in the float values can make your vehicle go slower, please do not set it too low otherwise the car won't move at all!

Config = {}

Config.Handling = "vehicles" -- "classes" or "vehicles" - choose between Classes or Certain Vehicles

-- Config.VehiclesClass = EXAMPLEBOOST.00
Config.Compacts = 100.00
Config.Sedans = 100.00
Config.SUVs = 100.00
Config.Coupes = 100.00
Config.Muscle = 100.00
Config.SportsClassics = 100.00
Config.Sports = 10000.00
Config.Super = 100.00
Config.Motorcycles = 100.00
Config.OffRoad = 100.00
Config.Industrial = 100.00
Config.Utility = 100.00
Config.Vans = 100.00
Config.Cycles = 100.00
Config.Boats = 100.00
Config.Helicopters = 100.00
Config.Planes = 100.00
Config.Service = 100.00
Config.Emergency = 100.00
Config.Military = 100.00
Config.Commercial = 100.00
Config.Trains = 100.00

-- Config file for Vehicles
-- NOTES
-- Aftehr the update on 3/5/2023, it will wor  with DEFAULT SPAWN CODES !!! :)
Config.CustomSpeeds = {
    {model = "sultanrs", speed = 101.00},
    {model = "sultan", speed = 102.00},
    {model = "feltzer2", speed = 103.00},
    {model = "feltzer3", speed = 104.00}
}
