_G.Settings = {}

if not game:IsLoaded() then
    game.Loaded:Wait()
end
local a = "The Intruders"
local b = game.Players.LocalPlayer.Name .. "_AnimeDimension.lua"
function saveSettings()
    local c = game:GetService("HttpService")
    local d = c:JSONEncode(_G.Settings)
    if writefile then
        if isfolder(a) then
            writefile(a .. "\\" .. b, d)
        else
            makefolder(a)
            writefile(a .. "\\" .. b, d)
        end
    end
end
function loadSettings()
    local c = game:GetService("HttpService")
    if isfile(a .. "\\" .. b) then
        _G.Settings = c:JSONDecode(readfile(a .. "\\" .. b))
    end
end
loadSettings()
local function MainRemote(...)
    return  game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(...)
end
local e = game:GetService("ReplicatedStorage")
local f = game:GetService("VirtualInputManager")
local g = game:GetService("Players")
local h = game:GetService("VirtualUser")
local i = game:GetService("TweenService")
local j = g.LocalPlayer
function HideGui()
    local k = game.CoreGui:FindFirstChild("Orion")
    local l
    for m, n in pairs(k:GetChildren()) do
        if m == 2 then
            l = n
        end
    end
    if k.Enabled then
        l:TweenSize(UDim2.new(0, 0, 0, 0), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
        repeat
            task.wait()
        until l.Size.Y.Offset < 1
        k.Enabled = false
    else
        l:TweenSize(UDim2.new(0, 615, 0, 344), Enum.EasingDirection.Out, Enum.EasingStyle.Quart, .6, true)
        repeat
            task.wait()
        until l.Size.Y.Offset > 1
        k.Enabled = true
    end
end
spawn(
    function()
        j = game.Players.LocalPlayer
        Mouse = j:GetMouse()
        Mouse.KeyDown:connect(
            function(o)
                o = o:lower()
                if o == _G.Settings.toggleguikey then
                    task.spawn(HideGui)
                end
            end
        )
    end
)
j.Idled:Connect(
    function()
        h:ClickButton2(Vector2.new())
    end
)
local p = {
    "Accelerator",
    "Akaza",
    "Alice",
    "All Might",
    "Artoria",
    "Asta",
    "Astolfo Summer Character",
    "AsunaCharacter",
    "Attack Titan",
    "Bakugo",
    "Broly",
    "Deku",
    "Diablo",
    "Emiya Archer",
    "Esper",
    "Eugeo",
    "Gear 5 Luffy",
    "Genos",
    "Gilgamesh",
    "Gojo",
    "Goku",
    "Gray",
    "Hinata",
    "Ice Queen Esdeath",
    "Ichigo",
    "Infinity Gojo",
    "Itadori",
    "KanekiCharacter",
    "Katakuri (Summer) Character",
    "Katakuri",
    "Killua",
    "KiritoCharacter",
    "Kokushibo",
    "Lancer",
    "Levi",
    "Luffy",
    "Megumin (Halloween)",
    "Megumin",
    "MilimCharacter (Valentine)",
    "MisakaCharacter",
    "Naruto (Kurama Mode)",
    "Naofumi",
    "Naruto Six Paths",
    "Naruto",
    "Natsu",
    "Nezuko (New Year)",
    "Obito",
    "Priestess",
    "PriestessCharacter (Shrine)",
    "RengokuCharacter",
    "Rimuru",
    "RimuruDemonLord",
    "Rukia",
    "Ryuko",
    "Saber Alter Character",
    "Sakura",
    "Sasuke",
    "Shadow Accelerator",
    "Shadow Attack Titan",
    "Shadow Esdeath",
    "Shadow Infinity Gojo",
    "Shadow Rimuru",
    "Shadow Yoriichi",
    "Shanks",
    "Shinra",
    "Sukuna",
    "Sung Jin Woo",
    "Tanjiro",
    "Todoroki",
    "TogaCharacter (Halloween)",
    "Uzui",
    "Winter Spirit Emilia",
    "Yoriichi",
    "Zenitsu",
    "Zoro (Summer)",
    "Zoro"
}
local q = {
    "Infinite Mode",
    "Titan Dimension",
    "Demon Dimension",
    "Curse Dimension",
    "Villain Dimension",
    "Sword Dimension",
    "Ghoul Dimension",
    "Fate Dimension",
    "Slime Dimension"
}
local r = {"Easy", "Hard", "Nightmare", "Infinite"}
local s = {"Nardo Beast Capsule", "Raid Capsule", "Gear 5 Fluffy Capsule","Cursed Sage Capsule","Red Emperor Capsule", "Esper Capsule"}
local t = { "Tengu Raid", "Nardo Beast Raid", "Gear 5 Fluffy Raid", "Red Emperor Raid", "Cursed Sage Raid", "Hirito Raid", "Titan Raid"}
local u = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local v = u:MakeWindow({Name = "The Intruders", HidePremium = true, IntroEnabled = false})
local w = v:MakeTab({Name = "Main", PremiumOnly = false})
local x = v:MakeTab({Name = "Extra", PremiumOnly = false})
local D = v:MakeTab({Name = "TP Method", PremiumOnly = false})
local E = v:MakeTab({Name = "Auto S & P", PremiumOnly = false})
local y = v:MakeTab({Name = "Specific & Raid", PremiumOnly = false})
local F = v:MakeTab({Name = "Afk Farm", PremiumOnly = false})
local A = v:MakeTab({Name = "Auto Sell", PremiumOnly = false})
local B = v:MakeTab({Name = "Auto Spin", PremiumOnly = false})
local C = v:MakeTab({Name = "Auto Claim", PremiumOnly = false})
local z = v:MakeTab({Name = "Webhook", PremiumOnly = false})
local G = v:MakeTab({Name = "Credits", PremiumOnly = false})

--[[
Name = <string> - The name of the colorpicker.
Default = <color3> - The default value of the colorpicker.
Callback = <function> - The function of the colorpicker.
]]

w:AddToggle(
    {
        Name = "💥 Auto Level",
        Default = _G.Settings.Autolvl,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Autolvl = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.Autolvl then
                            break
                        end
                        wait(10)
                        Lvl = game.Players.LocalPlayer.leaderstats.Level.Value
                        if Lvl > 0 and Lvl < 6 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Titan Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 5 and Lvl < 11 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Hard",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Titan Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 10 and Lvl < 16 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Titan Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 15 and Lvl < 21 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Demon Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 20 and Lvl < 26 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Hard",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Demon Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 25 and Lvl < 31 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Demon Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 30 and Lvl < 36 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Curse Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 35 and Lvl < 41 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Hard",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Curse Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 40 and Lvl < 46 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Curse Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 45 and Lvl < 51 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Villain Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 50 and Lvl < 56 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Hard",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Villain Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 55 and Lvl < 61 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Villain Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 60 and Lvl < 68 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Sword Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 67 and Lvl < 76 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Sword Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 75 and Lvl < 83 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Ghoul Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 82 and Lvl < 91 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Ghoul Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 90 and Lvl < 98 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Easy",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Fate Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 97 and Lvl < 106 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Fate Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                        if Lvl > 105 and Lvl < 112 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "easy",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Slime Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                            
                        end
                        if Lvl > 113 then
                            wait(1)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "CreateRoom",
                                {
                                    ["Difficulty"] = "Nightmare",
                                    ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                    ["MapName"] = "Slime Dimension",
                                    ["Hardcore"] = _G.Settings.Hardcore
                                }
                            )
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "TeleportPlayers"
                            )
                        end
                    end
                end
            )
        end
    }
)
w:AddToggle(
    {
        Name = "💥 Farm Time Challenge",
        Default = _G.Settings.Autotrial,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Autotrial = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(7) do
                        if not _G.Settings.Autotrial then
                            break
                        end
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "TeleportToTimeChallenge"
                        )
                    end
                end
            )
        end
    }
)
w:AddToggle(
    {
        Name = "💥 Farm Specific Map",
        Default = _G.Settings.Autocustom,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Autocustom = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(27) do
                        if not _G.Settings.Autocustom then
                            break
                        end
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "CreateRoom",
                            {
                                ["Difficulty"] = _G.Settings.CustomDifficulty,
                                ["FriendsOnly"] = _G.Settings.FriendsOnly,
                                ["MapName"] = _G.Settings.custommapselect,
                                ["Hardcore"] = _G.Settings.Hardcore
                            }
                        )
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "TeleportPlayers"
                        )
                    end
                end
            )
        end
    }
)

