
loadstring(game:HttpGet("https://raw.githubusercontent.com/lifaiossama/errors/main/trash.lua"))()

if isfile("Mykey.txt") and readfile("Mykey.txt") == _G.Key then
  else
    game.Players.LocalPlayer:Kick("Brah")
    wait(5)
    while true do end;
  end;

    if not game:IsLoaded() then
      game.Loaded:Wait()
  end
  local a = "The Intruders"
  local b = game.Players.LocalPlayer.Name .. "_KRNLAnimeDimension.lua"
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
    "Halloween Dimension", 
    "Slime Dimension"
  }
  local r = {"Easy", "Hard", "Nightmare", "Infinite"}
  local s = {"Nardo Beast Capsule", "Raid Capsule", "Gear 5 Fluffy Capsule","Cursed Sage Capsule","Red Emperor Capsule", "Esper Capsule"}
  local t = { "Tengu Raid", "Nardo Beast Raid", "Gear 5 Fluffy Raid", "Red Emperor Raid", "Cursed Sage Raid", "Hirito Raid", "Titan Raid"}
  
  
  local SolarisLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/sol"))()
  

  local win = SolarisLib:New({
    Name = "The Intruders",
    FolderToSave = "The Intruders"
  })
  
  --win:Tab(title <string>)
  local w = win:Tab("Main")
  local x = win:Tab("Extra")
  local D = win:Tab("TP Method")
  local E = win:Tab("Auto S & P")
  local y = win:Tab("Specific & Raid")
  local F = win:Tab("Afk Farm")
  local A = win:Tab("Auto Sell")
  local B = win:Tab("Auto Spin")
  local C = win:Tab("Auto Claim")
  local z = win:Tab("Webhook")
  local G = win:Tab("Credits")
  
  --tab:Section(title <string>)
  local Main = w:Section("Farming")
  
  
  
  --Main:Toggle(title <string>,default <boolean>, flag <string>, callback <function>)
  
  
  
  local toggle = Main:Toggle("💥 Auto Level", _G.Settings.Autolvl,"Toggle", function(t)
    _G.Settings.Autolvl = t
    saveSettings()
    spawn(function()
            while _G.Settings.Autolvl do wait(11)
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
  end)
  
  local toggle = Main:Toggle("💥 Farm Time Challenge", _G.Settings.Autotrial,"Toggle", function(t)
    _G.Settings.Autotrial = t
    saveSettings()
    spawn(function()
            while _G.Settings.Autotrial do wait(7)
                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                    "TeleportToTimeChallenge"
                )
            end
        end
    )
  end)
  
  local toggle = Main:Toggle("💥 Farm Specific Map", _G.Settings.Autocustom,"Toggle", function(t)
    _G.Settings.Autocustom = t
    saveSettings()
    spawn(function()
            while _G.Settings.Autocustom do wait(10)
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
  end)
  
  local toggle = Main:Toggle("💥 Farm Raid", _G.Settings.Autoraid,"Toggle", function(t)
    _G.Settings.Autoraid = t
    saveSettings()
    spawn(function()
            while _G.Settings.Autoraid do wait(3)
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
  end)
  
  local toggle = Main:Toggle("💥 Farm Boss Rush", _G.Settings.Autoboss,"Toggle", function(t)
    _G.Settings.Autoboss = t
    saveSettings()
    spawn(function()
            while _G.Settings.Autoboss do wait(4)
              game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                "TeleportToBossRush"
            )
            end
        end
    )
  end)
  
  
  local toggle = Main:Toggle("💥 Farm Speed Raid (Auto Random Character)", _G.Settings.Autospeedraid,"Toggle", function(t)
    _G.Settings.Autospeedraid = t
    saveSettings()
    spawn(function()
      while _G.Settings.Autospeedraid do wait(2)
          if not game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui:FindFirstChild("TeleportingUI").Visible then
              local p = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
              local l = p.CenterUIFrame.Inventory.Frame.CharacterInventoryFrame.CharacterInventoryScrollingFrame;
  
              local SpeedRaidCharacters = {}
              for i,v in ipairs(l:GetChildren()) do 
                  if v:FindFirstChild("CharacterImage") and v.Name ~= "CharacterInventorySlot" and not table.find(SpeedRaidCharacters, v.Name) then
                      table.insert(SpeedRaidCharacters,v.Name)
                  end;
              end;
              table.sort(SpeedRaidCharacters)
  
              local Y = math.random(1, #SpeedRaidCharacters)
              local Z = SpeedRaidCharacters[Y]
              print(Z)
              game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                  "TeleportToShadowRaid",
                  Z
              )
            end;
          end;
      end);
  end);
  local Main = w:Section("Misc")
  Main:Button("Teleport to Lobby", function()
    SolarisLib:Notification("Teleport to Lobby", "This will teleport you to the Lobby.")
    game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
  
  end)
  
  Main:Button("Auto execute", function()
    SolarisLib:Notification("Auto execute", "Video has been copied in your clipboard.")
    setclipboard("https://youtu.be/o3VaCa7CcoA")
  
  end)
  
  local extra = x:Section("Misc")
  
  
  
  local toggle = extra:Toggle("Hide Name", _G.Settings.Hidename,"Toggle", function(t)
    _G.Settings.Hidename = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.Hidename do wait(1)
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
  )
  
  
  local toggle = extra:Toggle("Rejoin If Kick", _G.Settings.kickrejoin,"Toggle", function(t)
    _G.Settings.kickrejoin = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.kickrejoin do wait(1)
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
  )
  
  
  local toggle = extra:Toggle("Auto leave", _G.Settings.Autoleave,"Toggle", function(t)
    _G.Settings.Autoleave = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.Autoleave do wait(840)
            while wait(10) do
                game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)                           
             end                                                                                                                                                                                                                                                                       
        end
    end)
  end)
  
  
  local toggle = extra:Toggle("Auto Retry", _G.Settings.AutoRetry,"Toggle", function(t)
    _G.Settings.AutoRetry = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.AutoRetry do wait(1)
            while wait() do
              game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(
                "RetryDungeon"
            )                           
             end                                                                                                                                                                                                                                                                       
        end
    end)
  end)
  
  
  local toggle = extra:Toggle("Auto Reduce Damage 20%", _G.Settings.ReduceDamage,"Toggle", function(t)
    _G.Settings.ReduceDamage = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.ReduceDamage do wait(1)
            while wait() do
              game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(
                "SetMobileDamageReductionStat"
            )                         
             end                                                                                                                                                                                                                                                                       
        end
    end)
  end)
  
  local toggle = extra:Toggle("Anti Lag", _G.Settings.antilag,"Toggle", function(t)
    _G.Settings.antilag = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.antilag do wait(1)
            while wait() do
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
    end)
  end)
  
  
  local toggle = extra:Toggle("Black Screen", _G.Settings.balckscreen,"Toggle", function(t)
    _G.Settings.balckscreen = t
    saveSettings()
    task.spawn(
      function()
        while task.wait(1) do
          if not _G.Settings.balckscreen then
                game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui:Destroy()
                break
            end
            while wait(1) do
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
  -- TweenService:Create(textLabel, tweenInfo, { TextTransparency = 1 }):Play() -- Tweens TextTransparency to 1
  -- task.wait(30000) -- Time until background fades out
  -- TweenService:Create(textLabel, tweenInfo, { BackgroundTransparency = 1 }):Play() -- Tweens BackgroundTransparency to 1
  -- task.wait(tweenInfo.Time) -- Wait the time for the last tween to complete
  -- screenGui:Destroy() -- Clean up the gui after use.                       
             end                                                                                                                                                                                                                                                                       
        end
    end)
  end)
  
  
  local toggle = extra:Toggle("FPS & GPU Reduce", _G.Settings.FPSGPU,"Toggle", function(t)
    _G.Settings.FPSGPU = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.FPSGPU do wait(1)
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
    end)
  end)
  
  
  
  local method = D:Section("Misc")
  
  local toggle = method:Toggle("TP onTop", _G.Settings.AutoTP,"Toggle", function(t)
    _G.Settings.AutoTP = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.AutoTP do wait()
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
    end)
  end)
  
  local toggle = method:Toggle("TP Under", _G.Settings.AutoTP1,"Toggle", function(t)
    _G.Settings.AutoTP1 = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.AutoTP1 do wait()
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
        end)
  end)
  
  
  
  
  local toggle = method:Toggle("TP Behind", _G.Settings.AutoTP2,"Toggle", function(t)
    _G.Settings.AutoTP2 = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.AutoTP2 do wait()
              pcall(
                function()
                    for m, n in pairs(game:GetService("Workspace").Folders.Monsters:GetChildren()) do
                        repeat task.wait()
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
                                        CFrame.new(0, 0, 4)
                                }
                            )
                            W:Play()
                            wait(T / Speed2)
                        until not _G.Settings.AutoTP2 or tonumber(n.EnemyHealthBarGui.HealthText.Text) <= 0 or not n.Parent or not n
                      end
                    end
                )
            end
        end)
  end)
  
  
  
  --Main:Slider(title <string>,default <number>,max <number>,minimum <number>,increment <number>, flag <string>, callback <function>)
  local slider = method:Slider("Speed",_G.Settings.Speed,100,80,1,"Slider", function(t)
    _G.Settings.Speed = t
    saveSettings()
  end)
  local slider = method:Slider("Over Height",_G.Settings.Height,10,5,1,"Slider", function(t)
    _G.Settings.Height = t
    saveSettings()
  end)
  local slider = method:Slider("Under Height",_G.Settings.Height1,-10,-15,1,"Slider", function(t)
    _G.Settings.Height1 = t
    saveSettings()
  end)
  
  
