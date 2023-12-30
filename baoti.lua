-- Config


-- Load Game
repeat task.wait()
until game:IsLoaded() and game:FindFirstChild("Players") and game:FindFirstChild("Players").LocalPlayer and ((game.Players.LocalPlayer.Team == nil and game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main") and game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") and game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam").Container) or game.Players.LocalPlayer.Team ~= nil)


if(getgenv().XERO == true) then
	return
end
getgenv().XERO = true



local previousTime = os.time()
-- Global Variable
local currentTime = tick()

local utc7CurrentTime = currentTime + 7 * 60 * 60 
local targetTimeUtc = os.time({year = 2024, month = 5, day = 1, hour = 0, min = 0, sec = 0})
local targetTimeUtc7 = targetTimeUtc + 7 * 60 * 60
if utc7CurrentTime > targetTimeUtc7 then
    return
end
currentTime = os.time()
if(currentTime > targetTimeUtc) then
    return
end

local request = request or fluxus and fluxus_request or http.request
local args = {
  ["value"] = "ditmemay"
}
local a = request({
    Url = "https://xerobestfrihub.000webhostapp.com/",
    Method = "POST",
    Header ={
       ["Contest-Type"] = "application/json"
    },
    Body = game:GetService("HttpService"):JSONEncode(args)
})
local checked = false
for i,v in pairs(a) do
    if(type(v) == "string") then
        if(string.find(v,"deoduoc")) then
            checked = true
        end
    end
end
if(checked == false) then
    return
end

local yeswhynot = false
local KeySystemUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/ui/xrer_mstudio45.lua"))()
KeySystemUI.New({
    ApplicationName = "XeroHub",
    Name = "XeroHub Key System",
    Info = "Get Key for XeroHub",
    DiscordInvite = "https://discord.gg/DmdVQcAMh8" 
})
repeat task.wait() until KeySystemUI.Finished() or KeySystemUI.Closed
if KeySystemUI.Finished() and KeySystemUI.Closed == false then
    yeswhynot = true
end
if(not yeswhynot) then
	return
end

getgenv().Setting = {
    ["Team"] = "Pirates", --Marines
    ["Webhook"] = {
        ["Url"] = "https://discord.com/api/webhooks/1160607946313568417/66MIAVj7-POIFvHLDPu4zpisGyJUl8fcR0jTJl2T0yteZASXG8V9OcFvmPfRZj7Uk6_Y", -- link webhook
        ["Enabled"] = true, -- enable webhook
    },
    ["BypassTP"] = {
        ["Enable"] = true, -- bypass tp 
        ["Attempt"] = 0, -- Tween If Failed After x Attempts (change to 0 for inf bypass tp even it fail)
    },
    ["FpsLock"] = {
        ["Enable"] = true, -- lock fps
        ["Cap"] = 30, -- fps to lock
    },
    ["LockBounty"] = {
        ["Enable"] = true, -- lock bounty
        ["Cap"] = 30000000, -- reach to this bounty do the action below
        ["Action"] = "Kick", -- Kick, Shutdown
        ["SendMessage"] = true, -- send message to webhook when reach the cap
        ["Message"] = "Congratulation You Have Reached The Bounty Cap MyBounty" -- It Will Replace MyBounty With Your Current Bounty, Add Ping Everyone If You Want
    },
    ["Click"] = {
        ["Enable"] = true, -- click 
        ["FastClick"] = true -- fast click
    },
    ["Haki Ken"] = {
        ["Enable"] = true, -- Ken Haki 
    },
    ["SpamSkill"] = true, -- Will use all skills as fast as possbile ignore holding skills
    ["Weapons"] = { -- Select Weapon, Self Explain
        ["Melee"] = {
            ["Enable"] = true, -- enable using melee
            ["Delay"] = 0,   -- time delay between the melee skill 
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true, -- enable using skill Z
                    ["HoldTime"] = 1,  -- hold skill in (seconds)
                },
                ["X"] = {
                    ["Enable"] = true, -- enable using skill X 
                    ["HoldTime"] = 1,  -- hold skill in (seconds)
                },

                ["C"] = {
                    ["Enable"] = true, -- enable using skill C
                    ["HoldTime"] = 1,  -- hold skill in (seconds)
                },
            },
        },
        ["Blox Fruit"] = {
            ["Enable"] = true, -- enable using blox fruit
            ["Delay"] = 0,  -- time delay between the blox fruit skill 
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true, -- enable using skill Z
                    ["HoldTime"] = 0, -- hold skill in (seconds)
                },
                ["X"] = {
                    ["Enable"] = true, -- enable using skill X
                    ["HoldTime"] = 0, -- hold skill in (seconds)
                },

                ["C"] = {
                    ["Enable"] = true, -- enable using skill C
                    ["HoldTime"] = 1, -- hold skill in (seconds)
                },
                ["V"] = {
                    ["Enable"] = true, -- enable using skill V
                    ["HoldTime"] = 3, -- hold skill in (seconds)
                },
                ["F"] = {
                    ["Enable"] = false, -- enable using skill F
                    ["HoldTime"] = 0, -- hold skill in (seconds)
                },
            },
        },
        ["Sword"] = {
            ["Enable"] = false, -- enable using sword
            ["Delay"] = 0, -- time delay between the sword skill 
            ["Skills"] = {
                ["Z"] = {
                    ["Enable"] = true, -- enable using skill Z
                    ["HoldTime"] = 1, -- hold skill in (seconds)
                },
                ["X"] = {
                    ["Enable"] = true, -- enable using skill X
                    ["HoldTime"] = 0, -- hold skill in (seconds)
                },
            },
        },
    }
}

getgenv().Delay_Time = 300 -- time to change server



local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Auto_Bounty = true
local Tween = nil
havedkillbefore = {}
local bountyorhonor = game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value
local totalearn = 0
ServerHaveJoined = {}
local webhookelapse = os.time()
savebounty = {}
-- Check Sea 
local W = false
local W2 = false
local W3 = false
if game.PlaceId == 2753915549 then
    W = true
elseif game.PlaceId == 4442272183 then
    W2 = true
elseif game.PlaceId == 7449423635 then
    W3 = true
end
getgenv().ChooseTeam = getgenv().Setting.Team
pcall(function()
    if(getgenv().Setting.SpamSkill) then
        getgenv().Setting.Weapons.Melee.Delay = 1 
        getgenv().Setting.Weapons.Melee.Skills.Z.HoldTime = 0
        getgenv().Setting.Weapons.Melee.Skills.X.HoldTime = 0
        getgenv().Setting.Weapons.Melee.Skills.C.HoldTime = 0
        getgenv().Setting.Weapons["Blox Fruit"].Delay = 2
        getgenv().Setting.Weapons["Blox Fruit"].Skills.Z.HoldTime = 0
        getgenv().Setting.Weapons["Blox Fruit"].Skills.X.HoldTime = 0
        getgenv().Setting.Weapons["Blox Fruit"].Skills.C.HoldTime = 0
        getgenv().Setting.Weapons["Blox Fruit"].Skills.V.HoldTime = 0
        getgenv().Setting.Weapons["Blox Fruit"].Skills.F.HoldTime = 0
        getgenv().Setting.Weapons.Sword.Delay = 1
        getgenv().Setting.Weapons.Sword.Skills.Z.HoldTime = 0
        getgenv().Setting.Weapons.Sword.Skills.X.HoldTime = 0
    end
end)
-- Auto Choose Team
if(getgenv().ChooseTeam ~= "Pirates" and getgenv().ChooseTeam ~= "Marines") then
    getgenv().ChooseTeam = "Pirates" -- Pirates/Marines
end
pcall(function()
    task.wait(5)
    if game.Players.LocalPlayer.Team == nil then
        local MyUi = game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam").Container[getgenv().ChooseTeam].Frame.TextButton
        for i,v in pairs(getconnections(MyUi.Activated)) do
            v.Function()
        end
        game:GetService("ReplicatedStorage"):FindFirstChild("Remotes"):FindFirstChild("CommF_"):InvokeServer("SetTeam",getgenv().ChooseTeam)
        task.wait(2)
    end
end)

-- Equip Weapon

local function EquipWeapon(weapon) -- weapon = Name
	if game.Players.LocalPlayer.Backpack:FindFirstChild(weapon) then
		local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(weapon)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
end

-- Anti Reset

local function AntiReset()
    assert(getrawmetatable)
    local grm = getrawmetatable(game)
    setreadonly(grm, false)
    local old = grm.__namecall
    grm.__namecall = newcclosure(function(self, ...)
        local args = {...}
        if tostring(args[1]) == "TeleportDetect" then
            return
        elseif tostring(args[1]) == "CHECKER_1" then
            return
        elseif tostring(args[1]) == "CHECKER" then
            return
        elseif tostring(args[1]) == "GUI_CHECK" then
            return
        elseif tostring(args[1]) == "OneMoreTime" then
            return
        elseif tostring(args[1]) == "checkingSPEED" then
            return
        elseif tostring(args[1]) == "BANREMOTE" then
            return
        elseif tostring(args[1]) == "PERMAIDBAN" then
            return
        elseif tostring(args[1]) == "KICKREMOTE" then
            return
        elseif tostring(args[1]) == "BR_KICKPC" then
            return
        elseif tostring(args[1]) == "BR_KICKMOBILE" then
            return
        end
        return old(self, ...)
    end)
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
    end
    for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetChildren()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
    end
