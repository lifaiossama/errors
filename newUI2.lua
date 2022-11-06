getgenv().webhookurl = "webhook url"
getgenv().dsuser = "Put Your ID"
getgenv().otherds = "Put @here or @everyone"

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
local gamemodes = {"Easy", "Hard", "Nightmare", "Infinite"}
local capsules = {"Nardo Beast Capsule", "Raid Capsule", "Gear 5 Fluffy Capsule","Cursed Sage Capsule","Red Emperor Capsule", "Esper Capsule"}
local t = { "Chainsaw Raid", "Tengu Raid", "Tengoku Raid", "Nardo Beast Raid", "Gear 5 Fluffy Raid", "Red Emperor Raid", "Cursed Sage Raid", "Hirito Raid", "Titan Raid"}



local maintab = {FriendsOnly = false, Hardcore = false}


local u = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()
-- getgenv().test = false
local Window = u:CreateWindow({
	Name = "The Intruders",
	LoadingTitle = "The Intruders",
	LoadingSubtitle = "by Tozxart",
	ConfigurationSaving = {
		Enabled = true,
		FolderName = "The Intruders new Ui",
		FileName = game.Players.LocalPlayer.Name .."_AnimeDimension.lua"
	},
	KeySystem = true, -- Set this to true to use our key system
	KeySettings = {
		Title = "The Intruders",
		Subtitle = "Key System",
		Note = "Join the discord (discord.gg/vfkD5VCRKU)",
		SaveKey = true,
		Key = "tozx"
	}
})

local  Maintab = Window:CreateTab("Main")
local x = Window:CreateTab("Extra")
local D = Window:CreateTab("TP Method")
local E = Window:CreateTab("Auto S & P")
local y = Window:CreateTab("Specific & Raid")
local F = Window:CreateTab("Afk Farm")
local A = Window:CreateTab("Auto Sell")
local B = Window:CreateTab("Auto Spin")
local C = Window:CreateTab("Auto Claim")
local z = Window:CreateTab("Webhook")
local G = Window:CreateTab("Credits")

local Section = Maintab:CreateSection("Farming")

local Toggle = Maintab:CreateToggle({
	Name = "💥 Auto Level",
	CurrentValue = false,
	Flag = "Autolvl", 
	Callback = function(Value)  
		wait(10)
		Lvl = game.Players.LocalPlayer.leaderstats.Level.Value
		if Lvl > 0 and Lvl < 6 then
			wait(1)
			game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
				"CreateRoom",
				{
					["Difficulty"] = "Easy",
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Titan Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Titan Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Titan Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Demon Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Demon Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Demon Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Curse Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Curse Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Curse Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Villain Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Villain Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Villain Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Sword Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Sword Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Ghoul Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Ghoul Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Fate Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Fate Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Slime Dimension",
					["Hardcore"] = maintab.Hardcore
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
					["FriendsOnly"] = maintab.FriendsOnly,
					["MapName"] = "Slime Dimension",
					["Hardcore"] = maintab.Hardcore
				}
			)
			game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
				"TeleportPlayers"
			)
		end
    end,
})

local Toggle = Maintab:CreateToggle({
	Name = "💥 Farm Time Challenge",
	CurrentValue = false,
	Flag = "Autotrial", 
	Callback = function(Value)  
		wait(7)
		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
			"TeleportToTimeChallenge"
		)
    end,
})

local Toggle = Maintab:CreateToggle({
	Name = "💥 Farm Specific Map",
	CurrentValue = false,
	Flag = "Autocustom", 
	Callback = function(Value)  
		wait(10)
		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
			"CreateRoom",
			{
				["Difficulty"] = maintab.CustomDifficulty,
				["FriendsOnly"] = maintab.FriendsOnly,
				["MapName"] = maintab.custommapselect,
				["Hardcore"] = maintab.Hardcore
			}
		)
		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
			"TeleportPlayers"
		)
    end,
})

local Toggle = Maintab:CreateToggle({
	Name = "💥 Farm Raid",
	CurrentValue = false,
	Flag = "Autoraid", 
	Callback = function(Value)  
		wait(3)
		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
			"CreateRoom",
			{
				["Difficulty"] = "Easy",
				["FriendsOnly"] = true,
				["MapName"] = maintab.Raidselectmap,
				["Hardcore"] = false
			}
		)
		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
			"TeleportPlayers"
		)
    end,
})

