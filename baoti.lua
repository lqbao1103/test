--[[
repeat task.wait() until game:IsLoaded() --ต้องใส่ตลอดถ้าใช้ synx ไอควายจำใส่สมองเอาไว้
if not game:IsLoaded() then game.Loaded:Wait() end
_G.KAITAN1CLICK = true -- true/false
_G.Config = true -- dont change
_G.DelayHop = 3600 -- dont change to make best hop time
_G.Settings = {
    ["Team"] = "Pirates",--Marines
    ["Boost_Fps"] = true-- true/false
}
script_key = "xxxxxxxxxxxxxxxxxxxxxxxx"
]]
print"bro got secret WL"
require(game.ReplicatedStorage:WaitForChild("Notification")).new(" <Color=Yellow> tf how u can got secret Wl <Color=/> "):Display()
_G.Settings={Main={["Auto Farm"]=true,["Auto Go To Fruit"]=true,["Store Fruit"]=true,["Auto Saber"]=false,["Auto Pole"]=true,["Auto New World"]=true,["Auto Bartilo Quest"]=true,["Auto Rengoku"]=true,["Open Flamingo Access"]=true,["Midnight Blade"]=true,["AutoNewWorld3"]=true}}if _G.Config then if _G.Settings.Main["Auto Farm"]then _G.StartFarm=true end;if _G.Settings.Main["Auto Saber"]then _G.Start_Saber=true end;if _G.Settings.Main["Auto Pole"]then _G.Start_Pole=true end;if _G.Settings.Main["Auto New World"]then _G.Auto_New_World=true end;if _G.Settings.Main["Auto Bartilo Quest"]then _G.Auto_Bartilo_Quest=true end;if _G.Settings.Main["Auto Rengoku"]then _G.AutoRengoku=true end;if _G.Settings.Main["Auto Go To Fruit"]then _G.Grab_Fruit=true end;if _G.Settings.Main["Store Fruit"]then _G.StoreFruit=true end;if _G.Settings.Main["Open Flamingo Access"]then _G.Open_Flamingo_Access=true end;if _G.Settings.Main["Midnight Blade"]then _G.Midnight_Blade=true end if _G.Settings.Main["AutoNewWorld3"] then _G.Auto_World_3 = true end end;if _G.Config==false then _G.Start_Saber=value;_G.StartFarm=value;_G.Start_Pole=value;_G.Auto_New_World=value;_G.Auto_Bartilo_Quest=value;_G.AutoRengoku=value;_G.Grab_Fruit=value;_G.StoreFruit=value;_G.AutoFarmBossAll=value end
-- fake check wl like real wl 55555555555555555
setfpscap(1)
print"lol wl"
wait(2)
print" turtle wl "
wait(1)
print"loading script"
task.wait(1)
print"loading fast attack"
setfpscap(1)
-- setfpscap 1 and loadstring make => no crashes 
loadstring(Game:HttpGet("https://raw.githubusercontent.com/JewhisKids/NewFreeScript/main/Misc/FastAttackV2.lua"))()
task.wait(2)
setfpscap(15)
print"load check wp"
print" will print after 10s [ if have ] "
if game.PlaceId == 2753915549 then
    W1 = true
elseif game.PlaceId == 4442272183 then
    W2 = true
elseif game.PlaceId == 7449423635 then
    W3 = true
end
local function changeteam(team)
    game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("SetTeam", team)
    local makeVisible = {"RaceEnergy","Compass","Energy","AlliesButton","Code",
    "CrewButton","HomeButton","Mute","Settings","MenuButton","Beli","Fragments",
    "Level",
    --"Radar",
    "HP"}
    if game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam") then
        game:GetService("Players").LocalPlayer.PlayerGui.Main:FindFirstChild("ChooseTeam"):Destroy()
    end
    for i,v in pairs(makeVisible) do
        if v == "RaceEnergy" then
            if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Awakening") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Awakening") then
                game:GetService("Players").LocalPlayer.PlayerGui.Main[v].Visible = true
            end
        else
            game:GetService("Players").LocalPlayer.PlayerGui.Main[v].Visible = true
        end
    end
    game:GetService("Workspace").CurrentCamera.CameraType = Enum.CameraType.Custom
    game:GetService("Workspace").CurrentCamera.CameraSubject = game:GetService("Players").LocalPlayer.Character.Humanoid
    game:GetService("Workspace").CurrentCamera.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end
changeteam(_G.Settings["Team"])
-- destroy effect di
game:GetService("ReplicatedStorage").Effect.Container.Respawn:Destroy()
game:GetService("ReplicatedStorage").Effect.Container.Death:Destroy()

