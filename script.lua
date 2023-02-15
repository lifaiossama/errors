repeat wait() until game:IsLoaded()
local rs = "http://www.intruders.ga/"

local games = {
    [6938803436] = "ADS.lua",
    [7338881230] = "ADS.lua",
    [6990129309] = "ADS.lua",
    [7274690025] = "ADS.lua",
    [6990131029] = "ADS.lua",
    [6616269295] = "ADS.lua",
    [6777576286] = "ADS.lua",
    [6937594306] = "ADS.lua",
    [6777578893] = "ADS.lua",
    [6910433849] = "ADS.lua",
    [7271566117] = "ADS.lua",
    [7337505778] = "ADS.lua",
    [6892503829] = "ADS.lua",
    [6892513099] = "ADS.lua",
    [6938236159] = "ADS.lua",
    [6911385724] = "ADS.lua",
    [6990133340] = "ADS.lua",
    [7525610732] = "Kaizen.lua",
    [11040063484] = "SwordSim.lua",
}

for i, v in pairs(games) do
    if i == game.PlaceId or i == game.GameId then
        loadstring(game:HttpGet(rs .. v))()
    end
end