w:AddToggle(
    {
        Name = "💥 Farm Raid",
        Default = _G.Settings.Autoraid,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Autoraid = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(3) do
                        if not _G.Settings.Autoraid then
                            break
                        end
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "CreateRoom",
                            {
                                ["Difficulty"] = "Easy",
                                ["FriendsOnly"] = true,
                                ["MapName"] = _G.Settings.Raidselectmap,
                                ["Hardcore"] = false
                            }
                        )
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "TeleportPlayers"
                        )
                    end
                end
            )
        end
    }
)
F:AddToggle(
    {
        Name = "💥 Farm Raid + AFK",
        Default = _G.Settings.afkandraid,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.afkandraid = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(3) do
                        if not _G.Settings.afkandraid then
                            break
                        end
                        spawn(
                            function()
                                if game.PlaceId == 7274690025 or game.PlaceId == 6938803436 then
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "CreateRoom",
                                        {
                                            ["Difficulty"] = "Easy",
                                            ["FriendsOnly"] = true,
                                            ["MapName"] = _G.Settings.Raidselectmap,
                                            ["Hardcore"] = false
                                        }
                                    )
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportPlayers"
                                    )
                                    wait(5)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportToAFK"
                                    )
                                end
                            end
                        )
                        spawn(
                            function()
                                if game.PlaceId == 6990131029 then
                                    wait(300)
                                    game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                        "TeleportToLobbyAFK",
                                        true
                                    )
                                end
                            end
                        )
                    end
                end
            )
        end
    }
)
F:AddToggle(
    {
        Name = "💥 Farm Raid Token",
        Default = _G.Settings.farmraidtoken,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.farmraidtoken = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(260) do
                        if not _G.Settings.farmraidtoken then
                            break
                        end
                        spawn(
                            function()
                                if game.PlaceId == 6990131029 then
                                    _G.Name = game.Players.LocalPlayer.Name .. "StatDisplay"
                                    valuecurrency = game.ReplicatedStorage[_G.Name].AfkCurrencyChosen.Value
                                    if valuecurrency == "Gem" then
                                        wait(1)
                                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                            "ChangeAFKCurrency"
                                        )
                                        for m, n in pairs(
                                            getconnections(
                                                game.Players.LocalPlayer.PlayerGui.AfkGui.CenterUIFrame.Frame.ChangeCurrency.MouseButton1Click
                                            )
                                        ) do
                                            n:Fire()
                                        end
                                    end
                                end
                            end
                        )
                    end
                end
            )
        end
    }
)
F:AddLabel("If You Want Farm Gem Untoggle Farm Raid Token")
w:AddToggle(
    {
        Name = "💥 Farm Boss Rush",
        Default = _G.Settings.Autoboss,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Autoboss = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(4) do
                        if not _G.Settings.Autoboss then
                            break
                        end
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "TeleportToBossRush"
                        )
                    end
                end
            )
        end
    }
)
w:AddToggle(
    {
        Name = "💥 Farm Speed Raid (Auto Random Character)",
        Default = _G.Settings.Autospeedraid,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Autospeedraid = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.Autospeedraid then
                            break
                        end
                        wait()
                        local Y = math.random(1, #p)
                        local Z = p[Y]
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "TeleportToShadowRaid",
                            Z
                        )
                    end
                end
            )
        end
    }
)
w:AddButton({
	Name = "Teleport to Lobby",
    Default = _G.Settings.backtolobby,
	Callback = function(H)
        _G.Settings.backtolobby = H
        saveSettings()
        game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
  	end    
})
w:AddButton(
    {Name = "For Auto execute", Callback = function()
            setclipboard("https://youtu.be/o3VaCa7CcoA")
        end}
)
--[[
w:AddToggle(
    {
        Name = "🌀 Reselect Characters",
        Default = _G.Settings.Reselect,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Reselect = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(20) do
                        if not _G.Settings.Reselect then
                            break
                        end
                         game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                             "EquipCharacter",
                             "Uzui"
                         )
                         game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                             "EquipCharacterAssist",
                             "Shanks",
                             1
                         )
                         game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                             "EquipCharacterAssist",
                             "Obito",
                             2
                         )
                    end
                end
            )
        end
    }
)
w:AddLabel("☝️ This only works with Tengu, Shanks and Obito for now") ]]--
A:AddToggle(
    {
        Name = "Auto Sell Common",
        Default = _G.Settings.autosellcommon,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.autosellcommon = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.autosellcommon then
                            break
                        end
                        wait()
                        local I = {"Common"}
                        local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
                        local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
                        function SellCard(L)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "SellCard",
                                L
                            )
                        end
                        for M, N in pairs(K:GetChildren()) do
                            if N:IsA("ImageButton") then
                                for O, P in next, getconnections(N.CardClick.MouseButton1Down) do
                                    P:Fire()
                                    local Q = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
                                    for R, S in next, I do
                                        if Q == S then
                                            SellCard(N.Name)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    }
)
A:AddToggle(
    {
        Name = "Auto Sell Uncommon",
        Default = _G.Settings.autoselluncommon,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.autoselluncommon = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.autoselluncommon then
                            break
                        end
                        wait()
                        local I = {"Uncommon"}
                        local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
                        local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
                        function SellCard(L)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "SellCard",
                                L
                            )
                        end
                        for M, N in pairs(K:GetChildren()) do
                            if N:IsA("ImageButton") then
                                for O, P in next, getconnections(N.CardClick.MouseButton1Down) do
                                    P:Fire()
                                    local Q = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
                                    for R, S in next, I do
                                        if Q == S then
                                            SellCard(N.Name)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    }
)
A:AddToggle(
    {
        Name = "Auto Sell Rare",
        Default = _G.Settings.autosellrare,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.autosellrare = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.autosellrare then
                            break
                        end
                        wait()
                        local I = {"Rare"}
                        local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
                        local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
                        function SellCard(L)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "SellCard",
                                L
                            )
                        end
                        for M, N in pairs(K:GetChildren()) do
                            if N:IsA("ImageButton") then
                                for O, P in next, getconnections(N.CardClick.MouseButton1Down) do
                                    P:Fire()
                                    local Q = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
                                    for R, S in next, I do
                                        if Q == S then
                                            SellCard(N.Name)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    }
)
A:AddToggle(
    {
        Name = "Auto Sell Epic",
        Default = _G.Settings.autosellepic,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.autosellepic = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.autosellepic then
                            break
                        end
                        wait()
                        local I = {"Epic"}
                        local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
                        local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
                        function SellCard(L)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "SellCard",
                                L
                            )
                        end
                        for M, N in pairs(K:GetChildren()) do
                            if N:IsA("ImageButton") then
                                for O, P in next, getconnections(N.CardClick.MouseButton1Down) do
                                    P:Fire()
                                    local Q = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
                                    for R, S in next, I do
                                        if Q == S then
                                            SellCard(N.Name)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    }
)
A:AddToggle(
    {
        Name = "Auto Sell Legendary",
        Default = _G.Settings.autoselllegendary,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.autoselllegendary = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.autoselllegendary then
                            break
                        end
                        wait()
                        local I = {"Legendary"}
                        local J = game.Players.LocalPlayer.PlayerGui.MainGui.CenterUIFrame.Inventory
                        local K = J.Frame.CardInventoryFrame.CardInventoryScrollingFrame
                        function SellCard(L)
                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                "SellCard",
                                L
                            )
                        end
                        for M, N in pairs(K:GetChildren()) do
                            if N:IsA("ImageButton") then
                                for O, P in next, getconnections(N.CardClick.MouseButton1Down) do
                                    P:Fire()
                                    local Q = J.Frame.InvOverlayOuterFrame.CardInventoryOverlay.Rarity.Text
                                    for R, S in next, I do
                                        if Q == S then
                                            SellCard(N.Name)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            )
        end
    }
)
D:AddToggle(
    {
        Name = "TP onTop",
        Default = _G.Settings.AutoTP,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoTP = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait() do
                        if not _G.Settings.AutoTP then
                            break
                        end
                        pcall(
                            function()
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                            end
                        )
                        pcall(
                            function()
                                for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                    repeat
                                        game:GetService("RunService").Heartbeat:wait()
                                        local T =
                                            (n.Head.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                        if T < 999 then
                                            Speed2 = _G.Settings.Speed
                                        end
                                        local U = game:service "TweenService"
                                        local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                        local W =
                                            U:Create(
                                            game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                            V,
                                            {
                                                CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) +
                                                    Vector3.new(0, _G.Settings.Height, 0)
                                            }
                                        )
                                        W:Play()
                                        wait(T / Speed2)
                                    until not _G.Settings.AutoTP or n.Humanoid.Health <= 0 or not n.Parent or not n
                                end
                            end
                        )
                    end
                end
            )
        end
    }
)
D:AddToggle(
    {
        Name = "TP Under",
        Default = _G.Settings.AutoTP1,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoTP1 = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait() do
                        if not _G.Settings.AutoTP1 then
                            break
                        end
                        pcall(
                            function()
                                game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
                            end
                        )
                        pcall(
                            function()
                                for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                    repeat
                                        game:GetService("RunService").Heartbeat:wait()
                                        local T =
                                            (n.Head.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                        if T < 999 then
                                            Speed2 = _G.Settings.Speed
                                        end
                                        local U = game:service "TweenService"
                                        local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                        local W =
                                            U:Create(
                                            game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                            V,
                                            {
                                                CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) +
                                                    Vector3.new(0, _G.Settings.Height1, 0)
                                            }
                                        )
                                        W:Play()
                                        wait(T / Speed2)
                                    until not _G.Settings.AutoTP1 or n.Humanoid.Health <= 0 or not n.Parent or not n
                                end
                            end
                        )
                    end
                end
            )
        end
    }
)
D:AddToggle(
    {
        Name = "TP Behind",
        Default = _G.Settings.AutoTP2,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoTP2 = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait() do
                        if not _G.Settings.AutoTP2 then
                            break
                        end
                        pcall(
                            function()
                                for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                                    repeat
                                        game:GetService("RunService").Heartbeat:wait()
                                        local T =
                                            (n.HumanoidRootPart.Position -
                                            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                        if T < 999 then
                                            Speed2 = _G.Settings.Speed
                                        elseif T < 1000 then
                                            Speed2 = _G.Settings.Speed
                                        elseif T >= 1000 then
                                            Speed2 = _G.Settings.Speed
                                        end
                                        local U = game:service "TweenService"
                                        local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
                                        local W =
                                            U:Create(
                                            game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
                                            V,
                                            {
                                                CFrame = n.HumanoidRootPart.CFrame *
                                                    CFrame.new(0, 0, _G.Settings.distance)
                                            }
                                        )
                                        W:Play()
                                        wait(T / Speed2)
                                    until not _G.Settings.AutoTP2 or n.Humanoid.Health <= 0 or not n.Parent or not n
                                end
                            end
                        )
                    end
                end
            )
        end
    }
)
y:AddDropdown(
    {Name = "Select Difficulty", Default = _G.Settings.CustomDifficulty, Options = r, Callback = function(H)
            _G.Settings.CustomDifficulty = H
            saveSettings()
        end}
)
B:AddDropdown(
    {Name = "Select Capsule", Default = _G.Settings.selectegg, Options = s, Callback = function(H)
            _G.Settings.selectegg = H
            saveSettings()
        end}
)
y:AddDropdown(
    {Name = "Select Map", Default = _G.Settings.custommapselect, Options = q, Callback = function(H)
            _G.Settings.custommapselect = H
            saveSettings()
        end}
)
y:AddDropdown(
    {Name = "Select Raid", Default = _G.Settings.Raidselectmap, Options = t, Callback = function(H)
            _G.Settings.Raidselectmap = H
            saveSettings()
        end}
)