local Toggle = Maintab:CreateToggle({
	Name = "💥 Farm Raid + AFK",
	CurrentValue = false,
	Flag = "afkandraid", 
	Callback = function(Value)  
		spawn(
			function()
				wait(3)
				if game.PlaceId == 7274690025 or game.PlaceId == 6938803436 then
					game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
						"CreateRoom",
						{
							["Difficulty"] = "Easy",
							["FriendsOnly"] = true,
							["MapName"] = maintab.Raidselectmap,
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
    end,
})



local Toggle = F:CreateToggle({
	Name = "💥 Farm Raid Token",
	CurrentValue = false,
	Flag = "farmraidtoken", 
	Callback = function(Value)  
		spawn(
			function()
				while task.wait(260) do
				if game.PlaceId == 6990131029 then
					maintab.Name = game.Players.LocalPlayer.Name .. "StatDisplay"
					valuecurrency = game.ReplicatedStorage[maintab.Name].AfkCurrencyChosen.Value
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
		end
		)
    end,
})

local Label = F:CreateLabel("If You Want Farm Gem Untoggle Farm Raid Token")


local Toggle = Maintab:CreateToggle({
	Name = "💥 Farm Boss Rush",
	CurrentValue = false,
	Flag = "Autoboss", 
	Callback = function(Value)  
		wait(4)
		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
			"TeleportToBossRush"
		)
    end,
})



local Toggle = Maintab:CreateToggle({
	Name = "💥 Farm Speed Raid",
	CurrentValue = false,
	Flag = "Autospeedraid", 
	Callback = function(Value)  
		wait(2)
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
		end
    end,
})







local Toggle = Maintab:CreateToggle({
	Name = "💥 Farm Speed Raid",
	CurrentValue = false,
	Flag = "Autospeedraid", 
	Callback = function(Value)  
		getgenv().test = Value
		      if not game:GetService("Players").LocalPlayer.PlayerGui.UniversalGui:FindFirstChild("TeleportingUI").Visible then
            local playergui = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
            local ui = playergui.CenterUIFrame.Inventory.Frame.CharacterInventoryFrame.CharacterInventoryScrollingFrame;

            local SpeedRaidCharacters = {}
            for i,v in pairs(ui:GetChildren()) do 
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
        end
    end,
})


local Button = Maintab:CreateButton({
	Name = "Teleport to Lobby",
	Callback = function()
        game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer)
	end,
})





local Toggle = A:CreateToggle({
	Name = "Auto Sell Common",
	CurrentValue = false,
	Flag = "autosellcommon", 
	Callback = function(Value)  
		wait(1)
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
    end,
})




local Toggle = A:CreateToggle({
	Name = "Auto Sell Uncommon",
	CurrentValue = false,
	Flag = "autoselluncommon", 
	Callback = function(Value)  
		wait(1)
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
    end,
})




local Toggle = A:CreateToggle({
	Name = "Auto Sell Rare",
	CurrentValue = false,
	Flag = "autosellrare", 
	Callback = function(Value)  
		wait(1)
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
    end,
})



local Toggle = A:CreateToggle({
	Name = "Auto Sell Epic",
	CurrentValue = false,
	Flag = "autosellepic", 
	Callback = function(Value)  
		wait(1)
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
    end,
})



local Toggle = A:CreateToggle({
	Name = "Auto Sell Legendary",
	CurrentValue = false,
	Flag = "autoselllegendary", 
	Callback = function(Value)  
		wait(1)
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
    end,
})




local Toggle = D:CreateToggle({
	Name = "TP onTop",
	CurrentValue = false,
	Flag = "AutoTP", 
	Callback = function(Value) 
		maintab.AutoTP = Value 
		while task.wait() do
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
							Speed2 = maintab.Speed
						end
						local U = game:service "TweenService"
						local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
						local W =
							U:Create(
							game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
							V,
							{
								CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(-90), 0, 0) +
									Vector3.new(0, maintab.Height, 0)
							}
						)
						W:Play()
						wait(T / Speed2)
					until not maintab.AutoTP or n.Humanoid.Health <= 0 or not n.Parent or not n
				end
			end
		)
	end
    end,
})