local function QuestCheck()
    local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
    if Lvl >= 1 and Lvl <= 9 then
        if tostring(game.Players.LocalPlayer.Team) == "Marines" then
            MobName = "Trainee"
            QuestName = "MarineQuest"
            QuestLevel = 1
            Mon = "Trainee"
            NPCPosition = CFrame.new(-2709.67944, 24.5206585, 2104.24585, -0.744724929, -3.97967455e-08, -0.667371571, 4.32403588e-08, 1, -1.07884304e-07, 0.667371571, -1.09201515e-07, -0.744724929)
        elseif tostring(game.Players.LocalPlayer.Team) == "Pirates" then
            MobName = "Bandit"
            Mon = "Bandit"
            QuestName = "BanditQuest1"
            QuestLevel = 1
            NPCPosition = CFrame.new(1059.99731, 16.9222069, 1549.28162, -0.95466274, 7.29721794e-09, 0.297689587, 1.05190106e-08, 1, 9.22064114e-09, -0.297689587, 1.19340022e-08, -0.95466274)
        end
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end
    if Lvl >= 375 and Lvl <= 399 then -- Fishman Warrior
        MobName = "Fishman Warrior"
        QuestName = "FishmanQuest"
        QuestLevel = 1
        Mon = "Fishman Warrior"
        NPCPosition = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
        MobCFrame = CFrame.new(60955.0625, 48.7988472, 1543.7168, -0.831178129, 6.20639318e-09, -0.556006253, 7.20035302e-08, 1, -9.64761853e-08, 0.556006253, -1.20223305e-07, -0.831178129)
        if _G.KAITAN1CLICK and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end

    if Lvl >= 15 and Lvl <= 29 then
        MobName = "Gorilla"
        QuestName = "JungleQuest"
        QuestLevel = 2
        Mon = "Gorilla"
        NPCPosition = CFrame.new(-1604.12012, 36.8521118, 154.23732, 0.0648873374, -4.70858913e-06, -0.997892559, 1.41431883e-07, 1, -4.70933674e-06, 0.997892559, 1.64442184e-07, 0.0648873374)
        MobCFrame = CFrame.new(-1142.0293, 40.5877495, -516.118103, 0.55559355, 7.58965513e-08, 0.831454039, 1.24594361e-08, 1, -9.96073553e-08, -0.831454039, 6.57006538e-08, 0.55559355)
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end

    if Lvl >= 400 and Lvl <= 449 then -- Fishman Commando
        MobName = "Fishman Commando"
        QuestName = "FishmanQuest"
        QuestLevel = 2
        Mon = "Fishman Commando"
        NPCPosition = CFrame.new(61122.5625, 18.4716396, 1568.16504, 0.893533468, 3.95251609e-09, 0.448996574, -2.34327455e-08, 1, 3.78297464e-08, -0.448996574, -4.43233645e-08, 0.893533468)
        MobCFrame = CFrame.new(61872.3008, 75.5976562, 1394.83484, -0.922134459, 4.36911973e-09, -0.38686946, -2.54707899e-08, 1, 7.20052e-08, 0.38686946, 7.62523484e-08, -0.922134459)
        if _G.KAITAN1CLICK and (NPCPosition.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 3000 then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
        end
        return {
            [1] = QuestLevel,
            [2] = NPCPosition,
            [3] = MobName,
            [4] = QuestName,
            [5] = LevelRequire,
            [6] = Mon,
            [7] = MobCFrame
        }
    end
    --game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
    local GuideModule = require(game:GetService("ReplicatedStorage").GuideModule)
    local Quests = require(game:GetService("ReplicatedStorage").Quests)
    for i,v in pairs(GuideModule["Data"]["NPCList"]) do
        for i1,v1 in pairs(v["Levels"]) do
            if Lvl >= v1 then
                if not LevelRequire then
                    LevelRequire = 0
                end
                if v1 > LevelRequire then
                    NPCPosition = i["CFrame"]
                    QuestLevel = i1
                    LevelRequire = v1
                end
                if #v["Levels"] == 3 and QuestLevel == 3 then
                    NPCPosition = i["CFrame"]
                    QuestLevel = 2
                    LevelRequire = v["Levels"][2]
                end
            end
        end
    end
    for i,v in pairs(Quests) do
        for i1,v1 in pairs(v) do
            if v1["LevelReq"] == LevelRequire and i ~= "CitizenQuest" then
                QuestName = i
                for i2,v2 in pairs(v1["Task"]) do
                    MobName = i2
                    Mon = string.split(i2," [Lv. ".. v1["LevelReq"] .. "]")[1]
                end
            end
        end
    end
    if QuestName == "MarineQuest2" then
        QuestName = "MarineQuest2"
        QuestLevel = 1
        MobName = "Chief Petty Officer"
        Mon = "Chief Petty Officer"
        LevelRequire = 120
    elseif QuestName == "ImpelQuest" then
        QuestName = "PrisonerQuest"
        QuestLevel = 2
        MobName = "Dangerous Prisoner"
        Mon = "Dangerous Prisoner"
        LevelRequire = 210
        NPCPosition = CFrame.new(5310.60547, 0.350014925, 474.946594, 0.0175017118, 0, 0.999846935, 0, 1, 0, -0.999846935, 0, 0.0175017118)
    elseif QuestName == "SkyExp1Quest" then
        if QuestLevel == 1 then
            NPCPosition = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
        elseif QuestLevel == 2 then
            NPCPosition = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
        end
    elseif QuestName == "Area2Quest" and QuestLevel == 2 then
        QuestName = "Area2Quest"
        QuestLevel = 1
        MobName = "Swan Pirate"
        Mon = "Swan Pirate"
        LevelRequire = 775
    end
    MobName = MobName:sub(1,#MobName)
    if not MobName:find("Lv") then
        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            MonLV = string.match(v.Name, "%d+")
            if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
                MobName = v.Name
            end
        end
    end
    if not MobName:find("Lv") then
        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do
            MonLV = string.match(v.Name, "%d+")
            if v.Name:find(MobName) and #v.Name > #MobName and tonumber(MonLV) <= Lvl + 50 then
                MobName = v.Name
                Mon = a
            end
        end
    end
    for _,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
        if v.Name == MobName then
            MobCFrame = v.CFrame * CFrame.new(0,30,5)
        end
    end

    return {
        [1] = QuestLevel,
        [2] = NPCPosition,
        [3] = MobName,
        [4] = QuestName,
        [5] = LevelRequire,
        [6] = Mon,
        [7] = MobCFrame
    }
end
-- other func
function EquipWeapon(ToolSe)
    if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
        local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
        wait(.4)
        game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
    end
end
function UnEquipWeapon(Weapon)
    if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
        _G.NotAutoEquip = true
        task.wait(.5)
        game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
        task.wait(.1)
        _G.NotAutoEquip = false
    end
end
function toposition(Point)
    TweeSpeed = 350
	local LocalPlayer = game.Players.LocalPlayer 
    TweenPlay = (Point.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    pcall(function() 
            tot = game:GetService("TweenService"):Create(LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenPlay/TweeSpeed, Enum.EasingStyle.Linear),{CFrame = Point})
    end);tot:Play()
    if TweenPlay <= 500 then
        TweeSpeed = 100
    end
    if TweenPlay <= 200 then
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
    end
    if LocalPlayer.Character.Humanoid.Sit == true then 
        LocalPlayer.Character.Humanoid.Sit = false 
    end
    if _G.StopTween == true then tot:Cancel();_G.Clip = false end
    if _G.StopTween then
        tot:Cancel()
        BringMobFarm = false
        UseSkillGun = false
        UseSkill = false
    elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
        tot:Play()
    elseif game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
        tot:Cancel()
        BringMobFarm = false
        UseSkillGun = false
        UseSkill = false
        wait(0.5)
    end
end	

function StopTween(target)
    if not target then
        _G.StopTween = true
        _G.StartScript = false
        task.wait()
            toposition(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        task.wait()
        BringMobFarm = false
        UseSkillGun = false
        UseSkill = false
        toposition(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
        _G.StopTween = false
        _G.StartScript = false
        _G.Clip = false
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
    end
end

function TPPlayer(Point)
    TweeSpeed = 350
    local LocalPlayer = game.Players.LocalPlayer 
    TweenPlay = (Point.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    local Dis = (Point.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    pcall(function() 
            tot = game:GetService("TweenService"):Create(LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(TweenPlay/TweeSpeed, Enum.EasingStyle.Linear),{CFrame = Point})
    end);tot:Play()
    if TweenPlay >= 1200 then
        _G.StopTween = true
        game.Players.LocalPlayer.Character.Head:Destroy()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
        wait(.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point * CFrame.new(0,50,0)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
        wait(.1)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        wait(0.5)
        game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
        _G.Clip = false
        _G.StopTween = false
    elseif TweenPlay <= 300 then
        tot:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        wait(0.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point*CFrame.new(0,30,0)
    end

    if Dis <= 350 then
        tot:Cancel()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point
        wait(0.2)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Point*CFrame.new(0,30,0)
    end

    if _G.StopTween == true then tot:Cancel();_G.Clip = false end
    if _G.StopTween then
        tot:Cancel()
        BringMobFarm = false
        UseSkillGun = false
        UseSkill = false
    elseif game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
        tot:Play()
    elseif game.Players.LocalPlayer.Character.Humanoid.Health <= 0 then
        tot:Cancel()
        BringMobFarm = false
        UseSkillGun = false
        UseSkill = false
    end
end	

getgenv().TP = function(Pos)
    Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    if Distance < 250 then
        Speed = 350
    elseif Distance >= 1000 then
        Speed = 250
    end
    game:GetService("TweenService"):Create(
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
        TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
        {CFrame = Pos}
    ):Play()
    _G.Clip = true
    wait(Distance/Speed)
    _G.Clip = false
    return
end

-- // Bypass \\ --

function Bypass(Position)
    _G.StopTween = true
    _G.StartScript = false
    toposition(Position)
    task.wait()
	game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    game.Players.LocalPlayer.Character.Humanoid:ChangeState(15)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
    game.Players.LocalPlayer.Character.Head:Destroy()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Position
    game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SetSpawnPoint")
    toposition(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
    _G.StopTween = false
    _G.StartScript = false
    _G.Clip = false
    if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
    end
    _G.Clip = false
end

-- // Check Sword \\ --

function Check_Sword(Sword_Name)
    for i, v in pairs(game:GetService("ReplicatedStorage").Remotes['CommF_']:InvokeServer("getInventory")) do
        if (v.Type == "Sword") then
            if v.Name == Sword_Name then
                return true
            end
        end
    end
end

---------------------

spawn(function()
    game:GetService("RunService").Stepped:Connect(function()
        if _G.KAITAN1CLICK then
            for _, v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
                if v:IsA("BasePart") then
                    v.CanCollide = false    
                end
            end
            game:GetService'VirtualUser':CaptureController()
            game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
        end
    end)
end)

spawn(function()
    while task.wait() do
        pcall(function()
            if _G.KAITAN1CLICK then
                if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                    local Noclip = Instance.new("BodyVelocity")
                    Noclip.Name = "BodyClip"
                    Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                    Noclip.MaxForce = Vector3.new(100000,100000,100000)
                    Noclip.Velocity = Vector3.new(0,0,0)
                end
            else
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
            end
        end)
    end
end)

Code = {
    "EXP_5B",
    "CONTROL",
    "UPDATE11",
    "XMASEXP",
    "1BILLION",
    "ShutDownFix2",
    "UPD14",
    "STRAWHATMAINE",
    "TantaiGaming",
    "Colosseum",
    "Axiore",
    "Sub2Daigrock",
    "Sky Island 3",
    "Sub2OfficialNoobie",
    "SUB2NOOBMASTER123",
    "THEGREATACE",
    "Fountain City",
    "BIGNEWS",
    "FUDD10",
    "SUB2GAMERROBOT_EXP1",
    "UPD15",
    "2BILLION",
    "UPD16",
    "3BVISITS",
    "fudd10_v2",
    "Starcodeheo",
    "Magicbus",
    "JCWK",
    "Bluxxy",
    "Sub2Fer999",
    "Enyu_is_Pro"
}
spawn(function()
	pcall(function()
		while wait() do
            if _G.KAITAN1CLICK and _G.Grab_Fruit then
                for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                    if string.find(v.Name, "Fruit") then
                        if v:IsA("Tool") then
                            _G.StartFarm = false
                            if (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                                Bypass(v.Handle.CFrame * CFrame.new(0,50,0))
                                repeat wait() Bypass(v.Handle.CFrame * CFrame.new(0,50,0)) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.KAITAN1CLICK
                                repeat wait() toposition(v.Handle.CFrame) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.KAITAN1CLICK
                            else
                                repeat wait() toposition(v.Handle.CFrame) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.KAITAN1CLICK
                            end
                            toposition(v.Handle.CFrame)
                            firetouchinterest(game.Players.LocalPlayer.Character.HumanoidRootPart,v.Handle,0)
                        end
                    elseif not string.find(v.Name, "Fruit") then
                        _G.StartFarm = true
                    end
                end
            end
        end
	end)
end)
--[[
function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime + 0.5)
    local Hour = math.floor(GameTime / (60^2)) % 24
    local Minute = math.floor(GameTime / (60^1)) % 60
    local Second = math.floor(GameTime / (60^0)) % 60
    print(""..Hour..""..Minute..""..Second.."")
end
spawn(function()
	while wait(.1) do
		UpdateTime()
	end
end)]]
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman", true) == 1 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
print"Superhuman | ✅"
end
wait()
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep", true) == 1 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
print"DeathStep | ✅"
end
wait()
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true) == 1 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
print"Sharkman Karate| ✅"
end
wait()
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw", true) == 1 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
print"Electric Claw | ✅"
end
wait()
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon", true) == 1 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
print"Dragon Talon | ✅"
end
wait()
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman", true) == 1 then
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
print"God Human | ✅"
end
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress", "Bartilo") == 3 then
    print"Bartilo Quest | ✅"
end
if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "Check") == 1 then
    print"Kill Swan | ✅"
end
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SickScientist","Heal") == 1 then
    print"Awakening Phoenix | ✅"
end  
if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CitizenQuestProgress","Citizen") == 3 then
    print"Observition Haki V2 | ✅"
end            
if Check_Sword("Shisui") then
    print("✅ | Shisui")
end
if Check_Sword("Saddi") then
    print("✅ | Saddi")
end
if Check_Sword("Wando") then
    print("✅ | Wando")
end
if Check_Sword("True Triple Katana") then
    print("✅ | True Triple Katana")
end
if Check_Sword("Saber") then
    print("✅ | Saber")
end
if Check_Sword("Rengoku") then
    print("✅ | Rengoku")
end
if Check_Sword("Midnight Blade") then
    print("✅ | Midnight Blade")
end
if Check_Sword("Dragon Trident") then
    print("✅ | Dragon Trident")
end
if Check_Sword("Yama") then
    print("✅ | Yama")
end
if Check_Sword("Buddy Sword") then
    print("✅ | Buddy Sword")
end
if Check_Sword("Canvander") then
    print("✅ | Canvander")
end
if Check_Sword("Spikey Trident") then
    print("✅ | Spikey Trident")
end
if Check_Sword("Hallow Scythe") then
    print("✅ | Hallow Scythe")
end
if Check_Sword("Dark Dagger") then
    print("✅ | Dark Dagger")
end
if Check_Sword("Tushita") then
    print("✅ | Tushita")
end
if Check_Sword("Cursed Dual Katana") then
    print("✅ | Cursed Dual Katana")
end
for i, v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
    if v.Name == "Kabucha" then
        print("✅ | Kabucha Gun")
    end
    if v.Name == "Acidum Rifle" then
        print("✅ | Acidum Rifle")
    end
    if v.Name == "Bizarre Rifle" then
        print("✅ | Bizarre Rifle")
    end
    if v.Name == "Soul Guitar" then
        print("✅ | Soul Guitar")
    end
    if v.Name == "Serpent Bow" then
        print("✅ | Serpent Bow")
    end
end
for i,v in pairs(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("getInventoryWeapons")) do
    if v.Name == "Ghoul Mask" then
        print("✅ | Ghoul Mask")
    end
    if v.Name == "Swan Glasses" then
        print("✅ | Swan Glass")
    end
    if v.Name == "Pale Scarf" then
        print("✅ | Pale Scarf")
    end
    if v.Name == "Valkyrie Helmet" then
        print("✅ | Valkyrie Helmet")
    end
    if v.Name == "Usoap's Hat" then
        print("✅ | Usoap's Hat")
    end
    if v.Name == "Warrior Helmet" then
        print("✅ | Warrior Helmet")
    end                
end
_G.GoGat = true
spawn(function()
    while wait(0) do
        if _G.KAITAN1CLICK then
            MyLevel = game.Players.localPlayer.Data.Level.value
            if MyLevel >= 2 then
                for i,v in pairs(Code) do
                    pcall(function()
                        local args = {
                            [1] = v
                        }
                        game:GetService("ReplicatedStorage").Remotes.Redeem:InvokeServer(unpack(args))
                    end)
                end
                break
            end
        end
    end
end)
spawn(function()
	while wait() do
		if _G.KAITAN1CLICK and _G.StoreFruit and _G.Auto_Dungeon_Superhuman == nil then
			pcall(function()
				wait()
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bomb-Bomb",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bomb Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bomb Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spike-Spike",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spike Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spike Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Chop-Chop",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Chop Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Chop Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spring-Spring",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spring Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spring Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Kilo-Kilo",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Kilo Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Kilo Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Smoke-Smoke",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Smoke Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Smoke Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Spin-Spin",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Spin Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Spin Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Flame-Flame",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Flame Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Flame Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Falcon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Falcon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Falcon Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Ice-Ice",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Ice Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Ice Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Sand-Sand",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Sand Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Sand Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dark-Dark",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dark Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dark Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Revive-Revive",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Revive Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Revive Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Diamond-Diamond",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Diamond Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Diamond Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Light-Light",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Light Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Light Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Love-Love",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Love Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Love Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rubber-Rubber",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rubber Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rubber Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Barrier-Barrier",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Barrier Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Barrier Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Magma-Magma",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Magma Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Magma Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Door-Door",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Door Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Door Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Quake-Quake",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Quake Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Quake Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Human-Human: Buddha",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Human-Human: Buddha Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Human-Human: Buddha Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","String-String",game:GetService("Players").LocalPlayer.Character:FindFirstChild("String Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("String Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Bird-Bird: Phoenix",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Bird: Phoenix Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Bird: Phoenix Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Rumble-Rumble",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Rumble Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Rumble Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Paw-Paw",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Paw Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Paw Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Gravity-Gravity",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Gravity Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Gravity Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dough-Dough",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dough Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dough Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Shadow-Shadow",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Shadow Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Shadow Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Venom-Venom",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Venom Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Venom Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Control-Control",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Control Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Control Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Dragon-Dragon",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Dragon Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Dragon Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
				end
				if game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit") then
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit","Leopard-Leopard",game:GetService("Players").LocalPlayer.Character:FindFirstChild("Leopard Fruit") or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Leopard Fruit")) wait(0.3) game.Players.LocalPlayer.Character.Head:Destroy() 
                end
            end)
        end
    end
end)

spawn(function()
	while wait() do
        local MyLevel = game.Players.localPlayer.Data.Level.value
		if _G.KAITAN1CLICK and _G.Midnight_Blade then 
            pcall(function()
                if MyLevel >= 1349 and Check_Sword("Midnight Blade") == nil then
                    _G.Grab_Fruit = false
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Check") <= 100 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                            if (CFrame.new(911.35827636719, 125.95812988281, 33159.5390625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                                Bypass(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                repeat wait() Bypass(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)) until (CFrame.new(911.35827636719, 125.95812988281, 33159.5390625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.KAITAN1CLICK
                            end
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if string.find(v.Name, "Ship") then
                                    repeat task.wait()
                                        if string.find(v.Name,"Ship") then
                                            EquipWeapon(_G.Select_Weapon)
                                            v.HumanoidRootPart.CanCollide = false
                                            v.Head.CanCollide = false
                                            v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                            toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                            toposition(v.HumanoidRootPart.CFrame * CFrame.new(40, 30, 0))
                                            toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, -40))
                                            toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                            if not _G.FastAttack then
                                                game:GetService("VirtualUser"):CaptureController()
                                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                            end
                                            PosMon = v.HumanoidRootPart.CFrame
                                            BringMobFarm565 = true
                                        else 
                                            BringMobFarm565 = false
                                            toposition(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                        end
                                    until _G.Midnight_Blade == false or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        else
                            BringMobFarm565 = false
                            if (CFrame.new(911.35827636719, 125.95812988281, 33159.5390625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                                Bypass(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                                repeat wait() Bypass(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)) until (CFrame.new(911.35827636719, 125.95812988281, 33159.5390625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.KAITAN1CLICK
                            else
                                repeat wait() toposition(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625)) until (CFrame.new(911.35827636719, 125.95812988281, 33159.5390625).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or not _G.KAITAN1CLICK
                            end
                        end
                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Check") >= 100 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","BuyCheck",3)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Buy",3)
                        _G.Grab_Fruit = true
                        wait(1.5)
                        _G.Midnight_Blade = false
                        wait(2.5)
                        _G.StartFarm = true
                    end
                elseif Check_Sword("Midnight Blade") == true then
                    _G.Midnight_Blade = false
                else
                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Check")>= 100 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","BuyCheck",3)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Ectoplasm","Buy",3)
                    end
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.KAITAN1CLICK and _G.Bring_Mob and BringMobFarm565 then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.Name == "Ship Deckhand" or v.Name == "Ship Engineer" or v.Name == "Ship Steward" or v.Name == "Ship Officer" ) and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 250 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        v.HumanoidRootPart.Transparency = 1
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        v.Humanoid:ChangeState(11)
                        v.Humanoid:ChangeState(14)
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                        setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                    end
                end
            end
        end)
    end
end)
spawn(function()
	while wait() do
		if _G.KAITAN1CLICK and game.Players.LocalPlayer:FindFirstChild("WeaponAssetCache") then 
			pcall(function()
				if game:GetService("Players").LocalPlayer.Data.Beli.Value >= 500000 and (game.Players.LocalPlayer.Character:FindFirstChild("Combat") or game.Players.LocalPlayer.Backpack:FindFirstChild("Combat")) then
					_G.Select_Weapon = "Combat"
					local args = {
						[1] = "BuyElectro"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end   
				if game.Players.LocalPlayer.Character:FindFirstChild("Superhuman") or game.Players.LocalPlayer.Backpack:FindFirstChild("Superhuman") then
					_G.Select_Weapon = "Superhuman"
				end  
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value <= 299  then
					_G.Select_Weapon = "Black Leg"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Electro") and game.Players.LocalPlayer.Backpack:FindFirstChild("Electro").Level.Value <= 299  then
					_G.Select_Weapon = "Electro"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value <= 299  then
					_G.Select_Weapon = "Fishman Karate"
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value <= 299  then
					_G.Select_Weapon = "Dragon Claw"

                elseif game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 299 then
                    if game:GetService("Players").LocalPlayer.Data.Beli.Value <= 3000000 then
                        
                    else

                    end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Backpack:FindFirstChild("Black Leg").Level.Value >= 300  then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Black Leg") and game.Players.LocalPlayer.Character:FindFirstChild("Black Leg").Level.Value >= 300  then
					local args = {
						[1] = "BuyFishmanKarate"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Electro") and game.Players.LocalPlayer.Character:FindFirstChild("Electro").Level.Value >= 300  then
					local args = {
						[1] = "BuyBlackLeg"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Backpack:FindFirstChild("Fishman Karate").Level.Value >= 300  then
					if game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
						if game.Players.LocalPlayer.Data.Level.Value > 1100 then
							_G.StartFarm = false
                            _G.JoinD = true
                            wait(1.5)
							_G.Auto_Dungeon_Superhuman = true
						end
					else
                        _G.JoinD = false
                        _G.StartFarm = true
						_G.Auto_Dungeon_Superhuman = false
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
			            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
					end
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate") and game.Players.LocalPlayer.Character:FindFirstChild("Fishman Karate").Level.Value >= 300  then
					if game.Players.LocalPlayer.Data.Fragments.Value < 1500 then
						if game.Players.LocalPlayer.Data.Level.Value > 1100 then
							_G.StartFarm = false
                            _G.JoinD = true
                            wait(1.5)
							_G.Auto_Dungeon_Superhuman = true
						end
					else
                        _G.JoinD = false
                        _G.StartFarm = true
						_G.Auto_Dungeon_Superhuman = false
						local args = {
							[1] = "BlackbeardReward",
							[2] = "DragonClaw",
							[3] = "2"
						}
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","1")
			            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","DragonClaw","2")
					end
				end
				if game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Backpack:FindFirstChild("Dragon Claw").Level.Value >= 300  then
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end
				if game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw") and game.Players.LocalPlayer.Character:FindFirstChild("Dragon Claw").Level.Value >= 300  then
					local args = {
						[1] = "BuySuperhuman"
					}
					game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
				end 
			end)
		end
	end
end)
spawn(function()
	while wait() do
		if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman and _G.StartFarm == false then
			for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
				if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
					pcall(function()
						repeat wait()
							v.Humanoid.Health = 0
							v.HumanoidRootPart.CanCollide = false
							v.HumanoidRootPart.Size = Vector3.new(50,50,50)
							v.HumanoidRootPart.Transparency = 1
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                            setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
						until not _G.Auto_Dungeon_Superhuman or not v.Parent or v.Humanoid.Health <= 0
					end)
				end
			end
        else
           -- _G.StartFarm = false
		end
	end
end)
local Lvl = game:GetService("Players").LocalPlayer.Data.Level.Value
spawn(function()
    while wait() do
		if _G.KAITAN1CLICK and _G.Start_Saber and Check_Sword("Saber") == nil and Lvl <= 700 then
			pcall(function()
                _G.StartFarm = false
                if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                    if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                        if
                            (CFrame.new(
                                -1612.55884,
                                36.9774132,
                                148.719543,
                                0.37091279,
                                3.0717151e-09,
                                -0.928667724,
                                3.97099491e-08,
                                1,
                                1.91679348e-08,
                                0.928667724,
                                -4.39869794e-08,
                                0.37091279
                            ).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100
                         then
                            toposition(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                            wait(1)
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                            wait(1)
                        else
                            toposition(
                                CFrame.new(
                                    -1612.55884,
                                    36.9774132,
                                    148.719543,
                                    0.37091279,
                                    3.0717151e-09,
                                    -0.928667724,
                                    3.97099491e-08,
                                    1,
                                    1.91679348e-08,
                                    0.928667724,
                                    -4.39869794e-08,
                                    0.37091279
                                )
                            )
                        end
                    else
                        if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                            if
                                game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or
                                    game.Players.LocalPlayer.Character:FindFirstChild("Torch")
                             then
                                EquipWeapon("Torch")
                                toposition(
                                    CFrame.new(
                                        1114.61475,
                                        5.04679728,
                                        4350.22803,
                                        -0.648466587,
                                        -1.28799094e-09,
                                        0.761243105,
                                        -5.70652914e-10,
                                        1,
                                        1.20584542e-09,
                                        -0.761243105,
                                        3.47544882e-10,
                                        -0.648466587
                                    )
                                )
                            else
                                toposition(
                                    CFrame.new(
                                        -1610.00757,
                                        11.5049858,
                                        164.001587,
                                        0.984807551,
                                        -0.167722285,
                                        -0.0449818149,
                                        0.17364943,
                                        0.951244235,
                                        0.254912198,
                                        3.42372805e-05,
                                        -0.258850515,
                                        0.965917408
                                    )
                                )
                            end
                        else
                            if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan") ~= 0 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "GetCup")
                                wait(0.5)
                                EquipWeapon("Cup")
                                wait(0.5)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                    "ProQuestProgress",
                                    "FillCup",
                                    game:GetService("Players").LocalPlayer.Character.Cup
                                )
                                wait(0)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "SickMan")
                            else
                                if
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") ==
                                        nil
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                                elseif
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 0
                                 then
                                    if
                                        game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or
                                            game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader")
                                     then
                                        toposition(
                                            CFrame.new(
                                                -2967.59521,
                                                -4.91089821,
                                                5328.70703,
                                                0.342208564,
                                                -0.0227849055,
                                                0.939347804,
                                                0.0251603816,
                                                0.999569714,
                                                0.0150796166,
                                                -0.939287126,
                                                0.0184739735,
                                                0.342634559
                                            )
                                        )
                                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                            if v.Name == "Mob Leader" then
                                                if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") then
                                                    if
                                                        v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and
                                                            v.Humanoid.Health > 0
                                                     then
                                                        repeat
                                                            task.wait()
                                                            AutoHaki()
                                                            EquipWeapon(_G.Select_Weapon)
                                                            v.HumanoidRootPart.CanCollide = false
                                                            v.Humanoid.WalkSpeed = 0
                                                            v.HumanoidRootPart.Size = Vector3.new(80, 80, 80)
                                                            toposition(v.HumanoidRootPart.CFrame * CFrame.new(0,5,5))
                                                            wait()
                                                            toposition(v.HumanoidRootPart.CFrame * CFrame.new(0,10,5))
                                                            wait()
                                                            toposition(v.HumanoidRootPart.CFrame * CFrame.new(0,10,10))
                                                            game:GetService("VirtualUser"):CaptureController()
                                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
                                                            sethiddenproperty(
                                                                game:GetService("Players").LocalPlayer,
                                                                "SimulationRadius",
                                                                math.huge
                                                            )
                                                        until v.Humanoid.Health <= 0 or not AutoSaber
                                                    end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                    topostoposition(
                                                        game:GetService("ReplicatedStorage"):FindFirstChild(
                                                            "Mob Leader"
                                                        ).HumanoidRootPart.CFrame * Cframe.new(0,5,5)
                                                    )
                                                end
                                            end
                                        end
                                    end
                                elseif
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon") == 1
                                 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress", "RichSon")
                                    wait(0.5)
                                    EquipWeapon("Relic")
                                    wait(0.5)
                                    toposition(
                                        CFrame.new(
                                            -1404.91504,
                                            29.9773273,
                                            3.80598116,
                                            0.876514494,
                                            5.66906877e-09,
                                            0.481375456,
                                            2.53851997e-08,
                                            1,
                                            -5.79995607e-08,
                                            -0.481375456,
                                            6.30572643e-08,
                                            0.876514494
                                        )
                                    )
                                end
                            end
                        end
                    end
                else
                    if
                        game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or
                            game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert ")
                     then
                        for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                if v.Name == "Saber Expert" then
                                    repeat
                                        task.wait()
                                        EquipWeapon(_G.Select_Weapon)
                                        toposition(v.HumanoidRootPart.CFrame * CFrame.new(0,5,5))
                                        wait()
                                        toposition(v.HumanoidRootPart.CFrame * CFrame.new(0,10,5))
                                        wait()
                                        toposition(v.HumanoidRootPart.CFrame * CFrame.new(0,10,10))
                                        v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        --v.Humanoid:ChangeState(11)
                                        --v.Humanoid:ChangeState(14)
                                        FarmPos = v.HumanoidRootPart.CFrame
                                        MonFarm = v.Name
                                        game:GetService "VirtualUser":CaptureController()
                                        game:GetService "VirtualUser":Button1Down(
                                            Vector2.new(1280, 672),
                                            workspace.CurrentCamera.CFrame
                                        )
                                    until v.Humanoid.Health <= 0 or not _G.Start_Saber or not _G.StartFarm
                                    if v.Humanoid.Health <= 0 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                            "ProQuestProgress",
                                            "PlaceRelic"
                                        )
                                    end
                                    elseif _G.KAITAN1CLICK and CheckSword("Saber") == true then
                                        _G.StartFarm = true
                                        _G.Start_Saber = false
                                end
                            end
                        end
                    end
                end
				end)
			end
		end
	end)
spawn(function()
    while wait() do
        if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman and _G.StartFarm == false then
            for i,v in pairs(game.Workspace.Enemies:GetDescendants()) do
                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                    pcall(function()
                        repeat wait()
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                            v.Humanoid.Health = 0
                            v.HumanoidRootPart.CanCollide = false
                            v.HumanoidRootPart.Size = Vector3.new(500,500,500)
                            v.HumanoidRootPart.Transparency = 1
                        until not _G.Auto_Dungeon_Superhuman or not v.Parent or v.Humanoid.Health <= 0
                    end)
                end
            end
        else
           -- _G.StartFarm = false
        end
    end
end)
spawn(function()
    while wait() do
        if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman and _G.StartFarm == false then
            if not game.Players.LocalPlayer.PlayerGui.Main.Timer.Visible == false then
                if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5") then
                    getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(0,70,100))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(50,70,100))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(50,70,120))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 5").CFrame * CFrame.new(60,70,500))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4") then
                    getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(0,70,100))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(50,70,100))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(50,70,120))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 4").CFrame * CFrame.new(60,70,500))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3") then
                    getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(0,70,100))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(50,70,100))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(50,70,120))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 3").CFrame * CFrame.new(60,70,500))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2") then
                    getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(0,70,100))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(50,70,100))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(50,70,120))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 2").CFrame * CFrame.new(60,70,500))
                elseif game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") then
                    getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(0,70,100))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(50,70,100))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(50,70,120))
					wait()
					getgenv().TP(game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1").CFrame * CFrame.new(60,70,500))
                end
            end
        else
           -- _G.StartFarm = false
        end
    end
end)
spawn(function()
    while wait(2) do
        if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman and _G.JoinD then
            if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                if W2 then
                    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                elseif W3 then
                    fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    local Fragment = game:GetService("Players")["Localplayer"].Data.Fragments.Value
                    if Fragment >= 1499 then
                        _G.Auto_Dungeon_Superhuman = false
                        _G.StartFarm = true
                    else
                        --_G.StartFarm = false
                    end
                end
            end
        end)
    end