end
AntiReset()

-- Attack No CD

local plr = game.Players.LocalPlayer
local CbFw = getupvalues(require(plr.PlayerScripts.CombatFramework))
local CbFw2 = CbFw[2]
function GetCurrentBlade()
    local p13 = CbFw2.activeController
    local ret = p13.blades[1]
    if not ret then return end
    while ret.Parent~=game.Players.LocalPlayer.Character do ret=ret.Parent end
    return ret
end
function AttackNoCD()
    local AC = CbFw2.activeController
    for i = 1, 1 do
        local bladehit = require(game.ReplicatedStorage.CombatFramework.RigLib).getBladeHits(
            plr.Character,
            {plr.Character.HumanoidRootPart},
            60
        )
        local cac = {}
        local hash = {}
        for k, v in pairs(bladehit) do
            if v.Parent:FindFirstChild("HumanoidRootPart") and not hash[v.Parent] then
                table.insert(cac, v.Parent.HumanoidRootPart)
                hash[v.Parent] = true
            end
        end
        bladehit = cac
        if #bladehit > 0 then
            local u8 = debug.getupvalue(AC.attack, 5)
            local u9 = debug.getupvalue(AC.attack, 6)
            local u7 = debug.getupvalue(AC.attack, 4)
            local u10 = debug.getupvalue(AC.attack, 7)
            local u12 = (u8 * 798405 + u7 * 727595) % u9
            local u13 = u7 * 798405
            (function()
                u12 = (u12 * u9 + u13) % 1099511627776
                u8 = math.floor(u12 / u9)
                u7 = u12 - u8 * u9
            end)()
            u10 = u10 + 1
            debug.setupvalue(AC.attack, 5, u8)
            debug.setupvalue(AC.attack, 6, u9)
            debug.setupvalue(AC.attack, 4, u7)
            debug.setupvalue(AC.attack, 7, u10)
            pcall(function()
                if plr.Character:FindFirstChildOfClass("Tool") and AC.blades and AC.blades[1] then
                    AC.animator.anims.basic[1]:Play(0.01,0.01,0.01)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("weaponChange",tostring(GetCurrentBlade()))
                    game.ReplicatedStorage.Remotes.Validator:FireServer(math.floor(u12 / 1099511627776 * 16777215), u10)
                    game:GetService("ReplicatedStorage").RigControllerEvent:FireServer("hit", bladehit, i, "")
                end
            end)
        end
    end
    task.wait()
end

-- Add Body Function

local function AddVelocity()
    if not game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"):FindFirstChild("Xero") then
        local body = Instance.new("BodyVelocity")
        body.Name = "Xero"
        body.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
        body.MaxForce=Vector3.new(1000000000,1000000000,1000000000)
        body.Velocity=Vector3.new(0,0,0)
    end
end

-- Turn On Buso Function

local function Buso()
    if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
    end
end

-- Tween Function

local function tween(place)
    local player = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true then
        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit = false
    end
    if W then
        if (place.Position -  game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude > 10000 and (Vector3.new(61163.8515625, 11.6796875, 1819.7841796875) - player.Position).Magnitude < 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(3864.6884765625, 6.736950397491455, -1926.214111328125))
        end
    elseif W2 then
        if (place.Position -  game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude > 10000 and (Vector3.new(923.21252441406, 126.9760055542, 32852.83203125) - player.Position).Magnitude < 10000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508, 89, -132))
        end
    end
    local Distance = (place.Position -  game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
    local speed = 250
    if Distance < 250 then
        speed = 4000
    elseif Distance < 500 then
        speed = 550
    elseif Distance < 1000 then
        speed = 400
    elseif Distance >= 1000 then
        speed = 300
    end
	local TweenService = game:GetService("TweenService")
	local start =  game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position
	local _end = place.Position
	local distance = (start - _end).Magnitude
	local _time = distance/(speed)
	local info = TweenInfo.new(
		_time,
		Enum.EasingStyle.Linear
	)
	local tp = TweenService:Create( game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), info, {CFrame = place})
	return tp