local Toggle = D:CreateToggle({
	Name = "TP Under",
	CurrentValue = false,
	Flag = "AutoTP1", 
	Callback = function(Value)  
		maintab.AutoTP1 = Value
		while task.wait() do
		pcall(
			function()
				game.Players.LocalPlayer.Character.Humanoid:ChangeState(16)
				game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide = false
			end
		)
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
							Speed2 = maintab.Speed
						end
						local U = game:service "TweenService"
						local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
						local W =
							U:Create(
							game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
							V,
							{
								CFrame = n.HumanoidRootPart.CFrame * CFrame.Angles(math.rad(90), 0, 0) +
									Vector3.new(0, maintab.Height1, 0)
							}
						)
						W:Play()
						wait(T / Speed2)
					until not maintab.AutoTP1 or n.Humanoid.Health <= 0 or not n.Parent or not n
				end
			end
		)
	end
    end,
})



local Toggle = D:CreateToggle({
	Name = "TP Behind",
	CurrentValue = false,
	Flag = "AutoTP2", 
	Callback = function(Value) 
		maintab.AutoTP2 = Value
		while task.wait() do
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
	(n.HumanoidRootPart.Position -
	game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if T < 999 then
	Speed2 = maintab.Speed
elseif T < 1000 then
	Speed2 = maintab.Speed
elseif T >= 1000 then
	Speed2 = maintab.Speed
end
local U = game:service "TweenService"
local V = TweenInfo.new(T / Speed2, Enum.EasingStyle.Linear)
local W =
	U:Create(
	game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],
	V,
	{
		CFrame = n.HumanoidRootPart.CFrame *
			CFrame.new(0, 0, maintab.distance)
	}
)
W:Play()
wait(T / Speed2)
until not maintab.AutoTP2 or n.Humanoid.Health <= 0 or not n.Parent or not n
				end
			end
		)
	end
    end,
})


local Dropdown = y:CreateDropdown({
	Name = "Select Difficulty",
	Options = gamemodes,
	CurrentOption = "Easy",
	Flag = "CustomDifficulty", 
	Callback = function(Option)
		maintab.CustomDifficulty = Value
	end,
})

local Dropdown = B:CreateDropdown({
	Name = "Select Capsule",
	Options = capsules,
	CurrentOption = "Nill",
	Flag = "selectegg", 
	Callback = function(Option)
		maintab.selectegg = Value
	end,
})


local p = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
local l = p.CenterUIFrame.PlayFrame.Frame.PlayRoomFrame.MapSelectionScrollingFrame;

local RaidSelect = {}
-- if   game.PlaceId == 7338881230 then
for i,v in ipairs(l:GetChildren()) do 
  if v:FindFirstChild("MapImage") and v.Name ~= "MapSelectionTemplate" and not table.find(RaidSelect, v.Name) then
    table.insert(RaidSelect,v.Name) 
  end;
end;
table.sort(RaidSelect)
local tozx
if game.PlaceId == 7338881230 then 
 tozx = {"Please Teleport to main lobby to select The map"}
else 
    tozx = RaidSelect
end

local Dropdown = y:CreateDropdown({
	Name = "Select Map",
	Options = RaidSelect,
	CurrentOption = "Nill",
	Flag = "custommapselect", 
	Callback = function(Option)
		maintab.custommapselect = Value
	end,
})

local p = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
local l = p.CenterUIFrame.PlayFrame.Frame.PlayRoomFrame.MapSelectionScrollingFrame;

local RaidSelect = {}
-- if   game.PlaceId == 7338881230 then
for i,v in ipairs(l:GetChildren()) do 
  if v:FindFirstChild("MapImage") and v.Name ~= "MapSelectionTemplate" and not table.find(RaidSelect, v.Name) then
    table.insert(RaidSelect,v.Name) 
  end;
end;
table.sort(RaidSelect)
local tozx
if game.PlaceId == 6938803436 then 
 tozx = {"Please Teleport to raid lobby to select The raid map"}
else 
    tozx = RaidSelect
end


