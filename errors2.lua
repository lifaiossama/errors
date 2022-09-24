shared.key = "ToZx"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Poopland/Alpha/Loader/Alphabit.luarin"))()

repeat wait() until game:IsLoaded()
_G.Settings = {}
if game.PlaceId == 6938803436 or game.PlaceId == 7338881230 or game.PlaceId == 6990129309 or game.PlaceId == 7274690025 or game.PlaceId == 6990131029 or game.PlaceId == 6990133340 then
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lifaiossama/errors/main/errors.lua"))()
    end)
end
else
repeat wait() until game:IsLoaded()
_G.Settings = {}

if game.PlaceId == 2727067538 then
    pcall(function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/lifaiossama/errors/main/WorldZero.Lua"))()
    end)
end