--   local slider = method:Slider("Behind Distance",_G.Settings.distance,20,0,1,"Slider", function(t)
--     _G.Settings.distance = t
--     saveSettings()
--   end)
  
  local skills = E:Section("Punch Setting")
  
  
  local slider = skills:Slider("Punch Delay", _G.Settings.punchdelay,5,1,1,"Slider", function(t)
    _G.Settings.punchdelay = t
    saveSettings()
  end)
  
  
  local toggle = skills:Toggle("Auto Punch", _G.Settings.AutoPunch,"Toggle", function(t)
    _G.Settings.AutoPunch = t
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
  end)
  
  local skills = E:Section("Skill Setting")
  
  
  local toggle = skills:Toggle("skill 1", _G.Settings.AutoSkill1,"Toggle", function(t)
    _G.Settings.AutoSkill1 = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.AutoSkill1 do wait(1)
          for m, n in pairs(
            getconnections(
                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill1.MouseButton1Click
            )
        ) do
            n:Fire()                        
             end                                                                                                                                                                                                                                                                       
        end
    end)
  end)
  
  local toggle = skills:Toggle("skill 2", _G.Settings.AutoSkill2,"Toggle", function(t)
    _G.Settings.AutoSkill2 = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.AutoSkill2 do wait(1)
          for m, n in pairs(
            getconnections(
                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill2.MouseButton1Click
            )
        ) do
            n:Fire()                      
             end                                                                                                                                                                                                                                                                       
        end
    end)
  end)
  
  local toggle = skills:Toggle("skill 3", _G.Settings.AutoSkill3,"Toggle", function(t)
    _G.Settings.AutoSkill3 = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.AutoSkill3 do wait(1)
          for m, n in pairs(
            getconnections(
                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill3.MouseButton1Click
            )
        ) do
            n:Fire()                     
             end                                                                                                                                                                                                                                                                       
        end
    end)
  end)
  
  local toggle = skills:Toggle("skill 4", _G.Settings.AutoSkill4,"Toggle", function(t)
    _G.Settings.AutoSkill4 = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.AutoSkill4 do wait(1)
          for m, n in pairs(
            getconnections(
                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill4.MouseButton1Click
            )
        ) do
            n:Fire()                  
             end                                                                                                                                                                                                                                                                       
        end
    end)
  end)
  
  local toggle = skills:Toggle("skill 5 (awaken units)", _G.Settings.AutoSkill5,"Toggle", function(t)
    _G.Settings.AutoSkill5 = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.AutoSkill5 do wait(1)
          for m, n in pairs(
            getconnections(
                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill5.MouseButton1Click
            )
        ) do
            n:Fire()                
             end                                                                                                                                                                                                                                                                       
        end
    end)
  end)
  
  
  
  local toggle = skills:Toggle("Assist 1", _G.Settings.SkillAssist1,"Toggle", function(t)
    _G.Settings.SkillAssist1 = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.SkillAssist1 do wait(1)
          for m, n in pairs(
            getconnections(
              game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist1.MouseButton1Click
          )
      ) do
          n:Fire()             
             end                                                                                                                                                                                                                                                                       
        end
    end)
  end)
  
  
  local toggle = skills:Toggle("Assist 2", _G.Settings.SkillAssist2,"Toggle", function(t)
    _G.Settings.SkillAssist2 = t
    saveSettings()
    task.spawn(
      function()
        while _G.Settings.SkillAssist2 do wait(1)
            for m, n in pairs(
              getconnections(
                  game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist2.MouseButton1Click
              )
          ) do
              n:Fire()           
             end                                                                                                                                                                                                                                                                       
        end
    end)
  end)
  