local Dropdown = y:CreateDropdown({
	Name = "Select Raid",
	Options = tozx,
	CurrentOption = "Nill",
	Flag = "Raidselectmap", 
	Callback = function(Option)
		maintab.Raidselectmap = value
	end,
})

local Button = y:CreateButton({
	Name = "Teleport to raid lobby",
	Callback = function()
        game:GetService("TeleportService"):Teleport(7338881230, LocalPlayer)
	end,
})



local Toggle = B:CreateToggle({
	Name = "Auto Capsule",
	CurrentValue = false,
	Flag = "autospingem", 
	Callback = function(Value)  
		while task.wait(maintab.eggspintime) do
		game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
			"BuyEgg",
			maintab.selectegg
		)
	end
    end,
})



local Toggle = B:CreateToggle({
	Name = "Halloween Spin",
	CurrentValue = false,
	Flag = "SummerSpin", 
	Callback = function(Value)  
		while task.wait(maintab.eggspintime) do
			game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(

				"SpinEventReward"
			  )
	end
    end,
})


-- Need to fix

local Toggle = y:CreateToggle({
	Name = "Hardcore",
	CurrentValue = false,
	Flag = "Hardcore", 
	Callback = function(Value)  
		maintab.Hardcore = Value
    end,
})


local Toggle = y:CreateToggle({
	Name = "Friends Only",
	CurrentValue = false,
	Flag = "FriendsOnly", 
	Callback = function(Value) 
		maintab.FriendsOnly = Value
    end,
})


local p = game:GetService("Players").LocalPlayer.PlayerGui:WaitForChild("MainGui");
local l = p.CenterUIFrame.Inventory.Frame.CharacterInventoryFrame.CharacterInventoryScrollingFrame;

local MainCharacters = {}
for i,v in ipairs(l:GetChildren()) do 
  if v:FindFirstChild("CharacterImage") and v.Name ~= "CharacterInventorySlot" and not table.find(MainCharacters, v.Name) then
    table.insert(MainCharacters,v.Name)
  end;
end;
table.sort(MainCharacters)


local Dropdown = y:CreateDropdown({
	Name = "Select Main Character",
	Options = MainCharacters,
	CurrentOption = "Nill",
	Flag = "SelectedMainCharacter", 
	Callback = function(Option)
		maintab.SelectedMainCharacter = Option
	end,
})
task.spawn(function()
    while task.wait(1) do
        if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.PlayButtonsFrame.Frame.SpeedRaidBanner.SpeedRaidBannerOpenText.text:find('Ready in') then
        if maintab.AutoEquipMCharacter and maintab.SelectedMainCharacter then
            game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                "EquipCharacter",
                maintab.SelectedMainCharacter
            )
        end
    end
end
end)

local Toggle = y:CreateToggle({
	Name = "Auto Equip Main Character",
	CurrentValue = false,
	Flag = "AutoEquipMCharacter", 
	Callback = function(Value)  
		maintab.AutoEquipMCharacter = Value
    end,
})

local Dropdown = y:CreateDropdown({
	Name = "Select Assist Character 1",
	Options = MainCharacters,
	CurrentOption = "Nill",
	Flag = "SelectedAssitCharacter1", 
	Callback = function(Option)
		maintab.SelectedAssitCharacter1 = Option
	end,
})

local Dropdown = y:CreateDropdown({
	Name = "Select Assist Character 2",
	Options = MainCharacters,
	CurrentOption = "Nill",
	Flag = "SelectedAssitCharacter2", 
	Callback = function(Option)
		maintab.SelectedAssitCharacter2 = Option
	end,
})
task.spawn(function()
    while task.wait(1) do
        if game:GetService("Players").LocalPlayer.PlayerGui.MainGui.CenterUIFrame.PlayButtonsFrame.Frame.SpeedRaidBanner.SpeedRaidBannerOpenText.text:find('Ready in') then
        if maintab.AutoEquipACharacter then
            if maintab.SelectedAssitCharacter then
                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                    "EquipCharacterAssist",
                    _maintab.SelectedAssitCharacter,
                    1
                )
            end
            if maintab.SelectedAssitCharacter2 then
                game:GetService("ReplicatedStorage").RemoteFunctions.MainRemoteFunction:InvokeServer(
                    "EquipCharacterAssist",
                    maintab.SelectedAssitCharacter2,
                    2
                )
            end
        end
    end
    end
