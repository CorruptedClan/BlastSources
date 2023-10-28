-- message to skidders if u get anything from here atleast give credits


--start
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/Main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Land Hub | Arm Wrestling Simulator",
    SubTitle = "by land hub development team",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "airplay" }),
    Fight = Window:AddTab({ Title = "Fight", Icon = "sword" }),
    Eggs = Window:AddTab({ Title = "Eggs", Icon = "egg" }),
    Event = Window:AddTab({ Title = "Event", Icon = "anchor" }),
    Extra = Window:AddTab({ Title = "Extra", Icon = "plus-circle" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "code" })
}

local Options = Fluent.Options

--punching bags = done
local Punch = Tabs.Main:AddSection("Knuckle")
local Dropdown = Punch:AddDropdown("DropWorld", {
        Title = "Select World",
        Values = {"1", "2", "3", "4", "5", "6"},
        Multi = false,
        Default = 1,
    })

    Dropdown:OnChanged(function(x)
        worldbag = x
    end)
    
    local Dropdown = Punch:AddDropdown("DropWorld", {
        Title = "Select Tier",
        Values = {"Tier1", "Tier2", "Tier3", "Tier4", "Tier5", "Tier6", "Needs Gamepass", "Tier7"},
        Multi = false,
        Default = 1,
    })

    Dropdown:OnChanged(function(v)
        punchbag = v
    end)
    
    local Knuckle = Punch:AddToggle("MyToggle", {Title = "Start Auto Train Knuckle", Default = false })

    Knuckle:OnChanged(function(Value)
        getgenv().BagPunch = Value
        
        while getgenv().BagPunch do
        game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.PunchBagService.RE.onGiveStats:FireServer(worldbag, punchbag)
        wait(0.1)
        end
    end)
    
    --grip farm = done
    local Grip = Tabs.Main:AddSection("Grip")
    
    local GripWorld = Grip:AddDropdown("GripWorld", {
        Title = "Select World",
        Values = {"1", "2", "3", "4", "5", "6"},
        Multi = false,
        Default = 1,
    })
    GripWorld:OnChanged(function(n)
        worldgrip = n
    end)
    
    local GripWeight = Grip:AddDropdown("GripWeight", {
        Title = "Select Weight",
        Values = {"1Kg", "2Kg", "3Kg", "4Kg", "5Kg", "10Kg", "15Kg", "20Kg", "25Kg", "50Kg", "100Kg", "250Kg", "please set difficulty to 2 for the next weights", "300Kg", "350Kg", "400Kg", "450Kg", "500Kg", "600Kg", "700Kg", "800Kg", "900Kg", "1000Kg", "1250Kg", "1500Kg", "please set difficulty to 3 for the next weights", "5000Kg", "6000Kg", "7500Kg", "10000Kg", "12500Kg", "15000Kg", "20000Kg", "25000Kg", "30000Kg", "35000Kg", "40000Kg", "45000Kg", "please elect world 4 for the next weights", "50000Kg", "60000Kg", "70000Kg", "80000Kg", "90000Kg", "100000Kg", "125000Kg", "150000Kg", "175000Kg", "200000Kg", "250000Kg", "300000Kg", "please select world 5 for the next weights", "350000Kg", "375000Kg", "400000Kg", "425000Kg", "450000Kg", "475000Kg", "500000Kg", "525000Kg", "550000Kg", "575000Kg", "600000Kg", "625000Kg", "please select World 6 for the next weights", "650000Kg", "675000Kg", "700000Kg", "725000Kg", "750000Kg", "775000Kg", "800000Kg", "825000Kg", "850000Kg", "875000Kg", "900000Kg", "925000Kg"},
        Multi = false,
        Default = 1,
    })
    GripWeight:OnChanged(function(h)
        gripweight = h
    end)
    
    local GripFarm = Grip:AddToggle("GripToggle", {Title = "Start Grip Auto Farm", Default = false })

    GripFarm:OnChanged(function(Value)
        getgenv().GripFarm = Value
        
        while getgenv().GripFarm do
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ToolService.RE.onGuiEquipRequest:FireServer(worldgrip, "Grips", gripweight)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ToolService.RE.onClick:FireServer()
        wait(0.1)
        end
    end)
    
    --dumbell farm = done
    local Dumbell = Tabs.Main:AddSection("Dumbell")
    
    local DumbWorld = Dumbell:AddDropdown("DumbWorld", {
        Title = "Select World",
        Values = {"1", "2", "3", "4", "5", "6"},
        Multi = false,
        Default = 1,
    })
    DumbWorld:OnChanged(function(m)
        worldbell = m
    end)
    
    local DumbWeight = Dumbell:AddDropdown("DumbWeight", {
        Title = "Select Weight",
        Values = {"1Kg", "2Kg", "3Kg", "4Kg", "5Kg", "10Kg", "15Kg", "20Kg", "25Kg", "50Kg", "100Kg", "250Kg", "please set difficulty to 2 for the next weights", "300Kg", "350Kg", "400Kg", "450Kg", "500Kg", "600Kg", "700Kg", "800Kg", "900Kg", "1000Kg", "1250Kg", "1500Kg", "please set difficulty to 3 for the next weights", "5000Kg", "6000Kg", "7500Kg", "10000Kg", "12500Kg", "15000Kg", "20000Kg", "25000Kg", "30000Kg", "35000Kg", "40000Kg", "45000Kg", "please elect world 4 for the next weights", "50000Kg", "60000Kg", "70000Kg", "80000Kg", "90000Kg", "100000Kg", "125000Kg", "150000Kg", "175000Kg", "200000Kg", "250000Kg", "300000Kg", "please select world 5 for the next weights", "350000Kg", "375000Kg", "400000Kg", "425000Kg", "450000Kg", "475000Kg", "500000Kg", "525000Kg", "550000Kg", "575000Kg", "600000Kg", "625000Kg", "please select World 6 for the next weights", "650000Kg", "675000Kg", "700000Kg", "725000Kg", "750000Kg", "775000Kg", "800000Kg", "825000Kg", "850000Kg", "875000Kg", "900000Kg", "925000Kg"},
        Multi = false,
        Default = 1,
    })
    DumbWeight:OnChanged(function(q)
        weightbell = q
    end)
    
    local DumbellFarm = Dumbell:AddToggle("DumbToggle", {Title = "Start Dumbell Auto Farm", Default = false })

    DumbellFarm:OnChanged(function(Value)
        getgenv().DumbFarm = Value
        
        while getgenv().DumbFarm do
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ToolService.RE.onGuiEquipRequest:FireServer(worldbell, "Dumbells", weightbell)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ToolService.RE.onClick:FireServer()
        wait(0.1)
        end
    end)
    
    --rebirth
    local Brith = Tabs.Main:AddSection("Rebirth")
    
    local Birth = Brith:AddToggle("RebirthNormal", {Title = "Auto Rebirth", Default = false })

    Birth:OnChanged(function(k)
        getgenv().Rebrith = k
        
        while getgenv().Rebirth do
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.RebirthService.RE.onRebirthRequest:FireServer()
        wait(0.1)
        end
    end)
    
    local Rebirth = Brith:AddToggle("RebirthNormal", {Title = "Auto Super Rebirth", Default = false })

    Rebirth:OnChanged(function(Value)
        getgenv().SuperRebirth = Value
        
        while getgenv().SuperRebirth do
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.RebirthService.RE.onSuperRebirth:FireServer()
        wait(0.1)
        end
    end)
    
    --eggs = done
    local EggWorld = Tabs.Eggs:AddDropdown("EggWorld", {
        Title = "Select Egg",
        Values = {"World 1:", "Earth", "Icy", "Lava", "Blackhole", "World 2:", "Crystal", "Molten", "Solar", "Moon", "Ice", "Burning", "World 3:", "Coconut", "Palm", "Treasure", "Clam", "KingFish", "Poseidon", "World 4:", "Rust", "Widget", "Atom", "Iridescent", "Mutant", "Nuclear", "World 5:", "TRex", "Herbivore", "Pterodactyl", "Mystic", "DinoFossil", "Gem", "World 6:", "Void", "Wormhole", "Star", "Nebula"},
        Multi = false,
        Default = 1,
    })
    EggWorld:OnChanged(function(m)
        eggworldfirst = m
    end)
    
    local OpenEgg = Tabs.Eggs:AddToggle("EggToggle", {Title = "Start Opening Eggs", Default = false })

    OpenEgg:OnChanged(function(Value)
        getgenv().Egg = Value
        
        while getgenv().Egg do
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.EggService.RF.purchaseEgg:InvokeServer(eggworldfirst, {}, false)
        wait(0.1)
        end
    end)
    
    --autofight = started
    local FightNPC = Tabs.Fight:AddDropdown("Fight npc", {
        Title = "Select NPC to Fight",
        Values = {"Bully", "Teacher", "GymRat", "MafiaBoss", "Champion", "Please select world 2 for the next bosses", "ScrapTrader", "CyberCop", "SlicerAssasin", "RogueAi", "please select world 3 for the next bosses", "CocoNut", "FatPirate", "MermaidKing", "FriendlyShark", "KrakenBoss", "MegaKrakenBoss", "please select world 4 for the next bosses", "Barbarian", "Hazmat", "Enforcer", "Bulk", "MutantKing", "please select world 5 for the next bosses", "Primal", "Dino", "Archeologist", "TribeLeader", "Mammoth", "please select world 6 for the next bosses", "Orinthian", "SpaceBoy", "DemonSlayer", "Udzal", "Cybernetic"},
        Multi = false,
        Default = 1,
    })
    FightNPC:OnChanged(function(v)
        fightchoose = v
    end)
    
    local FightNPC = Tabs.Fight:AddDropdown("Fight world", {
        Title = "Select World",
        Values = {"1", "2", "3", "4", "5", "6"},
        Multi = false,
        Default = 1,
    })
    FightNPC:OnChanged(function(l)
        fightworld = l
    end)
    
    local StartFight = Tabs.Fight:AddToggle("FightToggle", {Title = "Start Auto Fight", Default = false })

    StartFight:OnChanged(function(Value)
        getgenv().Fight = Value
        
        while getgenv().Fight do
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer(fightchoose, workspace.Zones:FindFirstChild(fightworld).Interactables.ArmWrestling.NPC[fightchoose].Table, fightworld)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
        wait(0.1)
        end
    end)
    
    --extra = done
    Tabs.Extra:AddButton({
        Title = "Launch Mobile Keyboard",
        Description = "Launches virtual keyboard for mobile players",
        Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
        end
    })
    
    Tabs.Extra:AddButton({
        Title = "Launch Infinite Yield",
        Description = "Launches Infinite Yield Script",
        Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
        end
    })
    
    local TimeRewards = Tabs.Extra:AddToggle("TimeRewards", {Title = "Auto Claim Time Gifts", Default = false })

    TimeRewards:OnChanged(function(Value)
        getgenv().time = Value
        
        while getgenv().time do
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("1")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("2")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("3")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("4")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("5")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("6")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("7")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("8")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("9")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("10")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("11")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("12")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("13")
        wait(0.1)
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.TimedRewardService.RE.onClaim:FireServer("14")
        wait(0.1)
        end
    end)
    
    local Pass = Tabs.Extra:AddToggle("Pass", {Title = "Auto Claim Pass Rewards", Default = false })

    Pass:OnChanged(function(Value)
        getgenv().pass = Value
        
        while getgenv().pass do
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(1, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(2, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(3, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(4, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(5, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(6, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(7, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(8, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(9, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(10, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(11, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(12, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(13, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(14, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(15, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(16, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(17, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(18, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(19, "Main")
        wait(0.1)
        game:GetService("ReplicatedStorage").Communication.Functions:FindFirstChild(""):InvokeServer(20, "Main")
        wait(0.1)
        end
    end)
    
    local Spins = Tabs.Extra:AddToggle("Spins", {Title = "Auto Claim Spins", Default = false })

    Spins:OnChanged(function(Value)
        getgenv().spins = Value
        
        while getgenv().spins do
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.SpinService.RE.onSpinRequest:FireServer()
        wait(0.5)
        end
    end)
    
    local Arm = Tabs.Extra:AddToggle("ArmCrate", {Title = "Auto Roll Arm Crates", Default = false })

    Arm:OnChanged(function(Value)
        getgenv().crate = Value
        
        while getgenv().crate do
game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.ArmsService.RF.RollAllCratesForPlayer:InvokeServer()
        wait(0.5)
        end
    end)
    
    --events = done
    local Crystaline = Tabs.Event:AddSection("Crystaline Egg")
    local RogueAi = Crystaline:AddToggle("Rogue", {Title = "Auto Fight Rogue AI", Default = false })

    RogueAi:OnChanged(function(Value)
        getgenv().rogue = Value
        
        while getgenv().rogue do
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onEnterNPCTable:FireServer("RogueAi", workspace.Zones:FindFirstChild("2").Interactables.ArmWrestling.NPC.RogueAi.Table, "2")
        game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.ArmWrestleService.RE.onClickRequest:FireServer()
        wait(0.1)
        end
    end)
    
    local EggEvent = Crystaline:AddToggle("EventEgg", {Title = "Auto Claim Event Egg", Default = false })

    EggEvent:OnChanged(function(Value)
        getgenv().eventegg = Value
        
        while getgenv().eventegg do
        game:GetService("ReplicatedStorage").Packages._Index["sleitnick_knit@1.4.7"].knit.Services.EventService.RF.ClaimEgg:InvokeServer()
        wait(0.1)
        end
    end)
    
    local Ween = Tabs.Event:AddSection("Halloween Event")
    
    local EggEvent = Ween:AddToggle("Farm", {Title = "Auto Farm Candy", Default = false })
    EggEvent:OnChanged(function(Value)
        getgenv().auto = Value
getgenv().cooldown = 1

local part = game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")

function TP(targetCFrame)
    if part then
        local ts = game:GetService("TweenService")
        local ti = TweenInfo.new(1, Enum.EasingStyle.Linear)
        local tp = {CFrame = targetCFrame}
        if currentTween then
            currentTween:Cancel()
        end

        currentTween = ts:Create(part, ti, tp)
        currentTween:Play()
        currentTween.Completed:Wait()
    else
        warn("Player character or HumanoidRootPart not found.")
    end
end

local function Click()
    local vim = game:GetService('VirtualInputManager')
    vim:SendMouseButtonEvent(0, 0, 0, true, game, 0)
    wait()
    vim:SendMouseButtonEvent(0, 0, 0, false, game, 0)
end

local function Autofarm()
    while getgenv().auto do
        local foundSmoke = false
        for i, v in pairs(workspace:GetDescendants()) do
            for i2, v2 in pairs(v:GetChildren()) do
                if v2.Name == "Smoke" then
                    local offset = Vector3.new(1, 0, 1)
                    part.CFrame = CFrame.new(v.CFrame.Position + offset)
                    repeat
                        Click()
                        wait(0.2)
                    until not v:IsDescendantOf(workspace) or not getgenv().auto
                    foundmob = true
                    wait(getgenv().cooldown)
                end
            end
        end
        if not foundmob then
            wait(1)
        end
    end
end

if getgenv().auto == true then
    Autofarm()
end
if getgenv().auto == false then
getgenv().cooldown = 9999999999999
end
    end)
    
    local Dropdown = Ween:AddDropdown("ScaryEggChoose", {
        Title = "Select Egg",
        Values = {"Tomb", "Ectoplasmatic", "Bewitched", "Cauldron"},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(l)
        scaryegg = l
    end)
    
    local Toggle = Ween:AddToggle("EggScaryOpen", {Title = "Auto Open Eggs", Default = false })
    Toggle:OnChanged(function(Value)
    getgenv().scary = Value
    while getgenv().scary do
game:GetService("ReplicatedStorage").Packages._Index:FindFirstChild("sleitnick_knit@1.4.7").knit.Services.EggService.RF.purchaseEgg:InvokeServer(scaryegg, {}, false)
wait(0.1)
end
    end)
    
    
    --credits = finished
    Tabs.Credits:AddButton({
        Title = "EdxymRBLX - Land Hub Co-Owner / Co-founder, Scripter",
        Description = "Copies EdxymRBLX's youtube link",
        Callback = function()
setclipboard("https://www.youtube.com/@EdxymOnline")
        end
    })
    
    Tabs.Credits:AddButton({
        Title = "Sponso - Land Hub Owner / Founder, Scripter",
        Description = "copies Land Hub's discord invite link",
        Callback = function()
setclipboard("https://discord.com/invite/x9HEWDNed3")
        end
    })