B:AddToggle(
    {
        Name = "Auto Capsule",
        Default = _G.Settings.autospingem,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.autospingem = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(_G.Settings.eggspintime) do
                        if not _G.Settings.autospingem then
                            break
                        end
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "BuyEgg",
                            _G.Settings.selectegg
                        )
                    end
                end
            )
        end
    }
)

B:AddToggle(
    {
        Name = "Summer Spin",
        Default = _G.Settings.SummerSpin,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.SummerSpin = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.SummerSpin then
                            break
                        end
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "SpinEventReward"
                        )
                    end
                end
            )
        end
    }
)
y:AddToggle(
    {Name = "Hardcore", Default = _G.Settings.Hardcore, Color = Color3.fromRGB(98, 0, 182), Callback = function(H)
            _G.Settings.Hardcore = H
            saveSettings()
        end}
)
y:AddToggle(
    {Name = "Friends Only", Default = _G.Settings.FriendsOnly, Color = Color3.fromRGB(98, 0, 182), Callback = function(H)
            _G.Settings.FriendsOnly = H
            saveSettings()
        end}
)
y:AddDropdown({Name = "Select Main Character", Default = _G.Settings.SelectedMainCharacter, Options = p, Callback = function(H)
    _G.Settings.SelectedMainCharacter = H
    saveSettings()
end})
task.spawn(function()
    while task.wait(1) do
        if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.PlayButtonsFrame.Frame.SpeedRaidBanner.SpeedRaidBannerOpenText.text:find('Ready in') then
        if _G.Settings.AutoEquipMCharacter and _G.Settings.SelectedMainCharacter then
            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                "EquipCharacter",
                _G.Settings.SelectedMainCharacter
            )
        end
    end