end)

local Toggle = y:CreateToggle({
	Name = "Auto Equip Assist Characters",
	CurrentValue = false,
	Flag = "AutoEquipACharacter", 
	Callback = function(Value)  
		maintab.AutoEquipACharacter = Value
    end,
})



local Toggle = x:CreateToggle({
	Name = "Hide Name",
	CurrentValue = false,
	Flag = "Hidename", 
	Callback = function(Value)  
		while task.wait(1) do
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
    end,
})

local Toggle = x:CreateToggle({
	Name = "Rejoin If Kick",
	CurrentValue = false,
	Flag = "kickrejoin", 
	Callback = function(Value)  
		while task.wait(1) do
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
    end,
})


local Toggle = x:CreateToggle({
	Name = "Auto leave",
	CurrentValue = false,
	Flag = "Autoleave", 
	Callback = function(Value)  
			while task.wait(850) do
				game:GetService("TeleportService"):Teleport(6938803436, LocalPlayer) 
			end                          
    end,
})



local Toggle = x:CreateToggle({
	Name = "Auto Retry",
	CurrentValue = false,
	Flag = "AutoRetry", 
	Callback = function(Value)  
			while task.wait(1) do
				game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(
					"RetryDungeon"
				)  
			end                        
    end,
})

local Toggle = x:CreateToggle({
	Name = "Auto Reduce Damage 20%",
	CurrentValue = false,
	Flag = "ReduceDamage", 
	Callback = function(Value)  
			while task.wait(1) do
				game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer(
					"SetMobileDamageReductionStat"
				)   
			end                    
    end,
})




local Toggle = x:CreateToggle({
	Name = "Anti Lag",
	CurrentValue = false,
	Flag = "antilag", 
	Callback = function(Value)  
			while task.wait(1) do
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
    end,
})


local Toggle = x:CreateToggle({
	Name = "Black Screen",
	CurrentValue = false,
	Flag = "balckscreen", 
	Callback = function(Value)  
			while task.wait(1) do
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
    end,
})

local Toggle = x:CreateToggle({
	Name = "FPS & GPU Reduce",
	CurrentValue = false,
	Flag = "FPSGPU", 
	Callback = function(Value)  
			while task.wait(1) do
					FPSGPUNotification()
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
    end,
})


local Toggle = C:CreateToggle({
	Name = "Halloween Event",
	CurrentValue = false,
	Flag = "SummerEvent", 
	Callback = function(Value)  
			while task.wait(1) do
				for i  = 1,12 do 
					MainRemote("ClaimOnlineReward","OnlineReward_" .. i)
				  end 
			end                    
    end,
})



local Toggle = C:CreateToggle({
	Name = "Daily Quest",
	CurrentValue = false,
	Flag = "SummerEvent", 
	Callback = function(Value)  
			while task.wait(1) do
				MainRemote("CompleteDailyQuest","DailyQuest_Login")
				MainRemote("CompleteDailyQuest","DailyQuest_DungeonClear")
				MainRemote("CompleteDailyQuest","DailyQuest_Enemies")
				MainRemote("CompleteDailyQuest","DailyQuest_TimeChallenge")
				MainRemote("CompleteDailyQuest","DailyQuest_Raid")
				MainRemote("CompleteDailyQuest","DailyQuest_BossRush")
				MainRemote("CompleteDailyQuest","DailyQuest_AllQuestClear")
			end                    
    end,
})




local Toggle = C:CreateToggle({
	Name = "Speed Raid Rewards",
	CurrentValue = false,
	Flag = "autoclaimrewardspeed", 
	Callback = function(Value)  
			while task.wait(1) do
				for i  = 1,12 do 
					MainRemote("ClaimWeeklySpeedRaidReward",i)
				  end 
			end                    
    end,
})


local Toggle = C:CreateToggle({
	Name = "Daily Raid Ticket",
	CurrentValue = false,
	Flag = "autoclaimrewardraid", 
	Callback = function(Value)  
			while task.wait(1) do
				MainRemote("GiveFreeDailyGemFromShop")
			end                    
    end,
})

