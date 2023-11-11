local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Genesis Z | Arm Wrestling Simulator",
    SubTitle = "by Genesis Dev team",
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

--functions
function bike()
if Game.PlaceId == place1 then
local targetPart = game.Workspace.WorldMap.Checkpoints["99"]:FindFirstChild("Pole")

if targetPart then
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = CFrame.new(targetPart.Position)
else
    warn("Target part not found")
end
elseif Game.PlaceId == place2 then
local targetPart = game.Workspace.WorldMap.Checkpoints["51"]:FindFirstChild("Pole")

if targetPart then
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = CFrame.new(targetPart.Position)
else
    warn("Target part not found")
end
elseif Game.PlaceId == place3 then
local targetPart = game.Workspace.WorldMap.Checkpoints["70"]:FindFirstChild("Pole")

if targetPart then
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = CFrame.new(targetPart.Position)
else
    warn("Target part not found")
end
elseif Game.PlaceId == place4 then
local targetPart = game.Workspace.WorldMap.Checkpoints["52"]:FindFirstChild("Pole")

if targetPart then
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = CFrame.new(targetPart.Position)
else
    warn("Target part not found")
end
elseif Game.PlaceId == place5 then
local targetPart = game.Workspace.WorldMap.Checkpoints["70"]:FindFirstChild("Pole")

if targetPart then
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = CFrame.new(targetPart.Position)
else
    warn("Target part not found")
end
elseif Game.PlaceId == place6 then
local targetPart = game.Workspace.WorldMap.Checkpoints["50"]:FindFirstChild("Pole")

if targetPart then
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = CFrame.new(targetPart.Position)
else
    warn("Target part not found")
end
elseif Game.PlaceId == place7 then
local targetPart = game.Workspace.WorldMap.Checkpoints["60"]:FindFirstChild("Pole")

if targetPart then
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = CFrame.new(targetPart.Position)
else
    warn("Target part not found")
end
elseif Game.PlaceId == place8 then
local targetPart = game.Workspace.WorldMap.Checkpoints["41"]:FindFirstChild("Pole")

if targetPart then
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = CFrame.new(targetPart.Position)
else
    warn("Target part not found")
end
elseif Game.PlaceId == place0 then
local targetPart = game.Workspace.WorldMap.Checkpoints["40"]:FindFirstChild("Pole")

if targetPart then
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = CFrame.new(targetPart.Position)
else
    warn("Target part not found")
end
elseif Game.PlaceId == place9 then
local targetPart = game.Workspace.WorldMap.Checkpoints["41"]:FindFirstChild("Pole")

if targetPart then
    local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
    rootPart.CFrame = CFrame.new(targetPart.Position)
else
    warn("Target part not found")
end
end
end

--worlds
place1 = 14184086618
place2 = 14483937954
place3 = 14666799841
place4 = 14840620690
place5 = 14928421933
place6 = 14997446013
place7 = 15063879640
place8 = 15208940765
place0 = 15131057422
place9 = 15278398765

--start
local Bike = Tabs.Main:AddSection("Event")

local Dropdown = DumbellSection:AddDropdown("Dumbell Wordl", {
        Title = "Select Bike",
        Values = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        biketype = Value
    end)
    
    Bike:AddButton({
        Title = "Get Bike",
        Description = "",
        Callback = function()
        game:GetService("ReplicatedStorage").RemoteEvents.PublishBike:FireServer("BikeType",biketype)
        game:GetService("ReplicatedStorage").RemoteEvents.ReportDeath:FireServer()
        end
})

Bike:AddButton({
        Title = "Finish Obby",
        Description = "",
        Callback = function()
        bike()
        end
})

local Toggle = Bike:AddToggle("Wheel", {Title = "Auto Spin Wheel", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().spin = Value
while getgenv().spin do
game:GetService("ReplicatedStorage").RemoteEvents.SpinWheel:FireServer()
wait(1)
        end
    end)
    
local Toggle = Bike:AddToggle("Trophy", {Title = "Auto Farm Trophies", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().farm = Value
while getgenv().farm do
game:GetService("ReplicatedStorage").RemoteEvents.ReportReset:FireServer()
wait(45)
bike()
wait()
        end
    end)
    
    local Toggle = Bike:AddToggle("Trophy2", {Title = "Auto Farm Trophies (Faster)", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().farmyes = Value
while getgenv().farmyes do
game:GetService("ReplicatedStorage").RemoteEvents.ReportReset:FireServer()
wait(25)
bike()
wait(1)
        end
    end)
    
--event
local Event = Tabs.Main:AddSection("Event")
local Toggle = Event:AddToggle("iThinkItsTooOp", {Title = "Farm points for UGC", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().ugc = Value
while getgenv().ugc do
local folder = game.Workspace.ICC_PopUp_Package.RunCollectables
-- Iterate through all children of the folder
for _, child in pairs(folder:GetChildren()) do
    if child.Name == "Card_6" or child.Name == "Card_4" then
        local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
        rootPart.CFrame = CFrame.new(child.Position)
        wait(0.01)  -- Optional delay between teleports to avoid rapid teleportation
    end
end
        end
    end)
    
local Toggle = Event:AddToggle("Farm Spins", {Title = "Auto Event Spin", Default = false })
    Toggle:OnChanged(function(Value)
getgenv().event = Value
while getgenv().event do
game:GetService("ReplicatedStorage").ICC_PopUp_Package.Packages.Knit.Services.SpinnerService.RF.RequestSpin:InvokeServer()
wait(0.5)
        end
    end)
    
--misc
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
        Title = "Change Gravity",
        Description = "",
        Default = 96,
        Min = 0,
        Max = 155,
        Rounding = 1,
        Callback = function(Value)
            game.Workspace.Gravity = Value
        end
    })
    Slider:OnChanged(function(Value)
        game.Workspace.Gravity = Value
    end)

--credits
Tabs.Credits:AddParagraph({
        Title = "Credits",
        Content = "Main Scripter - EdxymRBLX \nHelper - OrdinaryMan"
    })
    
Tabs.Credits:AddButton({
        Title = "Copy Edxym's Youtube",
        Description = "",
        Callback = function()
        setclipboard("https://www.youtube.com/@EdxymOnline")
        end
})

Tabs.Credits:AddButton({
        Title = "Join Genesis Z Discord",
        Description = "",
        Callback = function()
        setclipboard("https://dsc.gg/genesis-z")
        end
})