end
end)
y:AddToggle(
    {
        Name = "Auto Equip Main Character",
        Default = _G.Settings.AutoEquipMCharacter,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoEquipMCharacter = H
            saveSettings()
        end
    }
)
y:AddDropdown({Name = "Select Assist Character 1", Default = _G.Settings.SelectedAssitCharacter1, Options = p, Callback = function(H)
    _G.Settings.SelectedAssitCharacter1 = H
    saveSettings()
end})
y:AddDropdown({Name = "Select Assist Character 2", Default = _G.Settings.SelectedAssitCharacter2, Options = p, Callback = function(H)
    _G.Settings.SelectedAssitCharacter2 = H
    saveSettings()
end})
task.spawn(function()
    while task.wait(1) do
        if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.PlayButtonsFrame.Frame.SpeedRaidBanner.SpeedRaidBannerOpenText.text:find('Ready in') then
        if _G.Settings.AutoEquipACharacter then
            if _G.Settings.SelectedAssitCharacter1 then
                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                    "EquipCharacterAssist",
                    _G.Settings.SelectedAssitCharacter1,
                    1
                )
            end
            if _G.Settings.SelectedAssitCharacter2 then
                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                    "EquipCharacterAssist",
                    _G.Settings.SelectedAssitCharacter2,
                    2
                )
            end
        end
    end
    end
