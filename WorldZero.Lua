_G.Settings = {
    Farm1 = false,
    Chat = false,
    Blackscreen = false,
    FPSGPU = false,
    Lag = false,
    tozxart2 = false,
    tozxart3 = false,
    tozxart4 = false,
    acc = false,
    QuestClaim = false
}

if not game:IsLoaded() then
    game.Loaded:Wait()
end
local a = "The Intruders_WZ"
local b = game.Players.LocalPlayer.Name .. "_WorlZero.lua"
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

local u = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()
local v = u:MakeWindow({Name = "The Intruders", HidePremium = true, IntroEnabled = false})
local w = v:MakeTab({Name = "Main", PremiumOnly = false})
local x = v:MakeTab({Name = "Extra", PremiumOnly = false})
local G = v:MakeTab({Name = "Credits", PremiumOnly = false})
--[[
Name = <string> - The name of the colorpicker.
Default = <color3> - The default value of the colorpicker.
Callback = <function> - The function of the colorpicker.
]]




w:AddToggle(
    {
        Name = "Auto farm",
        Default = _G.Settings.Farm1,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Farm1 = H
            saveSettings()
            task.spawn(
                function()
                    while _G.Settings.Farm1  do
                        if not _G.Settings.Farm1 then
                            break
                        end
                        
                        loadstring(game:HttpGet"https://raw.githubusercontent.com/thedragonslayer2/MrJack-Game-List/main/World%20Zero%20-%202727067538.lua")()
                        while task.wait(200) do
                            prin('anti lag is off')
                        end
                    end
                end
            )
        end
    }
)
w:AddToggle(
    {
        Name = "Hide Chat",
        Default = _G.Settings.Chat,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Chat = H
            saveSettings()
            task.spawn(
                function()
                    while _G.Settings.Chat  do
                        if not _G.Settings.Chat then
                            break
                        end
                        game:GetService("CoreGui").ExperienceChat:Destroy()
                    end
                end
            )
        end
    }
)
w:AddToggle(
    {
        Name = "Black screen",
        Default = _G.Settings.Blackscreen,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Blackscreen = H
            saveSettings()
            task.spawn(
                function()
                    while _G.Settings.Blackscreen  do
                        if not _G.Settings.Blackscreen then
                            break
                        end
						
-- make the screen black
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
            )
        end
    }
)

w:AddToggle(
    {
        Name = "FPS & GPU Reducer",
        Default = _G.Settings.FPSGPU,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.FPSGPU = H
            saveSettings()
            task.spawn(
                function()
                    while _G.Settings.FPSGPU  do
                        if not _G.Settings.FPSGPU then
                            break
                        end
				-- white screnn and fps
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
while task.wait(20000) do
    prin('anti lag is off')
end
                    end
                end
            )
        end
    }
)

w:AddToggle(
    {
        Name = "Anti Lag",
        Default = _G.Settings.Lag,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.Lag = H
            saveSettings()
            task.spawn(
                function()
                    while _G.Settings.Lag  do
                        if not _G.Settings.Lag then
                            break
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
    end
end
while task.wait(20000) do
    prin('anti lag is off')
end
                    end
                end
            )
        end
    }
)

x:AddToggle(
    {
        Name = "Quest Claim",
        Default = _G.Settings.QuestClaim,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.QuestClaim = H
            saveSettings()
            task.spawn(
                function()
                    while task.wait(1) do
                        if not _G.Settings.QuestClaim then
                            break
                        end
						for i  = 1,99999 do 
                            game:GetService("ReplicatedStorage").Shared.Quests.ClaimQuest:FireServer(i)
			            end                                                                                                                                                                                                                                                                                       
                         
                    end
                end
            )
        end
    }
)



x:AddLabel("Invite")

 x:AddToggle(
    {
        Name = "tozxart2",
        Default = _G.Settings.tozxart2,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.tozxart2 = H
            saveSettings()
            task.spawn(
                function()
                    while _G.Settings.tozxart2  do
                        if not _G.Settings.tozxart2 then
                            break
                        end
                        game:GetService("ReplicatedStorage").Shared.Party.Invite:FireServer(game:GetService("Players").tozxart2)

                    end
                end
            )
        end
    }
)
x:AddToggle(
    {
        Name = "tozxart3",
        Default = _G.Settings.tozxart3,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.tozxart3 = H
            saveSettings()
            task.spawn(
                function()
                    while _G.Settings.tozxart3  do
                        if not _G.Settings.tozxart3 then
                            break
                        end
                        while task.wait(10) do
                        game:GetService("ReplicatedStorage").Shared.Party.Invite:FireServer(game:GetService("Players").tozxart3)
                        end

                    end
                end
            )
        end
    }
)

x:AddToggle(
    {
        Name = "tozxart4",
        Default = _G.Settings.tozxart4,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.tozxart4 = H
            saveSettings()
            task.spawn(
                function()
                    while _G.Settings.tozxart4  do
                        if not _G.Settings.tozxart4 then
                            break
                        end
                        game:GetService("ReplicatedStorage").Shared.Party.Invite:FireServer(game:GetService("Players").tozxart4)

                    end
                end
            )
        end
    }
)






x:AddLabel("accept")

x:AddToggle(
    {
        Name = "Accept",
        Default = _G.Settings.acc,
        Color = Color3.fromRGB(98, 0, 182),
        Callback = function(H)
            _G.Settings.acc = H
            saveSettings()
            task.spawn(
                function()
                    while _G.Settings.acc  do
                        if not _G.Settings.acc then
                            break
                        end
                        while task.wait(5) do
                        game:GetService("ReplicatedStorage").Shared.Party.AcceptedInvite:FireServer(game:GetService("Players").tozxart)

                        end
                    end
                end
            )
        end
    }
)


w:AddButton(
    {Name = "For Auto execute", Callback = function()
            game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
        end}
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

G:AddLabel("LastestUpdate : 9/23/2022 ")

u:MakeNotification({Name = "The Intruders", Content = "Game: World Zero", Time = 15})
u:Init()
