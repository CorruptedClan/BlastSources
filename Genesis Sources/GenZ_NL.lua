local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Genesis Z | Ninja Legends",
    SubTitle = "https://dsc.gg/genesis-z",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "" })
}

local Options = Fluent.Options
--function
function BuySword()
local A_1 = "buyAllSwords"
        local A_2 = "Inner Peace Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Enchanted Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Astral Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Mystical Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Space Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Tundra Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Eternal Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Sandstorm Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Thunderstorm Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Acient Inferno Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Midnight Shadow Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Mystical Souls Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Winter Wonder Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Golden Master Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Dragon Legend Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Cybernetic Legends Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Skystorm Ultraus Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Chaos Legends Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSwords"
        local A_2 = "Sould Fusion Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        end
        
        function BuyBelt()
local A_1 = "buyAllBelts"
        local A_2 = "Inner Peace Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Enchanted Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Astral Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Mystical Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Space Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Tundra Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Eternal Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Sandstorm Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Thunderstorm Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Acient Inferno Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Midnight Shadow Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Mystical Souls Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Winter Wonder Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Golden Master Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Dragon Legend Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Cybernetic Legends Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Skystorm Ultraus Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Chaos Legends Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllBelts"
        local A_2 = "Sould Fusion Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        end
        
        function BuySkills()
local A_1 = "buyAllSkills"
        local A_2 = "Inner Peace Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Enchanted Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Astral Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Mystical Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Space Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Tundra Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Eternal Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Sandstorm Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Thunderstorm Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Acient Inferno Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Midnight Shadow Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Mystical Souls Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Winter Wonder Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Golden Master Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Dragon Legend Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Cybernetic Legends Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Skystorm Ultraus Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Chaos Legends Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllSkills"
        local A_2 = "Sould Fusion Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        end
        
        function BuyShuriken()
local A_1 = "buyAllShurikens"
        local A_2 = "Inner Peace Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Enchanted Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Astral Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Mystical Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Space Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Tundra Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Eternal Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Sandstorm Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Thunderstorm Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Acient Inferno Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Midnight Shadow Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Mystical Souls Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Winter Wonder Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Golden Master Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Dragon Legend Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Cybernetic Legends Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Skystorm Ultraus Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Chaos Legends Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        wait(2)
        local A_1 = "buyAllShurikens"
        local A_2 = "Sould Fusion Island"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1, A_2)
        end

function element()
game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Frost")
    wait(1)
    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Inferno")
    wait(1)
    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Lightning")
    wait(1)
    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Electral Chaos")
    wait(1)
    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Masterful Wrath")
    wait(1)
    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Shadow Charge")
    wait(1)
    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Shadowfire")
    wait(1)
    game.ReplicatedStorage.rEvents.elementMasteryEvent:FireServer("Eternity Storm")
end

--start
local Main = Tabs.Main:AddSection("Farm")
    
