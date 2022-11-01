local u = loadstring(game:HttpGet('https://raw.githubusercontent.com/shlexware/Rayfield/main/source'))()

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
		Key = "test"
	}
})



















Rayfield:LoadConfiguration()