local Label = E:CreateLabel("Punch Setting")

local Slider = E:CreateSlider({
	Name = "Punch Delay",
	Range = {1, 5},
	Increment = 1,
	Suffix = "Punch Delay",
	CurrentValue = 1,
	Flag = "punchdelay",
	Callback = function(Value)
		maintab.punchdelay = value
	end,
})


local Toggle = E:CreateToggle({
	Name = "Auto Punch",
	CurrentValue = false,
	Flag = "AutoPunch", 
	Callback = function(Value)  
			while task.wait(maintab.punchdelay) do
				game:GetService("ReplicatedStorage").RemoteEvents.MainRemoteEvent:FireServer("UseSkill",{ ["attackNumber"] = 1},"BasicAttack")
			end                    
    end,
})

local Label = E:CreateLabel("Skill Setting")


local Toggle = E:CreateToggle({
	Name = "all skills",
	CurrentValue = false,
	Flag = "allskills", 
	Callback = function(Value)  
		while task.wait(maintab.skilldelay) do
				pcall(function()
					for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
					if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
						for i = 1, 4 do
							for m, n in
pairs(getconnections(game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder["Skill"..i..""].MouseButton1Click)) do
	for m, n in pairs(
		getconnections(
			game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill5.MouseButton1Click
		)
	) do
								n:Fire();
end
end
							end
						end
					end
					end)
				end                
    end,
})


local Toggle = E:CreateToggle({
	Name = "skill 1",
	CurrentValue = false,
	Flag = "AutoSkill1", 
	Callback = function(Value)  
		while task.wait(maintab.skilldelay) do
				pcall(function()
					for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
					if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
				for m, n in pairs(
					getconnections(
						game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill1.MouseButton1Click)) do
					n:Fire()
							end
						end
					end
					end)
				end                
    end,
})

local Toggle = E:CreateToggle({
	Name = "skill 2",
	CurrentValue = false,
	Flag = "AutoSkill2", 
	Callback = function(Value)  
		while task.wait(maintab.skilldelay) do
				pcall(function()
					for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
					if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill2.MouseButton1Click
                            )
                        ) do
                            n:Fire()
							end
						end
					end
					end)
				end                
    end,
})

local Toggle = E:CreateToggle({
	Name = "skill 3",
	CurrentValue = false,
	Flag = "AutoSkill3", 
	Callback = function(Value)  
		while task.wait(maintab.skilldelay) do
				pcall(function()
					for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
					if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill3.MouseButton1Click
                            )
                        ) do
                            n:Fire()
							end
						end
					end
					end)
				end                
    end,
})


local Toggle = E:CreateToggle({
	Name = "skill 4",
	CurrentValue = false,
	Flag = "AutoSkill4", 
	Callback = function(Value)  
		while task.wait(maintab.skilldelay) do
				pcall(function()
					for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
					if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill4.MouseButton1Click
                            )
                        ) do
                            n:Fire()
							end
						end
					end
					end)
				end                
    end,
})




local Toggle = E:CreateToggle({
	Name = "skill 5 (awaken units)",
	CurrentValue = false,
	Flag = "AutoSkill5", 
	Callback = function(Value)  
		while task.wait(maintab.skilldelay) do
				pcall(function()
					for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
					if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                        for m, n in pairs(
                            getconnections(
                                game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.Skill5.MouseButton1Click
                            )
                        ) do
                            n:Fire()
							end
						end
					end
					end)
				end                
    end,
})



local Toggle = E:CreateToggle({
	Name = "Assist 1",
	CurrentValue = false,
	Flag = "SkillAssist1", 
	Callback = function(Value)  
		while task.wait(maintab.skilldelay) do
					for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
						if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
					for m, n in pairs(
						getconnections(
							game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist1.MouseButton1Click)) do
						n:Fire()
							end
					end
					end
				end                
    end,
})



local Toggle = E:CreateToggle({
	Name = "Assist 2",
	CurrentValue = false,
	Flag = "SkillAssist2", 
	Callback = function(Value)  
		while task.wait(maintab.skilldelay) do
			for i,v in pairs (game:GetService("Workspace").Folders.Monsters:GetChildren()) do
				if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 30 then
			for m, n in pairs(
				getconnections(
					game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.SlotsHolder.SkillAssist2.MouseButton1Click
				)
			) do
				n:Fire()
							end
					end
					end
				end                
    end,
})