end)
y:AddToggle(
    {
        Name = "Auto Equip Assist Characters",
        Default = _G.Settings.AutoEquipACharacter,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoEquipACharacter = H
            saveSettings()
        end
    }
)


x:AddToggle(
    {
        Name = "Hide Name",
        Default = _G.Settings.Hidename,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Hidename = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.Hidename then
                            break
                        end
                        spawn(
                            function()
                                game.Players.LocalPlayer.Character.Head.PlayerHealthBarGui:Destroy()
                                game:GetService("StarterGui"):SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
                            end
                        )
                        spawn(
                            function()
                                local j = game:GetService("Players").LocalPlayer
                                local a1
                                j.CharacterAdded:Connect(
                                    function(a2)
                                        a1 = a2:WaitForChild("Humanoid")
                                    end
                                )
                                a1.Died:Connect(
                                    function()
                                        game.Players.LocalPlayer.Character.Head.PlayerHealthBarGui:Destroy()
                                        game:GetService("StarterGui"):SetCoreGuiEnabled(
                                            Enum.CoreGuiType.PlayerList,
                                            false
                                        )
                                    end
                                )
                            end
                        )
                    end
                end
            )
        end
    }
)
x:AddToggle(
    {
        Name = "Rejoin If Kick",
        Default = _G.Settings.kickrejoin,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.kickrejoin = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.kickrejoin then
                            break
                        end
                        game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(
                            function(a3)
                                if
                                    a3.Name == "ErrorPrompt" and a3:FindFirstChild("MessageArea") and
                                        a3.MessageArea:FindFirstChild("ErrorFrame")
                                 then
                                    game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
                                end
                            end
                        )
                    end
                end
            )
        end
    }
)

x:AddToggle(
    {
        Name = "Auto leave",
        Default = _G.Settings.Autoleave,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Autoleave = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(840) do
                        if not _G.Settings.Autoleave then
                            break
                        end
                        while wait(10) do
                            game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)                           
                         end                                                                                                                                                                                                                                                                       
                    end
                end
            )
        end
    }
)
x:AddLabel("☝️ if your game won't teleport you back to main lobby active it")                
-- x:AddToggle(
--     {
--         Name = "Leave Dungeon",
--         Default = _G.Settings.LeaveDungeon,
--         Color = Color3.fromRGB(98, 0, 182),
--         Callback = function(H)
--             _G.Settings.LeaveDungeons = H
--             saveSettings()
--             task.spawn(
--                 function()
--                     while task.wait(1) do
--                         if not _G.Settings.LeaveDungeons then
--                             break
--                         end
--                         while wait() do
--                             game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(
--                                 "LeaveDungeons"
--                             )                            
--                          end                                                                                                                                                                                                                                                                       
--                     end
--                 end
--             )
--         end
--     }
-- )
x:AddToggle(
    {
        Name = "Auto Retry",
        Default = _G.Settings.AutoRetry,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoRetry = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.AutoRetry then
                            break
                        end
                        while wait() do
                            game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(
                                "RetryDungeon"
                            )                           
                         end                                                                                                                                                                                                                                                                       
                    end
                end
            )
        end
    }
) 
x:AddToggle(
    {
        Name = "Auto Reduce Damage 20%",
        Default = _G.Settings.ReduceDamage,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.ReduceDamage = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.ReduceDamage then
                            break
                        end
                        while wait() do
                            game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(
                                "SetMobileDamageReductionStat"
                            )
                         end                                                                                                                                                                                                                                                                       
                    end
                end
            )
        end
    }
)
x:AddParagraph("Anti lag","👇 If you activate them you can't turn them off until you Turn off the toggle and restart the game (the Auto farm will keep work)")
x:AddToggle(
    {
        Name = "Anti Lag",
        Default = _G.Settings.antilag,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.antilag = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.antilag then
                            break
                        end
                            for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                                if v:IsA("BasePart") and not v.Parent:FindFirstChild("Humanoid") then
                                    v.Material = Enum.Material.SmoothPlastic
                                    if v:IsA("Texture") then
                                        v:Destroy()
                                    end
                                end
                            end
                            
                            local decalsyeeted = true -- Leaving this on makes games look shitty but the fps goes up by at least 20.
                            local g = game
                            local w = g.Workspace
                            local l = g.Lighting
                            local t = w.Terrain
                            sethiddenproperty(l,"Technology",2)
                            sethiddenproperty(t,"Decoration",false)
                            t.WaterWaveSize = 0
                            t.WaterWaveSpeed = 0
                            t.WaterReflectance = 0
                            t.WaterTransparency = 0
                            l.GlobalShadows = false
                            l.FogEnd = 9e9
                            l.Brightness = 0
                            settings().Rendering.QualityLevel = "Level01"
                            for i, v in pairs(g:GetDescendants()) do
                                if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                                    v.Material = "Plastic"
                                    v.Reflectance = 0
                                elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                                    v.Transparency = 1
                                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                                    v.Lifetime = NumberRange.new(0)
                                elseif v:IsA("Explosion") then
                                    v.BlastPressure = 1
                                    v.BlastRadius = 1
                                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                                    v.Enabled = false
                                elseif v:IsA("MeshPart") then
                                    v.Material = "Plastic"
                                    v.Reflectance = 0
                                    v.TextureID = 10385902758728957
                                end
                            end
                            for i, e in pairs(l:GetChildren()) do
                                if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                                    e.Enabled = false
                                    while task.wait(20000) do
                                        prin('anti lag is off')
                                    end
                                end
                            end
                            
                         end                                                                                                                                                                                                                                                                       
                    end
            )
        end
    }
)
x:AddToggle(
    {
        Name = "Black Screen",
        Default = _G.Settings.balckscreen,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.balckscreen = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.balckscreen then
                            break
                        end
                        while wait(3) do
-- Services
local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local TweenService = game:GetService("TweenService")

-- TweenInfo
local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, false)

-- Values
local player = Players.LocalPlayer 
local playerGui = player:WaitForChild("PlayerGui")

-- Build Gui
local screenGui = Instance.new("ScreenGui", playerGui)
screenGui.IgnoreGuiInset = true

-- Build Gui TextLabel
local textLabel = Instance.new("TextLabel", screenGui)
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundColor3 = Color3.fromRGB(16, 16, 16)
textLabel.Font = Enum.Font.Merriweather
textLabel.TextColor3 = Color3.fromRGB(209, 209, 209)
textLabel.Text = ""
textLabel.TextSize = 40

-- Remove the default gui to display ours
ReplicatedFirst:RemoveDefaultLoadingScreen()

task.wait(5)  -- Force screen to appear for a minimum number of seconds
if not game:IsLoaded() then game.Loaded:Wait() end -- Wait until the game is loaded. (Another alternative is to count the assets left.)


textLabel.Text = "tozx was here" -- Sets the text to appear
task.wait(30000) -- Time until text fades out
TweenService:Create(textLabel, tweenInfo, { TextTransparency = 1 }):Play() -- Tweens TextTransparency to 1
task.wait(30000) -- Time until background fades out
TweenService:Create(textLabel, tweenInfo, { BackgroundTransparency = 1 }):Play() -- Tweens BackgroundTransparency to 1
task.wait(tweenInfo.Time) -- Wait the time for the last tween to complete
screenGui:Destroy() -- Clean up the gui after use.
                         end                                                                                                                                                                                                                                                                       
                    end
                end
            )
        end
    }
)
x:AddToggle(
    {
        Name = "FPS & GPU Reduce",
        Default = _G.Settings.FPSGPU,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.FPSGPU = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.FPSGPU then
                            break
                        end
                        while wait() do
                            local UserInputService = game:GetService("UserInputService")
                            local RunService = game:GetService("RunService")
                            
                            local WindowFocusReleasedFunction = function()
                                RunService:Set3dRenderingEnabled(false)
                                setfpscap(10)
                                return
                            end
                            
                            local WindowFocusedFunction = function()
                                RunService:Set3dRenderingEnabled(true)
                                setfpscap(360)
                                return
                            end
                            
                            local Initialize = function()
                                UserInputService.WindowFocusReleased:Connect(WindowFocusReleasedFunction)
                                UserInputService.WindowFocused:Connect(WindowFocusedFunction)
                                return
                            end
                            Initialize()
                            while wait(999999) do
                            end
                         end                                                                                                                                                                                                                                                                       
                    end
                end
            )
        end
    }
)

