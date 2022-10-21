
    _G.Autotrial  = false; -- Time Challenge
    _G.Autocustom = false; -- Dimension Farm
    _G.Autoraid = false; -- Raid
    _G.FriendsOnly = false;
    _G.CustomDifficulty = "Easy"; -- "Easy", "Hard", "Nightmare", "Infinite"
    _G.Raidselectmap = "Nardo Beast Raid"; -- { "Tengu Raid", "Nardo Beast Raid", "Gear 5 Fluffy Raid", "Red Emperor Raid", "Cursed Sage Raid", "Hirito Raid", "Titan Raid"}
    _G.Hardcore = false;
    _G.custommapselect = "Titan Dimension"; --("Infinite Mode","Titan Dimension","Demon Dimension","Curse Dimension","Villain Dimension","Sword Dimension","Ghoul Dimension","Fate Dimension","Halloween Dimension","Slime Dimension")
    _G.Autospeedraid = false; -- Speed raid
    _G.Autoboss = false; -- Boss Rush
                       while _G.Autotrial == true do -- trial
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "TeleportToTimeChallenge"
                        )
                    end


                       while _G.Autocustom == true do -- map
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


                    while _G.Autoraid == true do -- Raid
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


                    while _G.Autoboss == true do -- Boss Rush
                                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                                "TeleportToBossRush"
                                            )
                                        end

                            while _G.Autospeedraid == true do -- Speed raid 
                                            local Y = math.random(1, #p)
                                            local Z = p[Y]
                                            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                                                "TeleportToShadowRaid",
                                                Z
                                            )
                                        end