end)
FruitList = {
    "Bomb-Bomb",
    "Spike-Spike",
    "Chop-Chop",
    "Spring-Spring",
    "Kilo-Kilo",
    "Spin-Spin",
    "Bird: Falcon",
    "Smoke-Smoke",
    "Flame-Flame",
    "Ice-Ice",
    "Sand-Sand",
    "Dark-Dark",
    "Revive-Revive",
    "Diamond-Diamond",
    "Light-Light",
    "Love-Love",
    "Rubber-Rubber",
    "Barrier-Barrier",
    "Magma-Magma",
    "Door-Door",
    "Quake-Quake",
    "Human-Human: Buddha",
    "String-String",
    "Bird-Bird: Phoenix",
    "Rumble-Rumble",
    "Paw-Paw",
    "Gravity-Gravity",
    "Dough-Dough",
    "Venom-Venom",
    "Shadow-Shadow",
    "Control-Control",
    "Soul-Soul",
    "Dragon-Dragon",
    "Mammoth-Mammoth"
}
spawn(function()
    while wait() do
        pcall(function()
            if _G.KAITAN1CLICK and _G.Auto_Dungeon_Superhuman then
                _G.Grab_Fruit = false
                for i,v in pairs(FruitList) do
                    if game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) or game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
                        local args = {
                            [1] = "RaidsNpc",
                            [2] = "Select",
                            [3] = tostring("Light")
                        }
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                    else
                        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild(v) or not game:GetService("Players").LocalPlayer.Backpack:FindFirstChild(v) then
                            FruitPrice = {}
                            FruitStore = {}
                            for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
                                if v.Price <= 500000 then  
                                    table.insert(FruitPrice,v.Name)
                                    _G.JoinD = true
                                else
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                                    for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                                        if string.find(v.Name, "Fruit") then
                                            if v:IsA("Tool") then
                                                _G.StartFarm = false
                                                wait(1.5)
                                                if (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                                                    Bypass(v.Handle.CFrame * CFrame.new(0,50,0))
                                                    wait(2)
                                                    repeat wait() toposition(v.Handle.CFrame) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.KAITAN1CLICK
                                                else
                                                    repeat wait() toposition(v.Handle.CFrame) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.KAITAN1CLICK
                                                end
                                            end
                                        end
                                    end
                                end
                            end
                            for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
                                for _,x in pairs(v) do
                                    if _ == "Name" then 
                                        table.insert(FruitStore,x)
                                    end
                                end
                            end
                            for _,y in pairs(FruitPrice) do
                                for _,z in pairs(FruitStore) do
                                     if y == z then
                                        local args = {
                                            [1] = "LoadFruit",
                                            [2] = tostring(y)
                                        }
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                    end
                                end 
                            end
                        end
                    end
                end
            end
        end)
    end
end)