C:AddToggle(
    {
        Name = "Summer Event",
        Default = _G.Settings.SummerEvent,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.SummerEvent = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.SummerEvent then
                            break
                        end
						for i  = 1,12 do 
                          MainRemote("ClaimOnlineReward","OnlineReward_" .. i)
			            end                                                                                                                                                                                                                                                                                       
                         
                    end
                end
            )
        end
    }
)
C:AddToggle(
    {
        Name = "Daily Quest",
        Default = _G.Settings.Autoclaimquest,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Autoclaimquest = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.Autoclaimquest then
                            break
                        end
						MainRemote("CompleteDailyQuest","DailyQuest_Login")
						MainRemote("CompleteDailyQuest","DailyQuest_DungeonClear")
						MainRemote("CompleteDailyQuest","DailyQuest_Enemies")
						MainRemote("CompleteDailyQuest","DailyQuest_TimeChallenge") -- i was lazy now
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "CompleteDailyQuest",
                            "DailyQuest_Raid"
                        )
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "CompleteDailyQuest",
                            "DailyQuest_BossRush"
                        )
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "CompleteDailyQuest",
                            "DailyQuest_AllQuestClear"
                        )
                    end
                end
            )
        end
    }
)
C:AddToggle(
    {
        Name = "Speed Raid Rewards",
        Default = _G.Settings.autoclaimrewardspeed,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.autoclaimrewardspeed = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do 
						if not _G.Settings.autoclaimrewardspeed then
                            break
                        end
						for i = 1,9 do 
							MainRemote("ClaimWeeklySpeedRaidReward",i)
						end
                    end
                end
            )
        end
    }
)

C:AddToggle(
    {
        Name = "Daily Raid Ticket",
        Default = _G.Settings.autoclaimrewardraid,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.autoclaimrewardraid = H
            saveSettings()
            task.spawn(
                function()
                    while _G.Settings.autoclaimrewardraid  do
                        if not _G.Settings.autoclaimrewardraid then
                            break
                        end
						MainRemote("GiveFreeDailyGemFromShop")
                    end
                end
            )
        end
    }
)
E:AddLabel("Punch Setting")
E:AddSlider(
    {Name = "Punch Delay", Default = _G.Settings.punchdelay, Min = 1, Max = 5, Color = Color3.fromRGB(98, 0, 182), Callback = function(H)
            _G.Settings.punchdelay = H
            saveSettings()
        end}
)
E:AddToggle(
    {
        Name = "Auto Punch",
        Default = _G.Settings.AutoPunch,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoPunch = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(_G.Settings.punchdelay) do
                        if not _G.Settings.AutoPunch then
                            break
                        end
                        game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer("UseSkill",{ ["attackNumber"] = 1},"BasicAttack")
                        end
                    end
            )
        end
    }
)

E:AddLabel("Skill Setting")

