repeat wait() until game:IsLoaded()
local rs = "http://www.intruders.ga/"

local games = {
    [6938803436] = "ADS.lua",
    [7338881230] = "ADS.lua",
    [6990129309] = "ADS.lua",
    [7274690025] = "ADS.lua",
    [6990131029] = "ADS.lua",
    [6990133340] = "ADS.lua",
    [7525610732] = "Kaizen.lua",
    [11040063484] = "SwordSim.lua",
}

for i, v in pairs(games) do
    if i == game.PlaceId or i == game.GameId then
        loadstring(game:HttpGet(rs .. v))()
    end
end