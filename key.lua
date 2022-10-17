local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "The Intruders", HidePremium = false, SaveConfig = true, IntroEnabled = false, ConfigFolder = "OrionTest"})

-- getgenv().KeyInput = "string"
OrionLib:MakeNotification({
    Name = "Logged in |",
    Content = "You are logged in as "..game.Players.LocalPlayer.Name..".",
    Image = "rbxassetid://4483345998",
     Time = 5
    })



_G.key = "Hello"
_G.KeyInput = "string"





function MakeScriptHub()
 print("EnteredCorrectKey")
end

function CorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "Correct Key!",
        Content = "You have entered the correct key!",
        Image = "rbxassetid://448334599B",
        Time = 5
    })
 end

 function IncorrectKeyNotification()
    OrionLib:MakeNotification({
        Name = "incorrect Key!",
        Content = "You have entered the incorrect key!",
        Image = "rbxassetid://448334599B",
        Time = 5
    })
 end
 function KeyNotification()
    OrionLib:MakeNotification({
        Name = "key Copied!",
        Content = "You have copied the key link!",
        Image = "rbxassetid://448334599B",
        Time = 5
    })
 end

function Destroy()
    game:GetService("CoreGui").Orion:Destroy()
end

function CheckKey()
    if _G.KeyInput == _G.Key then
        Destroy()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/lifaiossama/errors/main/errors.lua')))()
    end
end

local Tab = Window:MakeTab({
    Name = "Main",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

Tab:AddTextbox({
    Name = "Enter Key",
    Default = "",
    TextDisappear = true,
    Callback = function(Value)
        _G.KeyInput = _G.Key
    end      
})

Tab:AddButton({
    Name = "Check Key",
    Callback = function()
          CheckKey()
          if _G.KeyInput == _G.Key then
            MakeScriptHub()
            CorrectKeyNotification()
          else
            IncorrectKeyNotification()
          end
      end    
})
Tab:AddButton(
    {Name = "Copy Key Link", Callback = function()
            setclipboard("https://www.intruders.ga/key1.html")
            KeyNotification()
        end}
)