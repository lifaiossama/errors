function Destroy()
    game:GetService("CoreGui").Orion:Destroy()
end
                       while _G.Autotrial == true do 
                        Destroy()-- trial
                        wait(5)
                        
                        game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                            "TeleportToTimeChallenge"
                        )
                    end


                       while _G.Autocustom == true do -- map
                        wait(4)
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
                        wait(1)
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
                        wait(3)
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