local Slider = E:CreateSlider({
	Name = "Skill Delay",
	Range = {1, 5},
	Increment = 1,
	Suffix = "Skill Delay",
	CurrentValue = 1,
	Flag = "skilldelay",
	Callback = function(Value)
		maintab.skilldelay = Value
	end,
})


local Label = E:CreateLabel("Get exploit detected put more delay")
local Label = E:CreateLabel("Reccomend 1 delay no detected")




local Slider = B:CreateSlider({
	Name = "Spin Delay",
	Range = {0, 10},
	Increment = 1,
	Suffix = "Spin Delay",
	CurrentValue = 1,
	Flag = "eggspintime",
	Callback = function(Value)
		maintab.eggspintime = Value
	end,
})

local Slider = D:CreateSlider({
	Name = "Speed",
	Range = {80, 100},
	Increment = 1,
	Suffix = "Speed",
	CurrentValue = 80,
	Flag = "Speed",
	Callback = function(Value)
		maintab.Speed = Value
	end,
})


local Slider = D:CreateSlider({
	Name = "Over Height",
	Range = {5, 10},
	Increment = 1,
	Suffix = "Over Height",
	CurrentValue = 1,
	Flag = "Height",
	Callback = function(Value)
		maintab.Height = Value
	end,
})

local Slider = D:CreateSlider({
	Name = "Under Height",
	Range = {-15, -10},
	Increment = 1,
	Suffix = "Under Height",
	CurrentValue = -15,
	Flag = "Height1",
	Callback = function(Value)
		maintab.Height1 = Value
	end,
})


local Slider = D:CreateSlider({
	Name = "Behind Distance",
	Range = {0, 20},
	Increment = 1,
	Suffix = "Behind Distance",
	CurrentValue = 10,
	Flag = "distance",
	Callback = function(Value)
		maintab.distance = Value
	end,
})
local Label = D:CreateLabel("select behind recommend")



local Input = z:CreateInput({
	Name = "Webhook Url",
	PlaceholderText = "webhookurl",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		getgenv().webhookurl = Text
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
	end,
})



local Toggle = z:CreateToggle({
	Name = "Clear Notifier",
	CurrentValue = false,
	Flag = "webhook", 
	Callback = function(Value)  
		while task.wait(maintab.webhookspeed) do
			if
			game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.ResultUI.Visible ==
				true
		 then
			maintab.Name = game.Players.LocalPlayer.Name .. "StatDisplay"
			function webhook(_, a0)
				local request = http_request or request or HttpPost or syn.request
				request(
					{
						Url = getgenv().webhookurl,
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
							game.ReplicatedStorage[maintab.Name].ExploitsDetected.Value
						)
					},
					{
					["name"] = "⚠️Minutes Played Today",
					["value"] = game:GetService("HttpService"):JSONDecode(
							game.ReplicatedStorage[maintab.Name].MinutesPlayedToday.Value
					)
					},
					{
						["name"] = "Time Challenge High Score",
						["value"] = game:GetService("HttpService"):JSONDecode(
							game.ReplicatedStorage[maintab.Name].TimeChallengeHighScore.Value
							)
					}, 
					{
						["name"] = "Deaths",
						["value"] = game:GetService("HttpService"):JSONDecode(
							game.ReplicatedStorage[maintab.Name].Deaths.Value
							)
					}, 
																	 
					{
						["name"] = "💠 Infinite Record",
						["value"] = game:GetService("HttpService"):JSONDecode(
							game.ReplicatedStorage[maintab.Name].InfiniteRecord.Value
						)
					},
					{
						["name"] = "🌌 Dimension Clear",
						["value"] = game:GetService("HttpService"):JSONDecode(
							game.ReplicatedStorage[maintab.Name].StageClear.Value
						)
					},
				},
				["timestamp"] = DateTime.now():ToIsoDate()
			}
			webhook(_, "<@" .. getgenv().dsuser .. ">" .. getgenv().otherd)
		end
	end              
    end,
})