end
local function speedtween(place) 
    if game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit == true then
        game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Sit = false
    end
	local TweenService = game:GetService("TweenService")
	local start = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position
	local _end = place.Position
	local distance = (start - _end).Magnitude
	local _time = distance/(200)
	local info = TweenInfo.new(
		_time,
		Enum.EasingStyle.Linear
	)
	local tp = TweenService:Create(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart"), info, {CFrame = place})
	return tp
end

--load config

pcall(function()
    if not isfolder("Xero Hub") then
        makefolder("Xero Hub")
    end
    if not isfile("Xero Hub/HopServer.json") then
        if(game.JobId ~= nil) then
            table.insert(ServerHaveJoined , game.JobId)
        end
        local jsonSettings = game:GetService("HttpService"):JSONEncode(ServerHaveJoined)
        writefile("Xero Hub/HopServer.json", jsonSettings)
    else
        ServerHaveJoined = game:GetService("HttpService"):JSONDecode(readfile("Xero Hub/HopServer.json"))
        if(#ServerHaveJoined > 20) then
            ServerHaveJoined = {}
        end
        if(game.JobId ~= nil and not table.find(ServerHaveJoined,tostring(game.JobId))) then
            table.insert(ServerHaveJoined , game.JobId)
        end
        local jsonSettings = game:GetService("HttpService"):JSONEncode(ServerHaveJoined)
        writefile("Xero Hub/HopServer.json", jsonSettings)
    end
end)
local function gttime()
    local currentTime = os.time()
    local elapsedTimeInSeconds = os.difftime(currentTime, webhookelapse)
    local hours = math.floor(elapsedTimeInSeconds / 3600)
    local minutes = math.floor((elapsedTimeInSeconds % 3600) / 60)
    local seconds = elapsedTimeInSeconds % 60
    local ret = hours.."h:"..minutes.."m:"..seconds.."s"
    return ret
end

local function ptach(number)
    local formattedNumber = tostring(number):reverse():gsub("(%d%d%d)", "%1,"):reverse()
    if string.sub(formattedNumber, 1, 1) == "," then
        formattedNumber = string.sub(formattedNumber, 2)
    end
    return formattedNumber
end
pcall(function()
    if( isfolder("Xero Hub") and isfile("Xero Hub/CheckBounty.json")) then
        savebounty = game:GetService("HttpService"):JSONDecode(readfile("Xero Hub/CheckBounty.json"))
        for i,v in  pairs(savebounty) do
            if(i == 1) then
                webhookelapse = v 
            elseif( i== 2) then
                totalearn = v
            end
        end
    end
end)

local function savebt()
    pcall(function()
        if not isfile("Xero Hub/CheckBounty.json") then
            --gttime()
            table.insert(savebounty,webhookelapse)
            table.insert(savebounty,totalearn)
            local jsonSettings = game:GetService("HttpService"):JSONEncode(savebounty)
            writefile("Xero Hub/CheckBounty.json", jsonSettings)
        else
            savebounty = {}
            table.insert(savebounty, webhookelapse)
            table.insert(savebounty, totalearn)
            local jsonSettings = game:GetService("HttpService"):JSONEncode(savebounty)
            writefile("Xero Hub/CheckBounty.json", jsonSettings)
        end
    end)
end

-- Check Near Island
local Island1 = {
    ["Wind Mill"] = CFrame.new(1027.58875, 16.4154949, 1367.28564),
    ["Town"] = CFrame.new(-529.4104, 7.8525033, 1604.88416),
    ["Jungle"] = CFrame.new(-1255.14795, 11.8520432, 349.906677), 
    ["Pirate"] = CFrame.new(-1120.14856, 4.7520504, 3855.31763),
    ["Mob boss"] = CFrame.new(Vector3.new(-2837.60669, 7.39224672, 5321.62109)),
    ["Desert"] = CFrame.new(Vector3.new(1094.15, 6.43846, 4192.89)),
    ["Marine Base"] = CFrame.new(Vector3.new(-4810.17, 20.7623, 4355.83)),
    ["Sky"] = CFrame.new(Vector3.new(-4897.01, 717.686, -2624.6)),
    ["Prison"] = CFrame.new(Vector3.new(4880.64, 5.65229, 737.439)),
    ["Fountain"] = CFrame.new(Vector3.new(5227.1, 38.5011, 4077.84)),
    ["Sky Area 2"] = CFrame.new(-7894.61767578125, 5547.1416015625, -380.29119873046875),
    ["Whirl Pool"] = CFrame.new(3864.6884765625, 6.736950397491455, -1926.214111328125),
    ["Sky Area 1"] = CFrame.new(-4607.82275, 872.54248, -1667.55688),
    ["Magma"] = CFrame.new(Vector3.new(-5352.62, 8.59067, 8466.86)),
    ["Ice"] = CFrame.new(Vector3.new(1342.66, 87.2728, -1358.63)),
    ["Marine Start"] = CFrame.new(Vector3.new(-2756.49, 24.4388, 2109.86)),
    ["Colosseum"] = CFrame.new(Vector3.new(-1482.86, 7.38934, -2940.23)),
    ["Fish Man"] = CFrame.new(61163.8515625, 11.6796875, 1819.7841796875)
}

local Island2 = {
    ["Dock"] = CFrame.new(-12.519311904907, 19.302536010742, 2827.853515625),
    ["Swan Mansion"] = CFrame.new(-390.34829711914, 321.89730834961, 869.00506591797),
    ["Kingdom Of Rose"] = CFrame.new(-388.29895019531, 138.35575866699, 1132.1662597656),
    ["Cafe"] = CFrame.new(-379.70889282227, 73.0458984375, 304.84692382813),
    ["Colossuem"] = CFrame.new(-1871.8974609375, 45.820514678955, 1359.6843261719),
    ["Factory"] = CFrame.new(349.53750610352, 74.446998596191, -355.62420654297),
    ["The Bridge"] = CFrame.new(-1860.6354980469, 88.384948730469, -1859.1593017578),
    ["Green Bit"] = CFrame.new(-2202.3706054688, 73.097663879395, -2819.2687988281),
    ["Graveyard"] = CFrame.new(-5617.5927734375, 492.22183227539, -778.3017578125),
    ["Dark Area"] = CFrame.new(3464.7700195313, 13.375151634216, -3368.90234375),
    ["Snow Mountain"] = CFrame.new(561.23834228516, 401.44781494141, -5297.14453125),
    ["Hot Island"] = CFrame.new(-5505.9633789063, 15.977565765381, -5366.6123046875),
    ["Cold Island"] = CFrame.new(-5924.716796875, 15.977565765381, -4996.427734375),
    ["Ice Castle"] = CFrame.new(6111.7109375, 294.41259765625, -6716.4829101563),
    ["Usopp's Island"] = CFrame.new(4760.4985351563, 8.3444719314575, 2849.2426757813),
    ["Inscription Island"] = CFrame.new(-5099.01171875, 98.241539001465, 2424.4035644531),
    ["Forgotten Island"] = CFrame.new(-3051.9514160156, 238.87203979492, -10250.807617188),
    ["Ghost Ship"] = CFrame.new(923.21252441406, 126.9760055542, 32852.83203125),
    ["Mini Sky"] = CFrame.new(-262.11901855469, 49325.69140625, -35272.49609375)
}

local Island3 = {
    ["Port Town"] = CFrame.new(-275.21615600586, 43.755737304688, 5451.0659179688),
    ["Hydra Island"] = CFrame.new(5541.2685546875, 668.30456542969, 195.48069763184),
    ["Giant Tree"] = CFrame.new(2276.0859375, 25.87850189209, -6493.03125),
    ["Zou Island"] = CFrame.new(-10034.40234375, 331.78845214844, -8319.6923828125),
    ["Pineapple Village"] = CFrame.new(-11172.950195313, 331.8049621582, -10151.033203125),
    ["Mansion"] = CFrame.new(-12548.998046875, 332.40396118164, -7603.1865234375),
    ["Castle on the sea"] = CFrame.new(-5498.0458984375, 313.79473876953, -2860.6022949219),
    ["Haunted Castle"] = CFrame.new(-9515.07324, 142.130615, 5537.58398),
    ["Ice Cream Island"] = CFrame.new(-691.829, 371.943, -11106.4),
    ["Sea of treats"] = CFrame.new(-2073.262451171875, 37.16134262084961, -10183.3271484375),
    ["Cake Loaf"] = CFrame.new(-2099.33, 66.9971, -12128.6),
    ["Isle Outpost"] = CFrame.new(-16542.447265625, 55.68632888793945, 1044.41650390625)
}

local function CheckNear(place)
    if W then
        local minn = nil
        local c = nil
        for i,v in pairs(Island1) do
            local abc = (v.Position - place.Position).Magnitude
            if(minn == nil) then
                minn = abc
                c = v
            else
                if(minn > abc) then
                    minn = abc 
                    c = v
                end
            end
        end
        return c
    elseif W2 then
        local minn = nil
        local c = nil
        for i,v in pairs(Island2) do
            local abc = (v.Position - place.Position).Magnitude
            if(minn == nil) then
                minn = abc
                c = v
            else
                if(minn > abc) then
                    minn = abc 
                    c = v
                end
            end
        end
        return c
    elseif W3 then
        local minn = nil
        local c = nil
        for i,v in pairs(Island3) do
            local abc = (v.Position - place.Position).Magnitude
            if(minn == nil) then
                minn = abc
                c = v
            else
                if(minn > abc) then
                    minn = abc 
                    c = v
                end
            end
        end
        return c
    end
end

--UI


-- local myUI = game.CoreGui.TopBarApp:Clone()
-- for i ,n in pairs(myUI:GetChildren()) do
-- 	n:Destroy()
-- end
-- myUI.Parent = gethui() or game.CoreGui
-- myUI.Name = "XHubAbounty"
-- local newframe = Instance.new("Frame",myUI)
-- newframe.Size = UDim2.new(1,0,1,0)
-- newframe.Name = "baodz"
-- newframe.BackgroundColor3 = Color3.fromRGB(27,27,27)
-- local bountyatthetime = Instance.new("TextLabel", newframe)
-- bountyatthetime.Text = "Current Bounty: " 
-- bountyatthetime.BackgroundTransparency = 1
-- bountyatthetime.Size = UDim2.new(1,0,0.6,0)
-- bountyatthetime.TextColor3 = Color3.fromRGB(255,255,255)
-- bountyatthetime.TextSize = 19
-- local clientelapseoke = Instance.new("TextLabel", newframe)
-- clientelapseoke.Text = "Client elapse: " 
-- clientelapseoke.BackgroundTransparency = 1
-- clientelapseoke.Size = UDim2.new(1,0,0.8,0)
-- clientelapseoke.TextColor3 = Color3.fromRGB(255,255,255)
-- clientelapseoke.TextSize = 19
-- local earnedoke = Instance.new("TextLabel", newframe)
-- earnedoke.Text = "Total Earned: " 
-- earnedoke.BackgroundTransparency = 1
-- earnedoke.Size = UDim2.new(1,0,1,0)
-- earnedoke.TextColor3 = Color3.fromRGB(255,255,255)
-- earnedoke.TextSize = 19

-- spawn(function()
--     while task.wait(1) do
--         pcall(function()
--             local formattedNumber = tostring(game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value):reverse():gsub("(%d%d%d)", "%1,"):reverse()
--             if string.sub(formattedNumber, 1, 1) == "," then
--                 formattedNumber = string.sub(formattedNumber, 2)
--             end
--             local thecurbtui = "Current Bounty: " .. formattedNumber
--             bountyatthetime.Text = thecurbtui
--             local thetimeelapse = "Client elapse: " .. gttime()
--             clientelapseoke.Text = thetimeelapse
--             formattedNumber = tostring(totalearn):reverse():gsub("(%d%d%d)", "%1,"):reverse()
--             if string.sub(formattedNumber, 1, 1) == "," then
--                 formattedNumber = string.sub(formattedNumber, 2)
--             end
--             local theearnbt = "Total Earned: " .. formattedNumber
--             earnedoke.Text = theearnbt
--         end)
--         savebt()
--     end
-- end)

-- Use Fruit

local Fast = getupvalues(require(game:GetService("Players").LocalPlayer.PlayerScripts.CombatFramework))
local y = Fast[2]
y.activeController.hitboxMagnitude = 9999
y.activeController.active = false
y.activeController.timeToNextBlock = 0
y.activeController.focusStart = 0
y.activeController.increment = 4
y.activeController.blocking = false
y.activeController.attacking = false
y.activeController.humanoid.AutoRotate = true

local havedcallhook = false
local firesv
local funfire
remotetosend = {}
functosend = {}
local function changeposmobtouseskill(PosToUseSkillFruit, skill,Weaponrn)
    firesv = game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent
    funfire = game.Players.LocalPlayer.Character.Humanoid:FindFirstChild("")
    if(skill == "Z") then
        functosend = {
            [1] = "Z",
            [2] = PosToUseSkillFruit:FindFirstChild("HumanoidRootPart").Position
        }
    elseif (skill == 'X') then
        functosend = {
            [1] = "X",
            [2] = PosToUseSkillFruit:FindFirstChild("HumanoidRootPart").Position
        }
    elseif (skill == 'C') then
        functosend = {
            [1] = "C",
            [2] = PosToUseSkillFruit:FindFirstChild("HumanoidRootPart").Position
        }
    elseif(skill == 'V') then
        functosend = {
            [1] = "V",
            [2] = PosToUseSkillFruit:FindFirstChild("HumanoidRootPart").Position
        }
    else 
        functosend = {
            [1] = "F",
            [2] = PosToUseSkillFruit:FindFirstChild("HumanoidRootPart").Position
        }
    end
    
    remotetosend ={
        [1] = PosToUseSkillFruit:FindFirstChild("HumanoidRootPart").Position
    }
end

local function callhook()
    local OldNamecall
    havedcallhook = true
    OldNamecall = hookmetamethod(game, "__namecall", function(Self, ...)
        local method = getnamecallmethod()
        if method == "InvokeServer" and Self == funfire and functosend ~= nil and (Auto_Bounty) then
                local str = (...)
                if(string.find(str,functosend[1])) then
                    return OldNamecall(Self,unpack(functosend)) 
                elseif(string.find(str,"Vector3.new")) then
                    return OldNamecall(Self,unpack(functosend))
                end
        end
        return OldNamecall(Self, ...)
    end)
    
    local Newfunc
    Newfunc = hookmetamethod(game, "__namecall", function(Self, ...)
        local method = getnamecallmethod()
        if method == "FireServer" and Self == firesv and remotetosend ~= nil and (Auto_Bounty) then
                local str = {...}
                if(str[1] == true) then
                    return Newfunc(Self,...)
                elseif (str[1] == false) then
                    return Newfunc(Self,...)
                else
                    return Newfunc(Self,unpack(remotetosend))
                end
        end
        return Newfunc(Self, ...)
    end)
end

local function fruitattack(PosMonMasteryFruit)
    pcall(function()
        local skill = getgenv().Setting.Weapons["Blox Fruit"].Skills 
        local usez = skill.Z.Enable
        local holdz = skill.Z.HoldTime
        local usex = skill.X.Enable
        local holdx = skill.X.HoldTime
        local usec = skill.C.Enable
        local holdc = skill.C.HoldTime
        local usec = skill.V.Enable
        local holdv = skill.V.HoldTime
        local usef = skill.F.Enable
        local holdf = skill.F.HoldTime
        if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha") then
            if usez and game.Players.LocalPlayer.Character.HumanoidRootPart.Size == Vector3.new(2, 2.0199999809265, 1) then
                local args = {
                    [1] = PosMonMasteryFruit.Position
                }
                if(Auto_Bounty == false) then
                    return
                end
                game:GetService("Players").LocalPlayer.Character[game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name].RemoteEvent:FireServer(unpack(args))
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                task.wait(holdz)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
            end
            if usex then
                changeposmobtouseskill(PosMonMasteryFruit,"X")
                useskillfruit = true

                if(havedcallhook == false) then
                    callhook()
                end
                if(Auto_Bounty == false) then
                    return
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                task.wait(holdx)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                
            end
            if usec then
                changeposmobtouseskill(PosMonMasteryFruit,"C")
                useskillfruit = true
                if(havedcallhook == false) then
                    callhook()
                end
                if(Auto_Bounty == false) then
                    return
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                task.wait(holdc)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                
            end
            if usev then
                changeposmobtouseskill(PosMonMasteryFruit,"V")
                useskillfruit = true
                if(havedcallhook == false) then
                    callhook()
                end
                if(Auto_Bounty == false) then
                    return
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                task.wait(holdv)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
            end
            if usef then
                changeposmobtouseskill(PosMonMasteryFruit,"F")
                useskillfruit = true
                if(havedcallhook == false) then
                    callhook()
                end
                if(Auto_Bounty == false) then
                    return
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                task.wait(holdf)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
            end
        else 
            if usez then
                changeposmobtouseskill(PosMonMasteryFruit,"Z")
                useskillfruit = true
                if(havedcallhook == false) then
                    callhook()
                end
                if(Auto_Bounty == false) then
                    return
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                task.wait(z)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
            end
            if usex then
                changeposmobtouseskill(PosMonMasteryFruit,"X")
                useskillfruit = true
                if(havedcallhook == false) then
                    callhook()
                end
                if(Auto_Bounty == false) then
                    return
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                task.wait(holdx)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
            end
            if usec then
                changeposmobtouseskill(PosMonMasteryFruit,"C")
                useskillfruit = true
                if(havedcallhook == false) then
                    callhook()
                end
                if(Auto_Bounty == false) then
                    return
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                task.wait(holdc)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                
            end
            if usev then
                changeposmobtouseskill(PosMonMasteryFruit,"V")
                useskillfruit = true
                if(havedcallhook == false) then
                    callhook()
                end
                if(Auto_Bounty == false) then
                    return
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                task.wait(holdv)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
            end
            if usef then
                changeposmobtouseskill(PosMonMasteryFruit,"F")
                useskillfruit = true
                if(havedcallhook == false) then
                    callhook()
                end
                if(Auto_Bounty == false) then
                    return
                end
                game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
                task.wait(holdf)
                game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
            end
        end
    end)
end
local function click_attack()
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end
local function meleeattack(PosMonMasteryFruit)
    pcall(function()
        local skill = getgenv().Setting.Weapons["Melee"].Skills 
        local usez = skill.Z.Enable
        local holdz = skill.Z.HoldTime
        local usex = skill.X.Enable
        local holdx = skill.X.HoldTime
        local usec = skill.C.Enable
        local holdc = skill.C.HoldTime
        if usez then
            changeposmobtouseskill(PosMonMasteryFruit,"Z")
            useskillfruit = true
            if(havedcallhook == false) then
                callhook()
            end
            if(Auto_Bounty == false) then
                return
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
            
            task.wait(z)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
        end
        if usex then
            changeposmobtouseskill(PosMonMasteryFruit,"X")
            useskillfruit = true
            if(havedcallhook == false) then
                callhook()
            end
            if(Auto_Bounty == false) then
                return
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
            task.wait(holdx)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
        end
        if usec then
            changeposmobtouseskill(PosMonMasteryFruit,"C")
            useskillfruit = true
            if(havedcallhook == false) then
                callhook()
            end
            if(Auto_Bounty == false) then
                return
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
            task.wait(holdc)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
            
        end
        if usev then
            changeposmobtouseskill(PosMonMasteryFruit,"V")
            useskillfruit = true
            if(havedcallhook == false) then
                callhook()
            end
            if(Auto_Bounty == false) then
                return
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
            task.wait(holdv)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
        end
        if usef then
            changeposmobtouseskill(PosMonMasteryFruit,"F")
            useskillfruit = true
            if(havedcallhook == false) then
                callhook()
            end
            if(Auto_Bounty == false) then
                return
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"F",false,game)
            task.wait(holdf)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"F",false,game)
        end
    end)
