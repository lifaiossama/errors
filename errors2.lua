shared.key = "ToZx"
loadstring(game:HttpGet("https://raw.githubusercontent.com/Poopland/Alpha/Loader/Alphabit.luarin"))()

repeat wait() until game:IsLoaded()
_G.Settings = {
    Autoleave = true,
    kickrejoin = true,
    LeaveDungeons = true,
    SummerEvent = false,
    SummerSpin = false,
    farmraidtoken = false,
    skilldelay = 1,
    Raidselectmap = "None",
    distance = 10,
    toggleguikey = "z",
    Hardcore = false,
    afkandraid = false,
    autospingem = false,
    autoclaimrewardraid = false,
    FriendsOnly = true,
    eggspintime = "3",
    autoclaimrewardspeed = false,
    equipselectmain = false,
    equipselectmain1 = false,
    equipselectmain2 = false,
    selectmain = "None",
    selectmain1 = "None",
    selectmain2 = "None",
    autosellcommon = false,
    autoselluncommon = false,
    autosellrare = false,
    autosellepic = false,
    selectegg = "None",
    autoselllegendary = false,
    autoequipbest = true,
    autoupgrade = false,
    Height = 20,
    Height1 = -20,
    otherds = "@here",
    dsuser = "Not Set",
    AutoPunch = true,
    punchdelay = "4",
    custommapselect = "None",
    webhookspeed = "10",
    AutoFarm = false,
    AutoTP = false,
    AutoTP1 = false,
    AutoTP2 = true,
    CustomDifficulty = "None",
    Autocustom = false,
    AutoRetry = false,
    webhookurl = "",
    AutoSkill1 = true,
    AutoSkill2 = true,
    AutoSkill3 = true,
    AutoSkill4 = true,
    AutoSkill5 = true,
    AutoSkill6 = true,
    kickwebhook = false,
    Speed = 80,
    Hidename = true,
    Autolvl = false,
    Autospeedraid = false,
    Autoboss = false,
    webhook = false,
    raidwebhook = false,
    Autoraid = false,
    kickrejoin = true
}

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(s)
    if s == Enum.TeleportState.Started then
        pcall(function() -- cause of shitty syn libary
            syn.queue_on_teleport(loadstring(game:HttpGet("https://raw.githubusercontent.com/lifaiossama/errors/main/errors.lua"))())
        end)
    end
end)