local Toggle = Main:AddToggle("Sellx30", {Title = "Auto Sell (x30)", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().sellx = Value
while getgenv().sellx do
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(84.2945251, 87069.0391, 123.435143)
wait(0.5)
        end
    end)
    
local Toggle = Main:AddToggle("HillKing", {Title = "Autofarm CHI (be King of the Hill)", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().hillking = Value
while getgenv().hillking do
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(218.628006, 89.7980728, -306.10614)
        wait(0.3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(250.906387, 89.7980728, -267.906158)
        wait(0.3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(217.515915, 89.7980728, -271.927338)
        wait(0.3)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(245.596283, 89.7980728, -291.48761)
        wait(0.5)
        end
    end)
    
local Toggle = Main:AddToggle("BringHoops", {Title = "Autofarm Hoops", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().hoops = Value
while getgenv().hoops do
        local plr = game.Players.LocalPlayer
            for i,v in pairs(workspace.Hoops:GetDescendants()) do
            if v.ClassName == "MeshPart" then
            v.touchPart.CFrame = plr.Character.HumanoidRootPart.CFrame
            end
    end
        wait(0.5)
        end
    end)
    
Main:AddButton({
        Title = "Get Every Element",
        Description = "",
        Callback = function()
        element()
        end
})

Main:AddButton({
        Title = "Claim Every Chest",
        Description = "",
        Callback = function()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(425.921204, 70414.9063, -44.0284424)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(425.921204, 70414.9063, -44.0284424)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(425.431824, 74579.7031, -45.7830544)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(425.431824, 74579.7031, -45.7830544)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(426.997314, 79884.4297, -48.2278976)
    wait(1)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(426.997314, 79884.4297, -48.2278976)
        end
})
    
    local Fight = Tabs.Main:AddSection("Fight")
local Toggle = Fight:AddToggle("boss1", {Title = "Auto Fight Magma Boss", Default = false })
    Toggle:OnChanged(function(Value)
_G.boss = Value
        while _G.boss do
        wait()
        if game:GetService("Workspace").bossFolder:FindFirstChild("AncientMagmaBoss"):FindFirstChild("HumanoidRootPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.AncientMagmaBoss.HumanoidRootPart.CFrame
        end
        wait(0.01)
        end
    end)
    
    local Toggle = Fight:AddToggle("boss2", {Title = "Auto Fight Robot Boss", Default = false })
    Toggle:OnChanged(function(Value)
    _G.Robo = Value
while _G.Robo do
        wait()
        if game:GetService("Workspace").bossFolder:FindFirstChild("RobotBoss"):FindFirstChild("HumanoidRootPart") then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Workspace.bossFolder.RobotBoss.HumanoidRootPart.CFrame
        end
        wait(0.01)
        end
    end)
    
    local Toggle = Fight:AddToggle("BladeSwing", {Title = "Auto Swing Blade (equip sword u lazy mf)", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().swing = Value
while getgenv().swing do
local A_1 = "swingKatana"
        local Event = game:GetService("Players").LocalPlayer.ninjaEvent
        Event:FireServer(A_1)
wait(0.01)
        end
    end)
    
local Shop = Tabs.Main:AddSection("Shop")
local Toggle = Shop:AddToggle("BladeBuy", {Title = "Auto Buy Blade", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().buyone = Value
while getgenv().buyone do
BuySword()
         wait(0.5)
        end
    end)
    
local Toggle = Shop:AddToggle("BeltBuy", {Title = "Auto Buy Belts", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().buytwo = Value
while getgenv().buytwo do
BuyBelt()
        wait(0.5)
        end
    end)
    
local Toggle = Shop:AddToggle("RankBuy", {Title = "Auto Buy Rank", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().buythree = Value
while getgenv().buythree do
local oh1 = "buyRank"
        local oh2 = game:GetService("ReplicatedStorage").Ranks.Ground:GetChildren()
        for i = 1,#oh2 do
        game:GetService("Players").LocalPlayer.ninjaEvent:FireServer(oh1, oh2[i].Name)
        end
        wait(0.5)
        end
    end)
    
local Toggle = Shop:AddToggle("Ability", {Title = "Auto Buy Skills", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().buyfour = Value
while getgenv().buyfour do
BuySkills()
        Event:FireServer(A_1, A_2)
        wait(0.5)
        end
    end)
    
local Toggle = Shop:AddToggle("Shuriken", {Title = "Auto Buy Shurikens", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().buyfive = Value
while getgenv().buyfive do
BuyShuriken()
        wait(0.5)
        end
    end)
    
    Tabs.Misc:AddButton({
        Title = "Launch Mobile Keyboard",
        Description = "",
        Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
        end
})

Tabs.Misc:AddButton({
        Title = "Launch Infinite Yield",
        Description = "",
        Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
        end
})

local Slider = Tabs.Misc:AddSlider("Gravity", {
        Title = "Change WalkSpeed",
        Description = "",
        Default = 26,
        Min = 26,
        Max = 200,
        Rounding = 1,
        Callback = function(s)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
        end
    })
    Slider:OnChanged(function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
    end)
    
local Slider = Tabs.Misc:AddSlider("Gravity", {
        Title = "Change WalkSpeed",
        Description = "",
        Default = 96,
        Min = 50,
        Max = 350,
        Rounding = 1,
        Callback = function(s)
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
        end
    })
    Slider:OnChanged(function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
    end)
    
Tabs.Credits:AddParagraph({
        Title = "Credits",
        Content = "Scripter - EdxymRBLX"
    })
    
Tabs.Credits:AddButton({
        Title = "Copy Edxym's Youtube",
        Description = "https://www.youtube.com/@EdxymOnline",
        Callback = function()
        setclipboard("https://www.youtube.com/@EdxymOnline")
        end
})

Tabs.Credits:AddButton({
        Title = "Join Genesis Z Discord",
        Description = "https://dsc.gg/genesis-z",
        Callback = function()
        setclipboard("https://dsc.gg/genesis-z")
        end
})