E:AddToggle(
    {
        Name = "skill 1",
        Default = _G.Settings.AutoSkill1,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoSkill1 = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(_G.Settings.skilldelay) do
                        if not _G.Settings.AutoSkill1 then
                            break
                        end
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill1.MouseButton1Click
                            )
                        ) do
                            n:Fire()
                        end
                    end
                end
            )
        end
    }
)
E:AddToggle(
    {
        Name = "skill 2",
        Default = _G.Settings.AutoSkill2,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoSkill2 = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(_G.Settings.skilldelay) do
                        if not _G.Settings.AutoSkill2 then
                            break
                        end
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill2.MouseButton1Click
                            )
                        ) do
                            n:Fire()
                        end
                    end
                end
            )
        end
    }
)
E:AddToggle(
    {
        Name = "skill 3",
        Default = _G.Settings.AutoSkill3,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoSkill3 = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(_G.Settings.skilldelay) do
                        if not _G.Settings.AutoSkill3 then
                            break
                        end
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill3.MouseButton1Click
                            )
                        ) do
                            n:Fire()
                        end
                    end
                end
            )
        end
    }
)
E:AddToggle(
    {
        Name = "skill 4",
        Default = _G.Settings.AutoSkill4,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoSkill4 = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(_G.Settings.skilldelay) do
                        if not _G.Settings.AutoSkill4 then
                            break
                        end
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill4.MouseButton1Click
                            )
                        ) do
                            n:Fire()
                        end
                    end
                end
            )
        end
    }
)
E:AddToggle(
    {
        Name = "skill 5 (awaken units)",
        Default = _G.Settings.AutoSkill5,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoSkill5 = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(_G.Settings.skilldelay) do
                        if not _G.Settings.AutoSkill5 then
                            break
                        end
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill5.MouseButton1Click
                            )
                        ) do
                            n:Fire()
                        end
                    end
                end
            )
        end
    }
)

E:AddToggle(
    {
        Name = "Assist 1",
        Default = _G.Settings.AutoSkill5,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoSkill5 = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(_G.Settings.skilldelay) do
                        if not _G.Settings.AutoSkill5 then
                            break
                        end
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist1.MouseButton1Click
                            )
                        ) do
                            n:Fire()
                        end
                    end
                end
            )
        end
    }
)
E:AddToggle(
    {
        Name = "Assist 2",
        Default = _G.Settings.AutoSkill6,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.AutoSkill6 = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(_G.Settings.skilldelay) do
                        if not _G.Settings.AutoSkill6 then
                            break
                        end
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist2.MouseButton1Click
                            )
                        ) do
                            n:Fire()
                        end
                    end
                end
            )
        end
    }
)


E:AddSlider(
    {Name = "Skill Delay", Default = _G.Settings.skilldelay, Min = 1, Max = 5, Color = Color3.fromRGB(98, 0, 182), Callback = function(H)
            _G.Settings.skilldelay = H
            saveSettings()
        end}
)
E:AddLabel("Get exploit detected put more delay")
E:AddLabel("Reccomend 1 delay no detected")
B:AddSlider(
    {Name = "Spin Delay", Default = _G.Settings.eggspintime, Min = 0, Max = 10, Color = Color3.fromRGB(98, 0, 182), Callback = function(H)
            _G.Settings.eggspintime = H
            saveSettings()
        end}
)
D:AddSlider(
    {Name = "Speed", Default = _G.Settings.Speed, Min = 80, Max = 100, Color = Color3.fromRGB(98, 0, 182), Callback = function(H)
            _G.Settings.Speed = H
            saveSettings()
        end}
)
D:AddSlider(
    {Name = "Over Height", Default = _G.Settings.Height, Min = 5, Max = 10, Color = Color3.fromRGB(98, 0, 182), Callback = function(H)
            _G.Settings.Height = H
            saveSettings()
        end}
)
D:AddSlider(
    {Name = "Under Height", Default = _G.Settings.Height1, Min = -15, Max = -10, Color = Color3.fromRGB(98, 0, 182), Callback = function(H)
            _G.Settings.Height1 = H
            saveSettings()
        end}
)
D:AddSlider(
    {Name = "Behind Distance", Default = _G.Settings.distance, Min = 0, Max = 20, Color = Color3.fromRGB(98, 0, 182), Callback = function(H)
            _G.Settings.distance = H
            saveSettings()
        end}
)