--   local slider = skills:Slider("Skill Delay", _G.Settings.skilldelay,5,1,1,"Slider", function(t)
--     _G.Settings.skilldelay = t
--     saveSettings()
--   end)
  
  local SR = y:Section("Selection")
  
  local dropdown = SR:Dropdown("Select Difficulty", r ,_G.Settings.CustomDifficulty,"Dropdown", function(t)
    _G.Settings.CustomDifficulty = t
    saveSettings()
  end)
  
  
  local dropdown = SR:Dropdown("Select Map", q ,_G.Settings.custommapselect,"Dropdown", function(t)
    _G.Settings.custommapselect = t
    saveSettings()
  end)
  
  local dropdown = SR:Dropdown("Select Raid", t ,_G.Settings.Raidselectmap,"Dropdown", function(t)
    _G.Settings.Raidselectmap = t
    saveSettings()
  end)
  
  
  local toggle = SR:Toggle("Hardcore", _G.Settings.Hardcore,"Toggle", function(t)
    _G.Settings.Hardcore = t
    saveSettings()
  end)
  
  local toggle = SR:Toggle("Friends Only", _G.Settings.FriendsOnly,"Toggle", function(t)
    _G.Settings.FriendsOnly = t
    saveSettings()
  end)
  
  local p = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
  local l = p.CenterUIFrame.Inventory.Frame.CharacterInventoryFrame.CharacterInventoryScrollingFrame;
  
  local MainCharacters = {}
  for i,v in ipairs(l:GetChildren()) do 
    if v:FindFirstChild("CharacterImage") and v.Name ~= "CharacterInventorySlot" and not table.find(MainCharacters, v.Name) then
      table.insert(MainCharacters,v.Name)
    end;
  end;
  table.sort(MainCharacters)
  
  
  local dropdown = SR:Dropdown("Select Main Character", MainCharacters ,_G.Settings.SelectedMainCharacter,"Dropdown", function(t)
    _G.Settings.SelectedMainCharacter = t
    saveSettings()
  end)
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
  
  local toggle = SR:Toggle("Auto Equip Main Character", _G.Settings.AutoEquipMCharacter,"Toggle", function(t)
    _G.Settings.AutoEquipMCharacter = t
    saveSettings()
  end)
  
  local dropdown = SR:Dropdown("Select Assist Character 1", MainCharacters ,_G.Settings.SelectedAssitCharacter1,"Dropdown", function(t)
    _G.Settings.SelectedAssitCharacter1 = t
    saveSettings()
  end)
  
  local dropdown = SR:Dropdown("Select Assist Character 2", MainCharacters ,_G.Settings.SelectedAssitCharacter2,"Dropdown", function(t)
    _G.Settings.SelectedAssitCharacter2 = t
    saveSettings()
  end)
  
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
  
  local toggle = SR:Toggle("Auto Equip Assist Characters", _G.Settings.AutoEquipACharacter,"Toggle", function(t)
    _G.Settings.AutoEquipACharacter = t
    saveSettings()
  end)
  
  local AFK = F:Section("Skill Setting")
  
  
  local toggle = AFK:Toggle("💥 Farm Raid + AFK", _G.Settings.afkandraid,"Toggle", function(t)
    _G.Settings.afkandraid = t
    saveSettings()
    spawn(function()
            while _G.Settings.afkandraid do wait(3)
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
    end)
  end)
  
  
  local toggle = AFK:Toggle("💥 Farm Raid Token", _G.Settings.farmraidtoken,"Toggle", function(t)
    _G.Settings.farmraidtoken = t
    saveSettings()
    task.spawn(
      function()
          while _G.Settings.afkandraid do task.wait(260) 
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
  )
  
  local Sell = A:Section("Selling")
  
  local toggle = Sell:Toggle("Auto Sell Common", _G.Settings.autosellcommon,"Toggle", function(t)
    _G.Settings.autosellcommon = t
    saveSettings()
    spawn(function()
            while _G.Settings.autosellcommon do wait()
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
  )
  
  local toggle = Sell:Toggle("Auto Sell Uncommon", _G.Settings.autoselluncommon,"Toggle", function(t)
    _G.Settings.autoselluncommon = t
    saveSettings()
    spawn(function()
            while _G.Settings.autoselluncommon do wait()
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
  )
  
  local toggle = Sell:Toggle("Auto Sell Rare", _G.Settings.autosellrare,"Toggle", function(t)
    _G.Settings.autosellrare = t
    saveSettings()
    spawn(function()
            while _G.Settings.autosellrare do wait()
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
  )
  
  local toggle = Sell:Toggle("Auto Sell Epic", _G.Settings.autosellepic,"Toggle", function(t)
    _G.Settings.autosellepic = t
    saveSettings()
    spawn(function()
            while _G.Settings.autosellepic do wait()
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
  )
  
  local toggle = Sell:Toggle("Auto Sell Legendary", _G.Settings.autoselllegendary,"Toggle", function(t)
    _G.Settings.autoselllegendary = t
    saveSettings()
    spawn(function()
            while _G.Settings.autoselllegendary do wait()
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
  )
  
  
  local Spin = B:Section("Spining")
  
  local dropdown = Spin:Dropdown("Select Capsule", s ,_G.Settings.selectegg,"Dropdown", function(t)
    _G.Settings.selectegg = t
    saveSettings()
  end)
  
  
  local toggle = Spin:Toggle("Auto Capsule", _G.Settings.autospingem,"Toggle", function(t)
    _G.Settings.autospingem = t
    saveSettings()
    spawn(function()
            while _G.Settings.autospingem do wait()
              game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                "BuyEgg",
                _G.Settings.selectegg
            )
            end
        end
    )
  end)
  
  local toggle = Spin:Toggle("Halloween Spin", _G.Settings.SummerSpin,"Toggle", function(t)
    _G.Settings.SummerSpin = t
    saveSettings()
    spawn(function()
            while _G.Settings.SummerSpin do wait()
              game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
  
                "SpinEventReward"
              )
            end
        end
    )
  end)
  
  
  
  local slider = Spin:Slider("Spin Delay", _G.Settings.eggspintime,10,0,1,"Slider", function(t)
    _G.Settings.eggspintime = t
    saveSettings()
  end)
  
  local Claim = C:Section("Claiming")
  
  
  
  local toggle = Claim:Toggle("Halloween Event", _G.Settings.SummerEvent,"Toggle", function(t)
    _G.Settings.SummerEvent = t
    saveSettings()
    spawn(function()
            while _G.Settings.SummerEvent do wait(1)
                          for i  = 1,12 do 
                MainRemote("ClaimOnlineReward","OnlineReward_" .. i)
            end
        end
      end
    )
  end)
  
  local toggle = Claim:Toggle("Daily Quest", _G.Settings.Autoclaimquest,"Toggle", function(t)
    _G.Settings.Autoclaimquest = t
    saveSettings()
    spawn(function()
            while _G.Settings.Autoclaimquest do wait(1)
                          MainRemote("CompleteDailyQuest","DailyQuest_Login")
                          MainRemote("CompleteDailyQuest","DailyQuest_DungeonClear")
                          MainRemote("CompleteDailyQuest","DailyQuest_Enemies")
                          MainRemote("CompleteDailyQuest","DailyQuest_TimeChallenge")
              MainRemote("CompleteDailyQuest","DailyQuest_Raid")
              MainRemote("CompleteDailyQuest","DailyQuest_BossRush")
              MainRemote("CompleteDailyQuest","DailyQuest_AllQuestClear")
            end
        end
    )
  end)
  
  
  
  local toggle = Claim:Toggle("Speed Raid Rewards", _G.Settings.autoclaimrewardspeed,"Toggle", function(t)
    _G.Settings.autoclaimrewardspeed = t
    saveSettings()
    spawn(function()
            while _G.Settings.autoclaimrewardspeed do wait(1)
                          for i = 1,9 do 
                              MainRemote("ClaimWeeklySpeedRaidReward",i)
            end
        end
      end
    )
  end)
  
  
  local toggle = Claim:Toggle("Daily Raid Ticket", _G.Settings.autoclaimrewardraid,"Toggle", function(t)
    _G.Settings.autoclaimrewardraid = t
    saveSettings()
    spawn(function()
            while _G.Settings.autoclaimrewardraid do wait(1)
                          for i = 1,9 do 
                MainRemote("GiveFreeDailyGemFromShop")
            end
        end
      end
    )
  end)
  
  
  local noti = z:Section("Notifyer")
  
  
  --Main:Textbox(title <string> ,disappear <boolean>, callback <function>)
  noti:Textbox("Webhook URL", _G.Settings.webhookurl, function(t)
    _G.Settings.webhookurl = t
    saveSettings()
  end)
  
  
  
  local toggle = noti:Toggle("Clear Notifier", _G.Settings.webhook,"Toggle", function(t)
    _G.Settings.webhook = t
    saveSettings()
    spawn(function()
            while _G.Settings.webhook do wait(_G.Settings.webhookspeed)
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
  end)
  end)
  
  local toggle = noti:Toggle("Raid Notifier", _G.Settings.raidwebhook,"Toggle", function(t)
    _G.Settings.raidwebhook = t
    saveSettings()
    spawn(function()
            while _G.Settings.raidwebhook do wait(_G.Settings.webhookspeed)
     
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
  end)
  end)
  
  
  
  
  local toggle = noti:Toggle("Level Notifier", _G.Settings.levelwebhook,"Toggle", function(t)
    _G.Settings.levelwebhook = t
    saveSettings()
    spawn(function()
            while _G.Settings.levelwebhook do wait(_G.Settings.webhookspeed)
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
  end)
  end)
  
  
  local slider = noti:Slider("Send Delay", _G.Settings.webhookspeed,10,0,1,"Slider", function(t)
    _G.Settings.webhookspeed = t
    saveSettings()
  end)
  
  
  noti:Textbox("Put Your ID", _G.Settings.dsuser, function(t)
    _G.Settings.dsuser = t
    saveSettings()
  end)
  
  
  noti:Textbox("Put @here or @everyone", _G.Settings.otherds, function(t)
    _G.Settings.otherds = t
    saveSettings()
  end)
  
  
  
  
  local credit = G:Section("Credit")
  
  
  
  credit:Button("Updating And More Features By Tozxart", function()
    SolarisLib:Notification("Credit", "Discord ID been copied in your clipboard.")
    setclipboard("ToZx#1217")
  
  end)
  
  credit:Button("Discord", function()
    SolarisLib:Notification("Credit", "Discord Link been copied in your clipboard.")
    setclipboard("https://discord.gg/vfkD5VCRKU")
  
  end)
  