spawn(function()
    while wait() do
        pcall(function()
            if _G.KAITAN1CLICK and W2 and _G.Open_Flamingo_Access and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil and game.Players.LocalPlayer.Data.Level.Value >= 1135 then
                FruitPrice = {}
                FruitStore = {}
                for i,v in next,game.ReplicatedStorage:WaitForChild("Remotes").CommF_:InvokeServer("GetFruits") do
                    if v.Price >= 1000000 then  
                        table.insert(FruitPrice,v.Name)
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                        for i,v in pairs(game:GetService("Workspace"):GetChildren()) do
                            if string.find(v.Name, "Fruit") then
                                if v:IsA("Tool") then
                                    _G.StartFarm = false
                                    wait(1.5)
                                    repeat wait() toposition(v.Handle.CFrame) until (v.Handle.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.KAITAN1CLICK
                                end
                            end
                        end
                    end
                end
                for i,v in pairs(game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("getInventoryFruits")) do
                    for _,x in pairs(v) do
                        if _ == "Name" then 
                            table.insert(FruitStore,x)
                        end
                    end
                end
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                for _,y in pairs(FruitPrice) do
                    for _,z in pairs(FruitStore) do
                        if y == z and game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("GetUnlockables").FlamingoAccess == nil then
                            if not game.Players.LocalPlayer.Backpack:FindFirstChild(FruitStore) then
                                local args = {
                                    [1] = "LoadFruit",
                                    [2] = tostring(y)
                                }
                    
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            else
                                local args = {
                                    [1] = "TalkTrevor",
                                    [2] = "1"
                                }
                                
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                local args = {
                                    [1] = "TalkTrevor",
                                    [2] = "2"
                                }

                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                                local args = {
                                    [1] = "TalkTrevor",
                                    [2] = "3"
                                }
                                
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                            end
                        end
                    end 
                end
            end
        end)
	end
end)
spawn(function()
    while wait() do
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
        pcall(function()
            if _G.KAITAN1CLICK and _G.StartFarm then
                if _G.GoGat and (MyLevel >= 15 and MyLevel <= 300) then
                    if MyLevel >= 15 and MyLevel <= 300 then
                        Start_KaitunFast()
                    end
                else
                    if QuestC.Visible == true then
                        if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                            Bypass(QuestCheck()[2])
                        end
                        if game:GetService("Workspace").Enemies:FindFirstChild(QuestCheck()[3]) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == QuestCheck()[3] then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        repeat task.wait()
                                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, QuestCheck()[6]) then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            else
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                BringMobFarm = true
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.Transparency = 1
                                                toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
                                                wait()
                                                toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 10))
                                                wait()
                                                toposition(v.HumanoidRootPart.CFrame * CFrame.new(10, 30, 10))
                                                wait()
                                                toposition(v.HumanoidRootPart.CFrame * CFrame.new(10, 20, 20))
                                                if not _G.FastAttack then
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                end
                                            end
                                        until not _G.StartFarm or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                                    end
                                end
                            end
                        else
                            for i,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
                                if not _G.GoGat and v.Name == QuestCheck()[6] then local CFrameEnemySpawns = v.CFrame or v.HumanoidRootPart.Cframe
									 wait(0.5)
                                    toposition(CFrameEnemySpawns * CFrame.new(0, 30, 5))
									toposition(CFrameEnemySpawns * CFrame.new(20,10,5))
									toposition(CFrameEnemySpawns * CFrame.new(10,10,10))
									toposition(CFrameEnemySpawns * CFrame.new(30,30,30))
                                end
                            end
                        end
                    else
                        if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                            Bypass(QuestCheck()[2])
                        else
                            repeat wait() toposition(QuestCheck()[2]) until (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.StartFarm
                        end
                        repeat wait() toposition(QuestCheck()[2]) until (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.StartFarm
                        if (QuestCheck()[2].Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                            BringMobFarm = false
                            wait(0.2)
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", QuestCheck()[4], QuestCheck()[1]) wait(0.5)
                        end
                        toposition(QuestCheck()[7])
                    end
                end
            end
        end)
    end
end)
_G.ChackPlayer = 0
_G.ChackPlayer2 = _G.ChackPlayer
function Start_KaitunFast()
    local PlayersAll = game.Players:GetPlayers()
    local PlayerLevel = game.Players.LocalPlayer.Data.Level.Value
    local quest = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
    local Player = string.split(quest," ")[2]
    getgenv().SelectPly = string.split(quest," ")[2]
    pcall(function()
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
        CFrameMon = CFrame.new(-4837.64258, 850.10199, -1840.58374, -0.430530697, -4.42848638e-08, -0.90257591, -3.08042516e-08, 1, -3.43712756e-08, 0.90257591, 1.30052875e-08, -0.430530697)
        if MyLevel >= 15 and MyLevel <= 69 then
            BringMobFarm55 = false
            for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v.Name == "God's Guard" then
                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                        repeat task.wait()
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.WalkSpeed = 0
                            v.Head.CanCollide = false
                            BringMobFarm55 = true
                            EquipWeapon(_G.Select_Weapon)
                            PosMon = v.HumanoidRootPart.CFrame
                            v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                            v.HumanoidRootPart.Transparency = 1
                            toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
							wait()
							toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 20, 10))
                            wait()
                            toposition(v.HumanoidRootPart.CFrame * CFrame.new(10, 30, 10))
							wait()
							toposition(v.HumanoidRootPart.CFrame * CFrame.new(10, 20, 20))
                            if not _G.FastAttack then
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                            end
                        until not v.Parent or not _G.KAITAN1CLICK or v.Humanoid.Health < 0
                    end
                else
                    BringMobFarm55 = false
                    if _G.KAITAN1CLICK and (CFrameMon.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 500 then
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                    end
                    toposition(CFrameMon)
                end
            end
        elseif MyLevel >= 70 and MyLevel <= 309 then
            if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            end
            if QuestC.Visible == false then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
            elseif QuestC.Visible == true then
                if string.find(quest,"Defeat") then
                    if game.Players[getgenv().SelectPly].Data.Level.Value >= 20 and game.Players[getgenv().SelectPly].Data.Level.Value <= MyLevel + 50 then
                        repeat task.wait()
                            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                            end
                            if game:GetService("Players").LocalPlayer.PlayerGui.Main.PvpDisabled.Visible == true then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EnablePvp")
                            end
                            EquipWeapon(_G.Select_Weapon)
                            TPPlayer(game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.CFrame)
                            game:GetService("Players")[getgenv().SelectPly].Character.HumanoidRootPart.Size = Vector3.new(120,120,120)
                            game:service('VirtualInputManager'):SendKeyEvent(true, "X", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "X", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(true, "Z", false, game)
                            game:service('VirtualInputManager'):SendKeyEvent(false, "Z", false, game)
                            if not _G.FastAttack then
                                game:GetService("VirtualUser"):CaptureController()
                                game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                            end
                        until game.Players[getgenv().SelectPly].Character.Humanoid.Health <= 0 or not game.Players[getgenv().SelectPly].Character.Humanoid.Health or not Start_KaitunFast()
                        _G.GoGat = false
                        _G.KillPlayerQ = true
                        if not game.Players:FindFirstChild(Player) then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                        end
                    else
                        for i,v in pairs(PlayersAll) do
                            if v.Data.Level.Value >= 20 and v.Data.Level.Value <= PlayerLevel + 2 then
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("PlayerHunter")
                                print(v)
                            else
                                _G.ChackPlayer = _G.ChackPlayer + 1
                                if _G.ChackPlayer >= 12 then
                                    _G.GoGat = false
                                else
                                    if _G.ChackPlayer2 >= 13 then 
                                        _G.GoGat = false
                                    end
                                    print("Check Player ".._G.ChackPlayer)
                                end
                            end
                        end
                    end
                end
            end
        end
    end)
end
spawn(function()
    while wait() do
        for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ToolTip == "Melee" then
                if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
                    _G.Select_Weapon = v.Name
                    --EquipWeapon(_G.Select_Weapon)
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if _G.KAITAN1CLICK then
            for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                if v.Humanoid.Health > 0 and v:FindFirstChild("Humanoid")and v:FindFirstChild("HumanoidRootPart") then
                    _G.Bring_Mob = true
                    _G.FastAttack = true
                    task.wait(2)
                    _G.Bring_Mob = false
                    _G.FastAttack = false
                    task.wait(2)
                    _G.Bring_Mob = true
                    _G.FastAttack = true
                else
                    _G.Bring_Mob = false
                    _G.FastAttack = false
                end
            end
        end
    end
end)
spawn(function()
    while wait() do
        if _G.KAITAN1CLICK then
            if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
            end
        end
    end
end)
spawn(function()
    while wait() do
        if _G.KAITAN1CLICK then
            pcall(function()
                StopTween(_G.KAITAN1CLICK)
                require(game.ReplicatedStorage.Util.CameraShaker):Stop()
            end)
        end
    end
end)
local InputService = game:GetService('UserInputService')
InputService.WindowFocused:Connect(function()
	game:GetService("RunService"):Set3dRenderingEnabled(true)
end)
InputService.WindowFocusReleased:Connect(function()
	game:GetService("RunService"):Set3dRenderingEnabled(false)
end)
spawn(function()
    while wait() do
        if _G.KAITAN1CLICK and game.Players.LocalPlayer.Data.Level.Value >= 350 and _G.Auto_Dungeon_Superhuman == nil then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Katana")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cutlass")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Duel Katana")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Iron Mace")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Pipe")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Triple Katana")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Dual-Headed Blade")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Bisento")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Soul Cane")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Slingshot")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Musket")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Flintlock")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Refined Flintlock")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Cannon")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","1")
		    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward","Slingshot","2")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Black Cape")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Tomoe Ring")
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyItem","Swordsman Hat")
        end
    end