-- Webhook
z:AddTextbox(
    {Name = "Webhook Url", Default = _G.Settings.webhookurl, TextDisappear = false, Callback = function(H)
            _G.Settings.webhookurl = H
            saveSettings()
        end}
)
z:AddToggle(
    {
        Name = "Clear Notifier",
        Default = _G.Settings.webhook,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.webhook = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(_G.Settings.webhookspeed) do
                        if not _G.Settings.webhook then
                            break
                        end
                        if
                            game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI.Visible ==
                                true
                         then
                            _G.Name = game.Players.LocalPlayer.Name .. "StatDisplay"
                            function webhook(_, a0)
                                local request = http_request or request or HttpPost or syn.request
                                request(
                                    {
                                        Url = _G.Settings.webhookurl,
                                        Method = "POST",
                                        Headers = {["Content-Type"] = "application/json"},
                                        Body = game:GetService("HttpService"):JSONEncode({embeds = {_}, content = a0})
                                    }
                                )
                            end
                            local _ = {
                                ["title"] = "GAME CLEAR",
                                ["type"] = "rich",
                                ["thumbnail"] = {
                                    ["url"] = "https://cdn.discordapp.com/attachments/712476827829927999/1016682953964802078/IMG_20220524_192236_677.png"
                                },
                                ["description"] = "Character Info / Session Info:",
                                ["fields"] = {
                                    {
                                        ["name"] = "💥 My Level",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.Players.LocalPlayer.leaderstats.Level.Value
                                        )
                                    },
                                    {
                                        ["name"] = "⚠️ Exploit Detected",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[_G.Name].ExploitsDetected.Value
                                        )
                                    },
                                    {
                                    ["name"] = "⚠️Minutes Played Today",
                                    ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[_G.Name].MinutesPlayedToday.Value
                                    )
                                    },
                                    {
                                        ["name"] = "Time Challenge High Score",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[_G.Name].TimeChallengeHighScore.Value
                                            )
                                    }, 
                                    {
                                        ["name"] = "Deaths",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[_G.Name].Deaths.Value
                                            )
                                    }, 
                                                                                     
                                    {
                                        ["name"] = "💠 Infinite Record",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[_G.Name].InfiniteRecord.Value
                                        )
                                    },
                                    {
                                        ["name"] = "🌌 Dimension Clear",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[_G.Name].StageClear.Value
                                        )
                                    },
                                },
                                ["timestamp"] = DateTime.now():ToIsoDate()
                            }
                            webhook(_, "<@" .. _G.Settings.dsuser .. ">" .. _G.Settings.otherds)
                        end
                    end
                end
            )
        end
    }
)
z:AddToggle(
    {
        Name = "Raid Notifier",
        Default = _G.Settings.raidwebhook,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.raidwebhook = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(_G.Settings.webhookspeed) do
                        if not _G.Settings.raidwebhook then
                            break
                        end
                        if
                            game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.RaidResultUI.Visible ==
                                true
                         then
                            _G.Name = game.Players.LocalPlayer.Name .. "StatDisplay"
                            function webhook(_, a0)
                                local request = http_request or request or HttpPost or syn.request
                                request(
                                    {
                                        Url = _G.Settings.webhookurl,
                                        Method = "POST",
                                        Headers = {["Content-Type"] = "application/json"},
                                        Body = game:GetService("HttpService"):JSONEncode({embeds = {_}, content = a0})
                                    }
                                )
                            end
                            local _ = {
                                ["title"] = "RAID & BOSSRUSH CLEAR",
                                ["type"] = "rich",
                                ["thumbnail"] = {
                                    ["url"] = "https://cdn.discordapp.com/attachments/712476827829927999/1016682953964802078/IMG_20220524_192236_677.png"
                                },
                                ["description"] = "Character Info / Session Info:",
                                ["fields"] = {
                                    {
                                        ["name"] = "⚠️ Exploit Detected",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[_G.Name].ExploitsDetected.Value
                                        )
                                    },
                                    {
                                        ["name"] = "🌀 Boss Rush Clear",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[_G.Name].BossRushClears.Value
                                        )
                                    },
                                    {
                                        ["name"] = "🎟️ Boss Rush Ticket",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[_G.Name].BossRushFreeEntry.Value
                                        )
                                    },
                                    {
                                        ["name"] = "🌀 Raid Clear",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[_G.Name].RaidClears.Value
                                        )
                                    }
                                },
                                ["timestamp"] = DateTime.now():ToIsoDate()
                            }
                            webhook(_, "<@" .. _G.Settings.dsuser .. ">" .. _G.Settings.otherds)
                        end
                    end
                end
            )
        end
    }
)
z:AddToggle(
    {
        Name = "Level Notifier",
        Default = _G.Settings.levelwebhook,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.levelwebhook = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(3) do
                        if not _G.Settings.levelwebhook then
                            break
                        end
                        if
                            game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.LevelUpImage.Visible ==
                                true
                         then
                            _G.Name = game.Players.LocalPlayer.Name .. "StatDisplay"
                            function webhook(_, a0)
                                local request = http_request or request or HttpPost or syn.request
                                request(
                                    {
                                        Url = _G.Settings.webhookurl,
                                        Method = "POST",
                                        Headers = {["Content-Type"] = "application/json"},
                                        Body = game:GetService("HttpService"):JSONEncode({embeds = {_}, content = a0})
                                    }
                                )
                            end
                            local _ = {
                                ["title"] = "🆙 YOU HAVE LEVELED",
                                ["type"] = "rich",
                                ["thumbnail"] = {
                                    ["url"] = "https://cdn.discordapp.com/attachments/712476827829927999/1016682953964802078/IMG_20220524_192236_677.png"
                                },
                                ["description"] = "",
                                ["fields"] = {
                                    {
                                        ["name"] = "Your are now:",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.Players.LocalPlayer.leaderstats.Level.Value
                                        )
                                    }
                                },
                                ["timestamp"] = DateTime.now():ToIsoDate()
                            }
                            webhook(_, "<@" .. _G.Settings.dsuser .. ">" .. _G.Settings.otherds)
                        end
                    end
                end
            )
        end
    }
)
z:AddSlider(
    {Name = "Send Delay", Default = _G.Settings.webhookspeed, Min = 10, Max = 10, Color = Color3.fromRGB(98, 0, 182), Callback = function(H)
            _G.Settings.webhookspeed = H
            saveSettings()
        end}
)

z:AddTextbox(
    {Name = "Put Your ID", Default = _G.Settings.dsuser, TextDisappear = false, Callback = function(H)
            _G.Settings.dsuser = H
            saveSettings()
        end}
)
z:AddTextbox(
    {
        Name = "Put @here or @everyone ",
        Default = _G.Settings.otherds,
        TextDisappear = false,
        Callback = function(H)
            _G.Settings.otherds = H
            saveSettings()
        end
    }
)
 --Webhook 
G:AddButton(
    {Name = "Updating And More Features By Tozxart", Callback = function()
            setclipboard("ToZx#1217")
        end}
)
G:AddButton(
    {Name = "Discord", Callback = function()
            setclipboard("https://discord.gg/vfkD5VCRKU")
        end}
)
G:AddTextbox(
    {Name = "Toggle Gui Key", Default = _G.Settings.toggleguikey, TextDisappear = false, Callback = function(H)
            _G.Settings.toggleguikey = H
            saveSettings()
        end}
)

G:AddLabel("LastestUpdate : 9/18/2022 ")

u:MakeNotification({Name = "The Intruders", Content = "Game: Anime Dimension", Time = 15})
u:Init()