local Toggle = z:CreateToggle({
	Name = "Raid Notifier",
	CurrentValue = false,
	Flag = "raidwebhook", 
	Callback = function(Value)  
		while task.wait(maintab.webhookspeed) do
			if
                            game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.RaidResultUI.Visible ==
                                true
                         then
                            maintab.Name = game.Players.LocalPlayer.Name .. "StatDisplay"
                            function webhook(_, a0)
                                local request = http_request or request or HttpPost or syn.request
                                request(
                                    {
                                        Url = getgenv().webhookurl,
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
                                            game.ReplicatedStorage[maintab.Name].ExploitsDetected.Value
                                        )
                                    },
                                    {
                                        ["name"] = "🌀 Boss Rush Clear",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[maintab.Name].BossRushClears.Value
                                        )
                                    },
                                    {
                                        ["name"] = "🎟️ Boss Rush Ticket",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[maintab.Name].BossRushFreeEntry.Value
                                        )
                                    },
                                    {
                                        ["name"] = "🌀 Raid Clear",
                                        ["value"] = game:GetService("HttpService"):JSONDecode(
                                            game.ReplicatedStorage[maintab.Name].RaidClears.Value
                                        )
                                    }
                                },
                                ["timestamp"] = DateTime.now():ToIsoDate()
                            }
                            webhook(_, "<@" .. getgenv().dsuser .. ">" .. getgenv().otherd)
                        end
	end              
    end,
})



local Toggle = z:CreateToggle({
	Name = "Level Notifier",
	CurrentValue = false,
	Flag = "levelwebhook", 
	Callback = function(Value)  
		while task.wait(maintab.webhookspeed) do
			if
			game.Players.LocalPlayer.PlayerGui.UniversalGui.UniversalCenterUIFrame.LevelUpImage.Visible ==
				true
		 then
			maintab.Name = game.Players.LocalPlayer.Name .. "StatDisplay"
			function webhook(_, a0)
				local request = http_request or request or HttpPost or syn.request
				request(
					{
						Url = getgenv().webhookurl,
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
			webhook(_, "<@" .. getgenv().dsuser .. ">" .. getgenv().otherd)
		end
	end              
    end,
})

local Slider = z:CreateSlider({
	Name = "Send Delay",
	Range = {10, 15},
	Increment = 1,
	Suffix = "Send Delay",
	CurrentValue = 10,
	Flag = "webhookspeed",
	Callback = function(Value)
		maintab.webhookspeed = Value
	end,
})



local Input = z:CreateInput({
	Name = "Put Your ID",
	PlaceholderText = "dsuser",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		getgenv().dsuser = Text
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
	end,
})

local Input = z:CreateInput({
	Name = "Put @here or @everyone",
	PlaceholderText = "otherds",
	RemoveTextAfterFocusLost = false,
	Callback = function(Text)
		getgenv().otherds = Text
		-- The function that takes place when the input is changed
    		-- The variable (Text) is a string for the value in the text box
	end,
})


-- put your name bro 

local Button = G:CreateButton({
	Name = "Updating And More Features By Tozxart",
	Callback = function()
		setclipboard("ToZx#1217")
	end,
})

local Button = G:CreateButton({
	Name = "Discord",
	Callback = function()
		setclipboard("https://discord.gg/vfkD5VCRKU")
	end,
})

local Keybind = G:CreateKeybind({
	Name = "Toggle Gui Key",
	CurrentKeybind = "z",
	HoldToInteract = false,
	Flag = "toggleguikey", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
	Callback = function(Keybind)
		-- The function that takes place when the keybind is pressed
    		-- The variable (Keybind) is a boolean for whether the keybind is being held or not (HoldToInteract needs to be true)
	end,
})
function Destroy()
    game:GetService("CoreGui").Rayfield:Destroy()
end


local Button = G:CreateButton({
	Name = "Destroy Gui",
	Callback = function()
		Destroy()
	end,
})

local Label = G:CreateLabel("ILastestUpdate : 11/20/2022")








-- while wait() do 
-- 	if getgenv().test == true  then 
-- 		u:Notify("Title Example", "Content/Description Example", 4483362458) -- Title, Content, Image
-- 		break
-- 	end 
-- 	end 
	





u:LoadConfiguration()