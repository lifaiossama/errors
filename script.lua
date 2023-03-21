repeat wait() until game:IsLoaded()
local rs = "https://raw.githubusercontent.com/lifaiossama/errors/main/"

local games = {
    ADS = {
        6938803436,
        7338881230,
        6990129309,
        7274690025,
        6990131029,
        6616269295,
        6777576286,
        6937594306,
        6777578893,
        6910433849,
        7271566117,
        7337505778,
        6892503829,
        6892513099,
        6938236159,
        6911385724,
        6990133340,
    },
    Kaizen = {
        7525610732,
    },
    SwordSim = {
        11040063484,
    },
    WFS = {
        2046084258,
        1769922392,
        3913489220,
        3955193102,
        3262314006,
        3076527614,
        8554378337,
        11093626507,
        11528308728,
        12512863474,
        7961252747,
        8772594693,
        11491808702,
        11811402617,
        12119498737,
        12335352281,
    },
}

local placeId = game.PlaceId

for scriptName, gameIds in pairs(games) do
    for _, gameId in ipairs(gameIds) do
        if gameId == placeId then
            loadstring(game:HttpGet(rs .. scriptName .. ".lua"))()
            break
        end
    end
end