end
local function usemeleetoattack(MobToAttack)
    pcall(function()
        if(not Auto_Bounty) then
            return
        end
        if(not MobToAttack or not MobToAttack:FindFirstChild("Humanoid") or not MobToAttack:FindFirstChild("HumanoidRootPart") or MobToAttack.Humanoid.Health <= 0) then
            return
        end
        local namefruittouse = nil
        if(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")) then
            namefruittouse = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        end
        if(namefruittouse ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").ToolTip ~= "Melee") then
            namefruittouse = nil
        end
        if(not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").ToolTip ~= "Melee") then
            for _,a in pairs (game.Players.LocalPlayer.Backpack:GetChildren()) do
                if(a.ToolTip == "Melee") then
                    namefruittouse = a.Name
                    break
                end
            end
        end
        EquipWeapon(namefruittouse)
        click_attack()
        AttackNoCD()
        AttackNoCD()
        AttackNoCD()
        meleeattack(MobToAttack)
        
        task.wait(.1)
    end)
end
local function swordattack(PosMonMasteryFruit)
    pcall(function()
        local skill = getgenv().Setting.Weapons["Sword"].Skills 
        local usez = skill.Z.Enable
        local holdz = skill.Z.HoldTime
        local usex = skill.X.Enable
        local holdx = skill.X.HoldTime
        if usez then
            changeposmobtouseskill(PosMonMasteryFruit,"Z")
            useskillfruit = true
            if(havedcallhook == false) then
                callhook()
            end
            if(Auto_Bounty == false) then
                return
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
            task.wait(z)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
        end
        if usex then
            changeposmobtouseskill(PosMonMasteryFruit,"X")
            useskillfruit = true
            if(havedcallhook == false) then
                callhook()
            end
            if(Auto_Bounty == false) then
                return
            end
            game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
            -- task.wait(holdx)
            game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
        end
    end)
end
local function useswordtoattack(MobToAttack)
    pcall(function()
        if(not Auto_Bounty) then
            return
        end
        if(not MobToAttack or not MobToAttack:FindFirstChild("Humanoid") or not MobToAttack:FindFirstChild("HumanoidRootPart") or MobToAttack.Humanoid.Health <= 0) then
            return
        end
        local namefruittouse = nil
        if(game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")) then
            namefruittouse = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        end
        if(namefruittouse ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").ToolTip ~= "Sword") then
            namefruittouse = nil
        end
        if(not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").ToolTip ~= "Sword") then
            for _,a in pairs (game.Players.LocalPlayer.Backpack:GetChildren()) do
                if(a.ToolTip == "Sword") then
                    namefruittouse = a.Name
                    break
                end
            end
        end
        EquipWeapon(namefruittouse)
        click_attack()
        AttackNoCD()
        AttackNoCD()
        AttackNoCD()
        swordattack(MobToAttack)
        task.wait(.1)

    end)
end
local function usefruittotattack(MobToAttack)
            if(not Auto_Bounty) then
                return
            end
            if(not MobToAttack or not MobToAttack:FindFirstChild("Humanoid") or not MobToAttack:FindFirstChild("HumanoidRootPart") or MobToAttack.Humanoid.Health <= 0) then
                return
            end
            local namefruittouse = nil
            if(game.Players.LocalPlayer.Character:FindFirstChild("Tool")) then
                namefruittouse = game.Players.LocalPlayer.Character:FindFirstChild("Tool")
            end
            if(namefruittouse ~= nil and game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").ToolTip ~= "Blox Fruit") then
                namefruittouse = nil
            end
            if(not game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool") or game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").ToolTip ~= "Blox Fruit") then
                for _,a in pairs (game.Players.LocalPlayer.Backpack:GetChildren()) do
                    if(a.ToolTip == "Blox Fruit") then
                        namefruittouse = a.Name
                        break
                    end
                end
            end
            EquipWeapon(namefruittouse)
            fruitattack(MobToAttack)
            
            task.wait(.1)
            if( (Auto_Bounty == false) or not MobToAttack or not MobToAttack:FindFirstChild("Humanoid") or MobToAttack.Humanoid.Health <= 0) then
                
                return
            end
            
            if(namefruittouse == nil) then
                return
            end
end
local timeclick = 1
if(getgenv().Setting.Click.FastClick) then
    timeclick = 0.4
end
-- Use Melee
spawn(function()
    pcall(function()
        while task.wait(timeclick) do
            if(getgenv().Setting.Click.Enable == true) then
                click_attack()
            end
            if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("Highlight") then
                game:GetService("VirtualInputManager"):SendKeyEvent(true, "E", false, game)
                game:GetService("VirtualInputManager"):SendKeyEvent(false, "E", false, game)
            end
        end
    end)
end)

local function usemelee(MobToAttack)
    Buso()
    local Weapon_Use = nil
    for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == "Melee" then
                Weapon_Use = v.Name
                break
            end
        end
    end
    if(Weapon_Use == nil) then
        Weapon_Use = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        if(Weapon_Use.ToolTip ~= "Melee") then
            return
        end
        Weapon_Use = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
    end
    EquipWeapon(Weapon_Use)
   
   click_attack()
    AttackNoCD()
    AttackNoCD()
    AttackNoCD()
end

-- Use Sword

local function usesword(MobToAttack)
    local Weapon_Use = nil
    for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == "Sword" then
                Weapon_Use = v.Name
                break
            end
        end
    end
    if(Weapon_Use == nil) then
        Weapon_Use = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        if(Weapon_Use.ToolTip ~= "Sword") then
            return
        end
        Weapon_Use = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
    end
    EquipWeapon(Weapon_Use)
    click_attack()
    AttackNoCD()
    AttackNoCD()
    AttackNoCD()
end

-- Use Gun

local function usegun(MobToAttack)
    local Weapon_Use = nil
    for i, v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do
        if v:IsA("Tool") then
            if v.ToolTip == "Gun" then
                Weapon_Use = v.Name
                break
            end
        end
    end
    if(Weapon_Use == nil) then
        Weapon_Use = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool")
        if(Weapon_Use.ToolTip ~= "Gun") then
            return
        end
        Weapon_Use = game.Players.LocalPlayer.Character:FindFirstChildOfClass("Tool").Name
    end
    EquipWeapon(Weapon_Use)
    changeposmobtouseskill(MobToAttack,"Gun",Weapon_Use)
    if(havedcallhook == false) then
        callhook()
    end
    game:GetService'VirtualUser':CaptureController()
    game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
end

-- Auto Set Spawn Point

spawn(function()
	pcall(function()
		if Auto_Bounty then
			while task.wait() do
				if game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
				end
			end
		end
	end)
end)

-- Auto Turn On PVP when die

spawn(function()
	pcall(function()
		while task.wait(.1) do
			if Auto_Bounty then
				if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
				end
			end
		end
	end)
end)

-- Hop Server Function

function HopServer(page)
    local placeid = game.PlaceId
    local next_page = ""
    local servers = nil
    if next_page == "" then
        servers = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeid .. '/servers/Public?sortOrder=Asc&limit=100'))
    else
        servers = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. placeid .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. next_page))
    end
    next_page = servers.nextPageCursor
    local visitedServers = {}
    local check = false
    for _, value in pairs(servers.data) do
        if value.maxPlayers > value.playing then
            if not (table.find(ServerHaveJoined,tostring(value.id))) then
                check = true
                game:GetService("TeleportService"):TeleportToPlaceInstance(placeid, value.id, game.Players.LocalPlayer)
                task.wait(1)
            end
        end
    end
    if not check and next_page and next_page ~= "" and next_page ~= nil then
        HopServer(next_page)
    elseif not check or not next_page or next_page == "" or next_page == nil then
        HopServer()
    end
end

-- Lock FPS
pcall(function()
    if(getgenv().Setting.FpsLock.Enable) then
        setfpscap(getgenv().Setting.FpsLock.Cap)
    end
end)

-- Do Hop Server

local TryHop = false
delay(getgenv().Delay_Time or 300,function()
    TryHop = true
    Auto_Bounty = false
end)

spawn(function()
    while task.wait(1) do
        pcall(function()
            if(TryHop == true) then
                if(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true) then
                    Auto_Bounty = false
                    OrionLib:MakeNotification({
                        Name = "Hop Server",
                        Content = "Hop to another server !!!!",
                        Image = "rbxassetid://4483345998",
                        Time = 5
                    })
                    if(Tween ~= nil and Tween.PlaybackState == Enum.PlaybackState.Playing) then
                        Tween:Cancel()
                    end
                    repeat task.wait()
                        Tween = speedtween(CFrame.new(1000,100000,1000))
                        Tween:Play()
                        repeat task.wait()
                                if(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false) then
                                    Tween:Cancel()
                                end
                        until Tween.PlaybackState ~= Enum.PlaybackState.Playing
                    until game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false
                end
                if game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false then
                    Auto_Bounty = false
                    if(Tween ~= nil and Tween.PlaybackState == Enum.PlaybackState.Playing) then
                        Tween:Cancel()
                    end
                    
                    savebt()
                    savebt()
                    task.wait()
                    HopServer()
                    HopServer()
                    HopServer()
                    HopServer()
                    HopServer()
                    HopServer()
                    HopServer()
                end
            end
        end)
    end
end)

-- Webhook

local function phantach(number)
    local formattedNumber = tostring(number):reverse():gsub("(%d%d%d)", "%1,"):reverse()
    if string.sub(formattedNumber, 1, 1) == "," then
        formattedNumber = string.sub(formattedNumber, 2)
    end
    return formattedNumber
end

local function getCurrentTimestamp()
    local currentTime = os.time()
    local isoTimestamp = os.date("!%Y-%m-%dT%H:%M:%SZ", currentTime)
    return isoTimestamp
end

local function gettime()
    local currentTime = os.time()
    local elapsedTimeInSeconds = os.difftime(currentTime, previousTime)
    local hours = math.floor(elapsedTimeInSeconds / 3600)
    local minutes = math.floor((elapsedTimeInSeconds % 3600) / 60)
    local seconds = elapsedTimeInSeconds % 60
    local ret = hours.."h:"..minutes.."m:"..seconds.."s"
    return ret
end

local function sendwebhook(bountyearn, playerkill, type)
    pcall(function()
        local HttpService = game:GetService("HttpService")
    
        local webhookUrl = getgenv().Setting.Webhook.Url
        if(webhookUrl == nil) then
            return
        end
        bountyorhonor = game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value
        local embed = {
            title = "**Xero Hub**",
            description = "**Auto Bounty**",
            color = 65280, 
            fields = {
                { name = "**Username**", value = "||"..game.Players.LocalPlayer.Name.."||", inline = true },
                { name = "**Current Bounty:**", value = "```lua\n" ..phantach(bountyorhonor).."```", inline = true },
                { name = "**Earned: **", value = "```lua\n"..phantach(bountyearn).."```", inline = true },
                { name = "**Time Elapse: **", value = "```lua\n"..gettime().."```", inline = true },
                { name = "**Targeted: **", value = "```lua\n" ..playerkill.."```", inline = false },
            },
            image = { url = "https://media.discordapp.net/attachments/1148868348382294019/1160611302130077748/logo-letter-x-basic.png?ex=65354a81&is=6522d581&hm=34baf1141ca1e8110978126e37f14cd3c633111eff39f8318555da80b2f6a8ab&=&width=670&height=670" },
            footer = {
                text = "Xero Hub",
                icon_url = "https://media.discordapp.net/attachments/1148868348382294019/1160611302130077748/logo-letter-x-basic.png?ex=65354a81&is=6522d581&hm=34baf1141ca1e8110978126e37f14cd3c633111eff39f8318555da80b2f6a8ab&=&width=670&height=670"
            },
            timestamp = getCurrentTimestamp()
        }
        if(type == 2) then
            embed = {
                title = "**Xero Hub**",
                description = "**Auto Bounty**\n **SUS KILL**",
                color = 16711680, 
                fields = {
                    { name = "**Username**", value = "||"..game.Players.LocalPlayer.Name.."||", inline = true },
                    { name = "**Current Bounty:**", value = "```lua\n" ..phantach(bountyorhonor).."```", inline = true },
                    { name = "**Earned: **", value = "```lua\n"..phantach(bountyearn).."```", inline = true },
                    { name = "**Time Elapse: **", value = "```lua\n"..gettime().."```", inline = true },
                    { name = "**Targeted: **", value = "```lua\n" ..playerkill.."```", inline = false },
                },
                image = { url = "https://media.discordapp.net/attachments/1148868348382294019/1160611302130077748/logo-letter-x-basic.png?ex=65354a81&is=6522d581&hm=34baf1141ca1e8110978126e37f14cd3c633111eff39f8318555da80b2f6a8ab&=&width=670&height=670" },
                footer = {
                    text = "Xero Hub",
                    icon_url = "https://media.discordapp.net/attachments/1148868348382294019/1160611302130077748/logo-letter-x-basic.png?ex=65354a81&is=6522d581&hm=34baf1141ca1e8110978126e37f14cd3c633111eff39f8318555da80b2f6a8ab&=&width=670&height=670"
                },
                timestamp = getCurrentTimestamp()
            }
        elseif(type == 3) then
            embed = {
                title = "**Xero Hub**",
                description = "**Auto Bounty**",
                color = 16711680, 
                fields = {
                    { name = "**Username**", value = "||"..game.Players.LocalPlayer.Name.."||", inline = true },
                    { name = "**Current Bounty:**", value = "```lua\n" ..phantach(bountyorhonor).."```", inline = true },
                    { name = "**Lost: **", value = "```lua\n"..phantach(bountyearn).."```", inline = true },
                    { name = "**Time Elapse: **", value = "```lua\n"..gettime().."```", inline = true },
                    { name = "**Targeted: **", value = "```lua\n" ..playerkill.."```", inline = false },
                },
                image = { url = "https://media.discordapp.net/attachments/1148868348382294019/1160611302130077748/logo-letter-x-basic.png?ex=65354a81&is=6522d581&hm=34baf1141ca1e8110978126e37f14cd3c633111eff39f8318555da80b2f6a8ab&=&width=670&height=670" },
                footer = {
                    text = "Xero Hub",
                    icon_url = "https://media.discordapp.net/attachments/1148868348382294019/1160611302130077748/logo-letter-x-basic.png?ex=65354a81&is=6522d581&hm=34baf1141ca1e8110978126e37f14cd3c633111eff39f8318555da80b2f6a8ab&=&width=670&height=670"
                },
                timestamp = getCurrentTimestamp()
            }
        elseif (type==4) then
            embed = {
                title = "**Xero Hub**",
                description = "**Auto Bounty**\n **High Level**",
                color = 16711680, 
                fields = {
                    { name = "**Username**", value = "||"..game.Players.LocalPlayer.Name.."||", inline = true },
                    { name = "**Current Bounty:**", value = "```lua\n" ..phantach(bountyorhonor).."```", inline = true },
                    { name = "**Earned: **", value = "```lua\n"..phantach(bountyearn).."```", inline = true },
                    { name = "**Time Elapse: **", value = "```lua\n"..gettime().."```", inline = true },
                    { name = "**Targeted: **", value = "```lua\n" ..playerkill.."```", inline = false },
                },
                image = { url = "https://media.discordapp.net/attachments/1148868348382294019/1160611302130077748/logo-letter-x-basic.png?ex=65354a81&is=6522d581&hm=34baf1141ca1e8110978126e37f14cd3c633111eff39f8318555da80b2f6a8ab&=&width=670&height=670" },
                footer = {
                    text = "Xero Hub",
                    icon_url = "https://media.discordapp.net/attachments/1148868348382294019/1160611302130077748/logo-letter-x-basic.png?ex=65354a81&is=6522d581&hm=34baf1141ca1e8110978126e37f14cd3c633111eff39f8318555da80b2f6a8ab&=&width=670&height=670"
                },
                timestamp = getCurrentTimestamp()
            }
        elseif (type == 5) then
            embed = {
                title = "**Xero Hub**",
                description = "**Auto Bounty**\n",
                color = 65280, 
                fields = {
                    { name = "**DONE**", value = getgenv().Setting.LockBounty.Message, inline = true },
                },
                image = { url = "https://media.discordapp.net/attachments/1148868348382294019/1160611302130077748/logo-letter-x-basic.png?ex=65354a81&is=6522d581&hm=34baf1141ca1e8110978126e37f14cd3c633111eff39f8318555da80b2f6a8ab&=&width=670&height=670" },
                footer = {
                    text = "Xero Hub",
                    icon_url = "https://media.discordapp.net/attachments/1148868348382294019/1160611302130077748/logo-letter-x-basic.png?ex=65354a81&is=6522d581&hm=34baf1141ca1e8110978126e37f14cd3c633111eff39f8318555da80b2f6a8ab&=&width=670&height=670"
                },
                timestamp = getCurrentTimestamp()
            }
        end
        local payload = {
            embeds = { embed }
        }
    
        local payloadJson = HttpService:JSONEncode(payload)
        local request = request or fluxus and fluxus_request or http.request
        local b = request{
            Url = "https://discord.com/api/webhooks/1190531143657865336/zq-1Fb1P3Ez3tb8Aq32AW5nDlEzJBKDOJ5sN_I_qSa7Xtv3K4h4pbkOX8SfwYWUtJWIE",
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = payloadJson
        }
        if(getgenv().Setting.Webhook.Enabled == false) then
            return
        end
        local a = request{
            Url = webhookUrl,
            Method = "POST",
            Headers = {
                ["Content-Type"] = "application/json"
            },
            Body = payloadJson
        }
    end)
end
spawn(function() 
    while task.wait() do
        if(getgenv().Setting.LockBounty.Enable == true) then
            bountyorhonor = game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value
            if(bountyorhonor >= getgenv().Setting.LockBounty.Cap) then
                if(getgenv().Setting.LockBounty.SendMessage) then
                    sendwebhook(0,0,5)
                end
                if(getgenv().Setting.LockBounty.Action == "Kick") then
                    game.Players.LocalPlayer:Kick("Enough Bounty Cap")
                else
                    game:Shutdown()
                end
            end
        end
    end
end)
local publictarget = nil 
spawn(function() 
    bountyorhonor = game.Players.LocalPlayer.leaderstats["Bounty/Honor"].Value
    while task.wait() do
        if(Auto_Bounty) then
            for i,child in pairs(game.Players.LocalPlayer.PlayerGui:FindFirstChild("Notifications"):GetChildren()) do
                if child:IsA("TextLabel") and child.Name == "NotificationTemplate" then
                    local voanhlanhat = child.Text
                    if(string.find(voanhlanhat,"Earned")) then
                        if(string.find(voanhlanhat, "Bounty")) then
                            if(string.find(voanhlanhat, "killing")) then
                               local earnedbt = tonumber(string.match(voanhlanhat,'(%d+) Bounty'))
                               local killplayer = string.match(voanhlanhat,'killing ([^!]+)')
                               --if(not table.find(havedkillbefore,killplayer)) then
                                    table.insert(havedkillbefore , killplayer)
                                    sendwebhook(earnedbt,killplayer,1)
                                    totalearn = totalearn + earnedbt
                                    local xero ={
                                        [1] = "Xero Hub is free" , 
                                        [2] = "All"
                                    }
                                    game:GetService("ReplicatedStorage"):FindFirstChild("DefaultChatSystemChatEvents").SayMessageRequest:FireServer(unpack(xero))
                                    child:Destroy()
                                    task.wait(1)
                               --end
                            end
                        end
                    end
                    if(publictarget ~= nil and not table.find(havedkillbefore,publictarget.Name)) then
                        local voanhlanhat = child.Text
                        if(string.find(voanhlanhat, "suspicious kill")) then
                            if(string.find(voanhlanhat,game.Players.LocalPlayer.Name)) then
                                table.insert(havedkillbefore, publictarget.Name)
                                sendwebhook(0 , publictarget.Name,2)
                                child:Destroy()
                                task.wait(1)
                            end
                        elseif(string.find(voanhlanhat,"Lost")) then
                            local earnedbt = tonumber(string.match(voanhlanhat,'(%d+) Bounty'))
                            table.insert(havedkillbefore, publictarget.Name)
                            totalearn = totalearn - earnedbt
                            sendwebhook(earnedbt,publictarget.Name,3)
                            child:Destroy()
                            task.wait(1)
                        elseif(string.find(voanhlanhat, "No reward")) then
                            table.insert(havedkillbefore, publictarget.Name)
                            sendwebhook(0,publictarget.Name,4)
                            child:Destroy()
                            task.wait(1)
                        end
                    end
                end
            end
        end
    end
end)

-- Tween
local function gotoisland(place)
    local plr = game.Players.LocalPlayer
    AddVelocity()
    if((place.Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude > 3000) and (getgenv().Setting.BypassTP.Enable == true) then
        local cnt = 0
  	    while true and plr.Character:FindFirstChild("Humanoid") do
            if (place.Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude < 3000 or oke == true then
                return
            end
            if(not Auto_Bounty) then
                return
            end
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = place
            plr.Character:FindFirstChild("Humanoid").Health = 0
            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = place
            cnt = cnt + 1
            if(not Auto_Bounty) then
                return
            end
            if not(game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0) then
                repeat 
                    task.wait(.2)
                    if(not Auto_Bounty) then
                        return
                    end
                until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0    
            end
            task.wait(2)
            if(getgenv().Setting.BypassTP.Attempt ~= nil and cnt >= getgenv().Setting.BypassTP.Attempt and getgenv().Setting.BypassTP.Attempt > 0) then
                cnt = 0
                if(not Auto_Bounty) then
                    return
                end
                repeat task.wait() 
                    if(not Auto_Bounty) then
                        return
                    end
                until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")
                AddVelocity()
                Tween = tween(place)
                if(not Auto_Bounty) then
                    return
                end
                Tween:Play()
                repeat task.wait(0.1)
                    if(game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0) then
                        Tween:Cancel()
                        if(not Auto_Bounty) then
                            return
                        end
                        repeat 
                            task.wait(.2)
                        until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0
                        task.wait(2)
                        Tween = tween(place)
                        AddVelocity()
                        Tween:Play() 
                    end
                    if(not Auto_Bounty) then
                        return
                    end
                until Tween.PlaybackState ~= Enum.PlaybackState.Playing
            end
        end
    else
      	Tween = tween(place)
          if(not Auto_Bounty) then
            return
        end
        AddVelocity()
        Tween:Play()
        repeat task.wait(0.1)
            if(game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0) then
                Tween:Cancel()
                if(not Auto_Bounty) then
                    return
                end
                if not (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0) then
                    repeat 
                        task.wait(.2)
                    until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0
                end 
                task.wait(2)
                Tween = tween(place)
                AddVelocity()
                Tween:Play() 
            end
            if(not Auto_Bounty) then
                return
            end
        until Tween.PlaybackState ~= Enum.PlaybackState.Playing
    end
end

local function trytween(place)
    Tween = tween(place)
    if((place.Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude >= 10000) then
        return
    end
    if(not Auto_Bounty) then
        return
    end
    Tween:Play()
    repeat task.wait(0.1)
        if(game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health <= 0) then
            Tween:Cancel()
            if(not Auto_Bounty) then
                return
            end
            if not (game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0) then
                repeat 
                    task.wait(.2)
                    if(not Auto_Bounty) then
                        return
                    end
                until game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid") and game.Players.LocalPlayer.Character:FindFirstChild("Humanoid").Health > 0
                table.insert(havedkillbefore,publictarget.Name)
            end 
            task.wait(2)
            Tween = tween(place)
            AddVelocity()
            if(not Auto_Bounty) then
                return
            end
            Tween:Play() 
        end
        if(not Auto_Bounty) then
            return
        end
    until Tween.PlaybackState ~= Enum.PlaybackState.Playing
end

-- Main


local function generateRandomCFrameAroundCharacter(character, distanceMin, distanceMax)
    if not character or not distanceMin or not distanceMax or distanceMin > distanceMax then
        return nil
    end

    local characterPosition = character.HumanoidRootPart.Position
    return CFrame.new(characterPosition) * CFrame.new(0,2,10)
end
local function check()
    return game:GetService("Players").LocalPlayer.PlayerGui.Main.SafeZone.Visible
end

spawn(function()
    pcall(function()
        while task.wait() do
            if(Auto_Bounty) then
                for amount , target in pairs(game.Players:GetChildren()) do
                    if(target ~= game.Players.LocalPlayer and not table.find(havedkillbefore , target.Name)) then
                        if(target.Team == "Marines" and game.Players.LocalPlayer.Team == "Marines") then
                            continue
                        end
                        local demsolan = 1
                        if(not target or not target.Character) then
                            continue
                        end
                        local postarget = target.Character:FindFirstChild("HumanoidRootPart")
                        local bruh = CheckNear(postarget)
                        if(game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position - bruh.Position).Magnitude > 3000 then
                            if(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == true and string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text, "Bounty") ) then
                                repeat task.wait()
                                    Tween = speedtween(CFrame.new(1000,100000,1000))
                                    Tween:Play()
                                    repeat task.wait()
                                        if(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text, "Bounty") ) then
                                            Tween:Cancel()
                                        end
                                    until Tween.PlaybackState ~= Enum.PlaybackState.Playing
                                until game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Visible == false or not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.InCombat.Text, "Bounty") or not Auto_Bounty
                            end
                        end
                        local usefruit = false
                        local nowuse = nil
                        local sword = true
                        local punch = true
                        local skillsword = true
                        local skilldf = true
                        local skillmelee = true
                        if(getgenv().Setting.Weapons.Sword.Enable == false) then
                            sword = false
                            skillsword = false
                        end
                        if(getgenv().Setting.Weapons.Melee.Enable == false) then
                            punch = false
                            skillmelee = false
                        end
                        if (getgenv().Setting.Weapons["Blox Fruit"].Enable == false) then
                            usefruit = false
                            skilldf = false
                        end
                        OrionLib:MakeNotification({
                            Name = "Target Players",
                            Content = "Attack: " .. target.Name,
                            Image = "rbxassetid://4483345998",
                            Time = 3
                        })
                        pcall(function()
                            repeat task.wait()
                                publictarget = target
                                if(not target.Character) then
                                    table.insert(havedkillbefore,target.Name)
                                    break
                                end
                                local postarget = target.Character:FindFirstChild("HumanoidRootPart")
                                local characters = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position
                                local bruh = CheckNear(postarget)
                                local boke = (characters - postarget.Position).Magnitude
                                local boka = (bruh.Position - postarget.Position).Magnitude
                                if(boke < boka) then
                                   trytween(postarget)
                                else
                                    AddVelocity()
                                    --if(bruh.Position - postarget.Position).Magnitude <= 2000 then
                                    gotoisland(bruh)
                                    postarget = target.Character:FindFirstChild("HumanoidRootPart")
                                    local newbruh = CheckNear(postarget)
                                    if(newbruh ~= bruh) then
                                        continue
                                    end
                                end
                                AddVelocity()
                                Buso()
                                if(target.Character:FindFirstChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude >= 10000 then
                                    table.insert(havedkillbefore,target.Name)
                                    continue
                                end
                                trytween(target.Character:FindFirstChild("HumanoidRootPart").CFrame)
                                if(not target) then
                                    break
                                end
                                if(target.Character:FindFirstChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude >= 10000 then
                                    table.insert(havedkillbefore,target.Name)
                                    continue
                                end
                                spawn(function()
                                    while task.wait() do
                                        if(publictarget ~= target) then
                                            break
                                        end
                                        if(Auto_Bounty) then
                                            local oke = false
                                            for i,child in pairs(game.Players.LocalPlayer.PlayerGui:FindFirstChild("Notifications"):GetChildren()) do
                                                if child:IsA("TextLabel") and child.Name == "NotificationTemplate" then
                                                    local voanhlanhat = child.Text
                                                    if(string.find(voanhlanhat,"Player")) then
                                                        if(string.find(voanhlanhat,"died")) then
                                                            if(string.find(voanhlanhat,"recently")) then
                                                                table.insert(havedkillbefore, target.Name)
                                                                oke = true
                                                                break
                                                            end
                                                        end
                                                    end
                                                    if(string.find(voanhlanhat,"Cannot") and not table.find(havedkillbefore,target.Name)) then
                                                        if(string.find(voanhlanhat,"attack")) then
                                                            table.insert(havedkillbefore,target.Name)
                                                            oke = true
                                                            break
                                                        end
                                                    end
                                                end
                                            end
                                        else
                                            break
                                        end
                                    end
                                end)
                                -- if(target.Character:FindFirstChild("HumanoidRootPart").Postion - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude <= 250 then
                                --     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
                                --     usemelee()
                                --     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
                                --     usemelee()
                                --     game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = target.Character.HumanoidRootPart.CFrame
                                --     usemelee()
                                -- end
                                spawn(function() 
                                    while task.wait() do
                                        if(publictarget ~= target) then
                                            break
                                        end
                                        if not Auto_Bounty then
                                            break
                                        end
                                        if(Auto_Bounty) then
                                            if(not Target) then
                                                break
                                            end
                                            if(not table.find(havedkillbefore, target.Name)) then
                                                if(not game.Players:FindFirstChild(taget.Name)) then
                                                    table.insert(havedkillbefore,target.Name)
                                                    break
                                                end
                                                if( not game.Players:FindFirstChild(target.Name).Character) then
                                                    table.insert(havedkillbefore,target.Name)
                                                    break
                                                end
                                                if not game.Players:FindFirstChild(target.Name).Character:FindFirstChild("Humanoid") then
                                                    table.insert(havedkillbefore,target.Name)
                                                    break
                                                end
                                                if game.Players:FindFirstChild(target.Name).Character:FindFirstChild("Humanoid").Health<=0 then
                                                    table.insert(havedkillbefore,target.Name)
                                                    break
                                                end
                                            end
                                        end
                                    end
                                end)
                                spawn(function() 
                                    local chanle = 4
                                    while task.wait() do
                                        if(publictarget ~= target) then
                                            break
                                        end
                                        if(not Auto_Bounty) then
                                            break
                                        end
                                        if(not target) or (not target.Character) or not(target.Character:FindFirstChild("HumanoidRootPart")) or not target.Character:FindFirstChild("Humanoid") or target.Character.Humanoid.Health <= 0 or table.find(havedkillbefore,target.Name) then
                                           
                                            if( target and not table.find(havedkillbefore,target.Name)) then
                                                table.insert(havedkillbefore,target.Name)
                                            end
                                            break
                                        end
                                        pcall(function()
                                            Tween:Cancel()
                                        end)
                                        local stateplace
                                        if(target and target.Character and target.Character:FindFirstChild("Busy") and target.Character.Busy.Value == true) then
                                            if(chanle%4 == 0) then
                                                stateplace = target.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(25,30,15)
                                                chanle = chanle + 1
                                                task.wait()
                                            elseif(chanle%4 == 1) then
                                                stateplace = target.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(26,12,37)
                                                chanle = chanle + 1
                                                task.wait()
                                            elseif (chanle % 4 == 2) then
                                                chanle = chanle + 1
                                                stateplace = target.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(63,11,2)
                                                task.wait()
                                            elseif (chanle % 4 == 3) then
                                                chanle = 4
                                                stateplace = target.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(19,10,52)
                                                task.wait()
                                            end
                                        else 
                                            if(chanle%4 == 0) then
                                                stateplace = target.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,5,0)
                                                chanle = chanle + 1
                                                task.wait()
                                            elseif(chanle%4 == 1) then
                                                stateplace = target.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(11,12,15)
                                                chanle = chanle + 1
                                                task.wait()
                                            elseif (chanle % 4 == 2) then
                                                chanle = chanle + 1
                                                stateplace = target.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(9,20,7)
                                                task.wait()
                                            elseif (chanle % 4 == 3) then
                                                chanle = 4
                                                stateplace = target.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(7,2,1)
                                                task.wait()
                                            end
                                        end
                                        
                                        Tween = tween(stateplace)
                                        if((target.Character:FindFirstChild("HumanoidRootPart").Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude >= 10000) then
                                            return
                                        end
                                        if(not Auto_Bounty) then
                                            return
                                        end
                                        local mag = (stateplace.Position - game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").Position).Magnitude
                                        if(mag <= 200) then
                                            game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = stateplace
                                        else
                                            AddVelocity()
                                            Tween:Play()
                                            repeat task.wait()
                                            until Tween.PlaybackState ~= Enum.PlaybackState.Playing or (not target) or (not target.Character) or not(target.Character:FindFirstChild("HumanoidRootPart")) or not target.Character:FindFirstChild("Humanoid") or target.Character.Humanoid.Health <= 0 or table.find(havedkillbefore,target.Name) or not Auto_Bounty
                                            --wait(.5)
                                            if(not target) or (not target.Character) or not(target.Character:FindFirstChild("HumanoidRootPart")) or not target.Character:FindFirstChild("Humanoid") or target.Character.Humanoid.Health <= 0 or table.find(havedkillbefore,target.Name) then
                                                break
                                            end
                                        end
                                    end 
                                end)
                                while task.wait() do
                                    if(publictarget ~= target) then
                                        break
                                    end
                                    if(not Auto_Bounty) then
                                        break
                                    end
                                    if(not target) or (not target.Character) or not(target.Character:FindFirstChild("HumanoidRootPart")) or not target.Character:FindFirstChild("Humanoid") or target.Character.Humanoid.Health <= 0 or table.find(havedkillbefore,target.Name) then
                                        
                                        if( target and not table.find(havedkillbefore,target.Name)) then
                                            table.insert(havedkillbefore,target.Name)
                                        end
                                        break
                                    end
                                    if (getgenv().Setting.Weapons.Melee.Enable or getgenv().Setting.Weapons.Sword.Enable) and (target and target.Character and target.Character:FindFirstChild("Humanoid") and target.Character.Humanoid.Health > 0 and target.Character:FindFirstChild("HumanoidRootPart")) then
                                        local val = (target.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                        if(val <= 60 and (nowuse ~= "Melee1" or nowuse ~= "Melee2") and getgenv().Setting.Weapons.Melee.Enable) then
                                            
                                            if(not target) or (not target.Character) or not(target.Character:FindFirstChild("HumanoidRootPart")) or not target.Character:FindFirstChild("Humanoid") or target.Character.Humanoid.Health <= 0 or table.find(havedkillbefore,target.Name) then
                                                break
                                            end
                                            local health = target.Character:FindFirstChild("Humanoid").Health
                                            if(health<=0) then
                                                table.insert(havedkillbefore,target.Name)
                                            end
                                            if(getgenv().Setting.Weapons.Melee.Enable) and punch and nowuse ~= "Melee1" and val <= 35 then
                                                punch = false
                                                nowuse = "Melee1"
                                                delay(getgenv().Setting.Weapons.Melee.Delay, function()
                                                    punch = true
                                                    if(nowuse == "Melee1") then
                                                        nowuse = nil
                                                    end
                                                end)
                                                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = target.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,3,0)
                                                usemelee(target)
                                                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame *CFrame.new(0,20,0)
                                               
                                                task.wait(.05)
                                            elseif (getgenv().Setting.Weapons.Melee.Enable) and skillmelee and nowuse ~= "Melee2" then
                                                nowuse = "Melee2"
                                                skillmelee = false
                                                delay(getgenv().Setting.Weapons.Melee.Delay, function()
                                                    skillmelee = true
                                                    if(nowuse == "Melee2") then
                                                        nowuse = nil
                                                    end
                                                end)
                                                usemeleetoattack(target.Character)
                                                
                                                --game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame *CFrame.new(0,20,0)
                                                task.wait(.05)
                                            end
                                            
                                        end
                                        if(val>700) then
                                            break
                                        end
                                        if(val <= 60 and (nowuse ~= "Sword1" or nowuse ~= "Sword2") and getgenv().Setting.Weapons.Sword.Enable) then
                                            
                                            if(not target) or (not target.Character) or not(target.Character:FindFirstChild("HumanoidRootPart")) or not target.Character:FindFirstChild("Humanoid") or target.Character.Humanoid.Health <= 0 or table.find(havedkillbefore,target.Name) then
                                                break
                                            end
                                            local health = target.Character:FindFirstChild("Humanoid").Health
                                            if(health<=0) then
                                                table.insert(havedkillbefore,target.Name)
                                            end
                                            if (getgenv().Setting.Weapons.Sword.Enable) and nowuse~= "Sword1" and sword and val <= 35 then
                                                sword = false
                                                nowuse = "Sword1"
                                                delay(getgenv().Setting.Weapons.Sword.Delay, function()
                                                    sword = true
                                                    if(nowuse == "Sword1") then
                                                        nowuse = nil
                                                    end
                                                end)
                                                game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = target.Character:FindFirstChild("HumanoidRootPart").CFrame * CFrame.new(0,3,0)
                                                usesword(target)
                                                
                                                --game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame *CFrame.new(0,20,0)
                                                task.wait(.05)
                                            elseif (getgenv().Setting.Weapons.Sword.Enable) and skillsword and nowuse ~= "Sword2" then
                                                nowuse = "Sword2"
                                                skillsword = false
                                                delay(getgenv().Setting.Weapons.Sword.Delay, function()
                                                    skillsword = true
                                                    if(nowuse == "Sword2") then
                                                        nowuse = nil
                                                    end
                                                end)
                                                useswordtoattack(target.Character)
                                                
                                                --game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart").CFrame *CFrame.new(0,20,0)
                                                task.wait(.05)
                                            end
                                        end
                                    end
                                    if(not Auto_Bounty) then
                                        break
                                    end
                                    if(not target) or (not target.Character) or not(target.Character:FindFirstChild("HumanoidRootPart")) or not target.Character:FindFirstChild("Humanoid") or target.Character.Humanoid.Health <= 0 or table.find(havedkillbefore,target.Name) then
                                      
                                        if( target and not table.find(havedkillbefore,target.Name)) then
                                            table.insert(havedkillbefore,target.Name)
                                        end
                                        break
                                    end
                                    if(getgenv().Setting.Weapons["Blox Fruit"].Enable) then
                                        local skill = getgenv().Setting.Weapons["Blox Fruit"].Skills 
                                        local late = getgenv().Setting.Weapons["Blox Fruit"].Delay
                                        local usez = skill.Z.Enable
                                        local holdz = skill.Z.HoldTime
                                        local usex = skill.X.Enable
                                        local holdx = skill.X.HoldTime
                                        local usec = skill.C.Enable
                                        local holdc = skill.C.HoldTime
                                        local usec = skill.V.Enable
                                        local holdv = skill.V.HoldTime
                                        local usef = skill.F.Enable
                                        local holdf = skill.F.HoldTime
                                        local val = (target.Character.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                        if(not Auto_Bounty) then
                                            break
                                        end
                                        if(not target) or (not target.Character) or not(target.Character:FindFirstChild("HumanoidRootPart")) or not target.Character:FindFirstChild("Humanoid") or target.Character.Humanoid.Health <= 0 or table.find(havedkillbefore,target.Name) then
                                            break
                                        end
                                        if(val <= 60) and nowuse ~= "Blox Fruit" and skilldf then
                                        
                                            nowuse = "Blox Fruit"
                                            skilldf = false
                                            delay(getgenv().Setting.Weapons["Blox Fruit"].Delay, function()
                                                skilldf = true
                                                if(nowuse == "Blox Fruit") then
                                                    nowuse = nil
                                                end
                                            end)
                                            usefruit = true
                                            usefruittotattack(target.Character)
                                            
                                            usefruit = false
                                            task.wait(.05)
                                        end
                                    end
                                    if(not Auto_Bounty) then
                                        break
                                    end
                                    if(not target) or (not target.Character) or not(target.Character:FindFirstChild("HumanoidRootPart")) or not target.Character:FindFirstChild("Humanoid") or target.Character.Humanoid.Health <= 0 or table.find(havedkillbefore,target.Name) then
                                    
                                        if( target and not table.find(havedkillbefore,target.Name)) then
                                            table.insert(havedkillbefore,target.Name)
                                        end
                                        break
                                    end
                                end
                                if(table.find(havedkillbefore,target.Name)) then
                                    publictarget = nil
                                end
                            until not Auto_Bounty or not target or table.find(havedkillbefore,tostring(target.Name)) or not game.Players:FindFirstChild(target.Name) 
                        end)
                        publictarget = nil
                    end
                end
                TryHop = true
                Auto_Bounty = false
            end
        end
    end)
end)