end)
spawn(function()
    while wait() do
        if _G.KAITAN1CLICK and W2 and game:GetService("Players").LocalPlayer.Data.Beli.Value >= 1000000 then
            pcall(function()
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","1")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","2")
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("LegendarySwordDealer","3")
            end)
        end 
    end
end)
spawn(function()
	game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(10000,115,10000)
end)
spawn(function()
    while wait() do
        if _G.KAITAN1CLICK then
            getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(child)
                if child.Name == 'ErrorPrompt' and child:FindFirstChild('MessageArea') and child.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.KAITAN1CLICK and _G.Auto_New_World and W1 then
                if game.Players.LocalPlayer.Data.Level.Value >= 700 then
                    _G.StartFarm = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    if game.Workspace.Map.Ice.Door.CanCollide == true and game.Workspace.Map.Ice.Door.Transparency == 0 then
                        wait(.5)
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("DressrosaQuestProgress","Detective")
                        EquipWeapon("Key")
                        repeat wait() toposition(CFrame.new(1347.7124, 37.3751602, -1325.6488)) until (CFrame.new(1347.7124, 37.3751602, -1325.6488).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 3 or not _G.Settings.Main["Auto New World"]
                    elseif game.Workspace.Map.Ice.Door.CanCollide == false and game.Workspace.Map.Ice.Door.Transparency == 1 then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Ice Admiral") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Ice Admiral" and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        if not game.Players.LocalPlayer.Character:FindFirstChild("HasBuso") then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
                                        end
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.HumanoidRootPart.Transparency = 1
                                        v.Humanoid.JumpPower = 0
                                        v.Humanoid.WalkSpeed = 0
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid:ChangeState(11)
                                        EquipWeapon(_G.Select_Weapon)
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                        toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                        if not _G.FastAttack then
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        end
                                    until v.Humanoid.Health <= 0 or not v.Parent
                                    game:GetService("ReplicatedStorage"):InvokeServer("TravelDressrosa")
                                end
                            end
                        else
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                            toposition(CFrame.new(1347.7124, 37.3751602, -1325.6488))
                        end
                    else
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                    end
                else
                    _G.Auto_New_World = false
                    _G.StartFarm = true
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        if _G.Auto_World_3 then
            pcall(function()
                if game:GetService("Players").LocalPlayer.Data.Level.Value >= 1500 and W2 then
                    _G.StartFarm = false
                    if game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("ZQuestProgress", "General") == 0 then
                        toposition(CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016))
                        if (CFrame.new(-1926.3221435547, 12.819851875305, 1738.3092041016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
                            wait(1.5)
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ZQuestProgress","Begin")
                        end
                        wait(1.8)
                        if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "rip_indra" then
                                    OldCFrameThird = v.HumanoidRootPart.CFrame
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.Select_Weapon)
                                        toposition(v.HumanoidRootPart.CFrame * CFrame.new(1,30,1))
                                        v.HumanoidRootPart.CFrame = OldCFrameThird
                                        v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        game:GetService'VirtualUser':CaptureController()
                                        game:GetService'VirtualUser':Button1Down(Vector2.new(1280, 672))
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
                                        sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                    until _G.Auto_World_3 == false or v.Humanoid.Health <= 0 or not v.Parent
                                end
                            end
                        elseif not game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") and (CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1000 then
                            toposition(CFrame.new(-26880.93359375, 22.848554611206, 473.18951416016))
                        end
                    end
                else
                    _G.Auto_World_3 = false
                    _G.StartFarm = true
                end
            end)
        end
    end
end)
spawn(function()
    while wait() do
    local MyLevel = game.Players.LocalPlayer.Data.Level.Value
    local QuestC = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest
        pcall(function()
            if _G.KAITAN1CLICK and _G.Auto_Bartilo_Quest and MyLevel >= 850 then
                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 0 then
                    _G.StartFarm = false
                    _G.Grab_Fruit = false
                    if QuestC.Visible == true then
                        if game:GetService("Workspace").Enemies:FindFirstChild("Swan Pirate") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v.Name == "Swan Pirate" then
                                    if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                        repeat task.wait()
                                            if not string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, "Swan Pirate") then
                                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                            else
                                                PosMon = v.HumanoidRootPart.CFrame
                                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                BringMobFarm = true
                                                EquipWeapon(_G.Select_Weapon)
                                                v.HumanoidRootPart.Transparency = 1
                                                toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                                if not _G.FastAttack then
                                                    game:GetService("VirtualUser"):CaptureController()
                                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                                end
                                            end
                                        until not _G.Auto_Bartilo_Quest or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                                    end
                                end
                            end
                        else
                            for i,v in pairs(workspace._WorldOrigin.EnemySpawns:GetChildren()) do
                                if v.Name == "Swan Pirate" then 
                                    local CFrameEnemySpawns = v.CFrame or v.HumanoidRootPart.Cframe  
                                    wait(0.5)
                                    toposition(CFrameEnemySpawns * CFrame.new(0, 30, 5))
                                end
                            end
                        end
                    else
                        repeat wait() toposition(CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312)) until (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 or not _G.Auto_Bartilo_Quest
                        if (CFrame.new(-461.533203, 72.3478546, 300.311096, 0.050853312, -0, -0.998706102, 0, 1, -0, 0.998706102, 0, 0.050853312).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 then
                            BringMobFarm = false
                            game:GetService('ReplicatedStorage').Remotes.CommF_:InvokeServer("StartQuest", "BartiloQuest", 1)
                        end
                    end
                elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 1 then
                    _G.StartFarm = false
                    if game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Jeremy" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                    repeat task.wait()
                                        PosMon = v.HumanoidRootPart.CFrame
                                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false
                                        BringMobFarm = true
                                        EquipWeapon(_G.Select_Weapon)
                                        v.HumanoidRootPart.Transparency = 1
                                        toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                        if not _G.FastAttack then
                                            game:GetService("VirtualUser"):CaptureController()
                                            game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                        end
                                    until not _G.Auto_Bartilo_Quest or not v.Parent or v.Humanoid.Health <= 0 or QuestC.Visible == false or not v:FindFirstChild("HumanoidRootPart")
                                end
                            end
                        end
                    else
                        toposition(CFrame.new(2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-09, -0.656645238, -4.47752875e-08, 1, 4.50709301e-08, 0.656645238, 6.3393955e-08, -0.754199564))
                        if not game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") and (CFrame.new(2158.97412, 449.056244, 705.411682, -0.754199564, -4.17389057e-09, -0.656645238, -4.47752875e-08, 1, 4.50709301e-08, 0.656645238, 6.3393955e-08, -0.754199564).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 20 then
                            if not game:GetService("Workspace").Enemies:FindFirstChild("Jeremy") then
                                _G.StartFarm = true
                                _G.Auto_Bartilo_Quest = false
                            end
                        end
                    end
                elseif  game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BartiloQuestProgress","Bartilo") == 2 then
                    _G.StartFarm = false
                    repeat wait() toposition(CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456)) until (CFrame.new(-1830.83972, 10.5578213, 1680.60229, 0.979988456, -2.02152783e-08, -0.199054286, 2.20792113e-08, 1, 7.1442483e-09, 0.199054286, -1.13962431e-08, 0.979988456).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 1 or _G.Auto_Bartilo_Quest == false
                    wait(0.7)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate1.CFrame
                    wait(0.7)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate2.CFrame
                    wait(0.7)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate3.CFrame
                    wait(0.7)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate4.CFrame
                    wait(0.7)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate5.CFrame
                    wait(0.7)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate6.CFrame
                    wait(0.7)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate7.CFrame
                    wait(0.7)
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = workspace.Map.Dressrosa.BartiloPlates.Plate8.CFrame
                    wait(0.7)
                    _G.StartFarm = true
                    wait(2.5) 
                    _G.Auto_Bartilo_Quest = false
					wait()
                    _G.Grab_Fruit = true
                end
            end
        end)
    end
end)
spawn(function()
    pcall(function()
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        while wait() do
            if _G.KAITAN1CLICK and _G.AutoRengoku and Check_Sword("Rengoku") == nil then
                if MyLevel >= 958 then
                    _G.StartFarm = false
                    _G.Grab_Fruit = false
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        toposition(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                        wait(5)
                        _G.StartFarm = true 
                        _G.Grab_Fruit = true
                        _G.AutoRengoku = false
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    _G.Grab_Fruit = false
                                    EquipWeapon(_G.Select_Weapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.HumanoidRootPart.Size = Vector3.new(50,50,50)
                                    PosMon = v.HumanoidRootPart.CFrame
                                    toposition(v.HumanoidRootPart.CFrame * CFrame.new(0,30,7))
                                    if not _G.FastAttack then
                                        game:GetService("VirtualUser"):CaptureController()
                                        game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                    end
                                    BringMobFarm556 = true
                                until game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or _G.AutoRengoku == false or not v.Parent or v.Humanoid.Health <= 0
                                BringMobFarm556 = false
                            end
                        end
                    else
                        BringMobFarm556 = false
                        if (CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188).Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 then
                            Bypass(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                        else
                            toposition(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                        end
                    end
                end
            elseif _G.KAITAN1CLICK and _G.AutoRengoku and Check_Sword("Rengoku") == true then
                _G.AutoRengoku = false
                _G.StartFarm = true
            end
        end
    end)
end)
spawn(function()
    while task.wait() do
        if _G.KAITAN1CLICK and _G.Start_Pole and game.Players.LocalPlayer.Data.Level.Value >= 20 and Check_Sword("Pole") == nil then
            pcall(function()
                for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
                    if v.Name == "Thunder God" then
                        if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                            _G.StartFarm = false
                            _G.Grab_Fruit = false
                            repeat task.wait()
                                v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                                v.HumanoidRootPart.Transparency = 1
                                v.Humanoid.JumpPower = 0
                                v.Humanoid.WalkSpeed = 0
                                v.HumanoidRootPart.CanCollide = false
                                v.Humanoid:ChangeState(11)
                                EquipWeapon(_G.Select_Weapon)
                                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
                                toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 5))
                                wait()
                                toposition(v.HumanoidRootPart.CFrame * CFrame.new(0, 30, 10))
                                wait()
                                toposition(v.HumanoidRootPart.CFrame * CFrame.new(10, 30, 10))
                                wait()
                                toposition(v.HumanoidRootPart.CFrame * CFrame.new(5, 30, 5))
                                if not _G.FastAttack then
                                    game:GetService("VirtualUser"):CaptureController()
                                    game:GetService("VirtualUser"):Button1Down(Vector2.new(1280,672))
                                end
                            until not _G.AutoPole or not v.Parent or v.Humanoid.Health <= 0
                            _G.Start_Pole = false
                            _G.StartFarm = true
                            _G.Grab_Fruit = true
                        end
                    end
                end
            end)
        elseif _G.Start_Pole and Check_Sword("Pole") == true then
            _G.Start_Pole = false
            _G.StartFarm = true
        end
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.KAITAN1CLICK and _G.Bring_Mob then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name == QuestCheck()[3] and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 300 then
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        v.HumanoidRootPart.Transparency = 1
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        v.Humanoid:ChangeState(11)
                        v.Humanoid:ChangeState(14)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                        setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.KAITAN1CLICK and _G.Bring_Mob and BringMobFarm55 then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if v.Name ==  "God's Guard" and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        v.HumanoidRootPart.Transparency = 1
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        v.Humanoid:ChangeState(11)
                        v.Humanoid:ChangeState(14)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                        setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                    end
                end
            end
        end)
    end
end)
spawn(function()
    while wait() do
        pcall(function()
            if _G.KAITAN1CLICK and _G.Bring_Mob or BringMobFarm556 then
                for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                    if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and (v.HumanoidRootPart.Position - PosMon.Position).magnitude <= 300 then
                        v.HumanoidRootPart.CFrame = PosMon
                        v.Humanoid.JumpPower = 0
                        v.Humanoid.WalkSpeed = 0
                        v.HumanoidRootPart.Size = Vector3.new(60,60,60)
                        v.HumanoidRootPart.Transparency = 1
                        v.HumanoidRootPart.CanCollide = false
                        v.Head.CanCollide = false
                        v.Humanoid:ChangeState(11)
                        v.Humanoid:ChangeState(14)
                        if v.Humanoid:FindFirstChild("Animator") then
                            v.Humanoid.Animator:Destroy()
                        end
                        sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
                        setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
                    end
                end
            end
        end)
    end
end)
if _G.Settings["Boost_Fps"] then
    game.Players.LocalPlayer.Character.Pants:Destroy()
    game.Players.LocalPlayer.Character.Animate.Disabled = true
    loadstring(Game:HttpGet("https://raw.githubusercontent.com/JewhisKids/NewFreeScript/main/Misc/SuperFpsBoost.lua"))()
    print"loaded super fps boost"
    while wait() do
        setfpscap(15)
    end
end
spawn(function()
    while task.wait(_G.DelayHop) do
        game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
    end
end)
spawn(function()
	while wait() do
		if _G.KAITAN1CLICK then
            local args = {
                [1] = "AddPoint",
                [2] = "Melee",
                [3] = 3
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            local args = {
                [1] = "AddPoint",
                [2] = "Defense",
                [3] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
        end
	end
end)
