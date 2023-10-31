local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Genesis Z | Yeet a Plane!",
    SubTitle = "https://dsc.gg/genesis-z",
    TabWidth = 80,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Darker",
    MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Main = Window:AddTab({ Title = "Main", Icon = "" }),
    Egg = Window:AddTab({ Title = "Eggs", Icon = "" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "" }),
   ---------- Settings = Window:AddTab({ Title = "Settings", Icon = "" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "" })
}

--main
local Main = Tabs.Main:AddSection("Main")
local Toggle = Main:AddToggle("PlaneThrow", {Title = "Auto Throw Plane", Default = false })
    Toggle:OnChanged(function(Value)
    getgenv().Throw = Value
    while getgenv().Throw do
        local player = game.Players.LocalPlayer
if player then
    local character = player.Character
    if character then
        local humanoidRootPart = character:FindFirstChild("HumanoidRootPart")
        if humanoidRootPart then
            local args = {
                [1] = humanoidRootPart.Position,
                [2] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.ThrowPlane:FireServer(unpack(args))
        end
    end
end
wait(0.01)
end
    end)
    
Tabs.Main:AddButton({
        Title = "Destroy Zone Walls",
        Description = "destroys zone walls separating the worlds",
        Callback = function()
            if game.workspace:FindFirstChild("ZoneWalls") then game.workspace.ZoneWalls:Destroy() end
        end
    })
    
Tabs.Main:AddButton({
        Title = "Rejoin (to restore Zone Walls)",
        Description = "",
        Callback = function()
            local TeleportService = game:GetService("TeleportService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
 
local Rejoin = coroutine.create(function()
    local Success, ErrorMessage = pcall(function()
        TeleportService:Teleport(game.PlaceId, LocalPlayer)
    end)
 
    if ErrorMessage and not Success then
        warn(ErrorMessage)
    end
end)
 
coroutine.resume(Rejoin)
        end
    })
    
local Grade = Tabs.Main:AddSection("Upgrade")
local Toggle = Grade:AddToggle("Upgrade002", {Title = "Auto Upgrade All", Default = false })
    Toggle:OnChanged(function(Value)
    getgenv().Upgrade = Value
    while getgenv().Upgrade do
        local args = {[1] = "Walkspeed"}game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
local args = {[1] = "Accuracy"}game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
local args = {[1] = "Strength"}game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(unpack(args))
wait(0.1)
 end
    end)
    
local Dropdown = Grade:AddDropdown("SelectIndividualUpgrade", {
        Title = "Select Upgrade",
        Values = {"Walkspeed", "Accuracy", "Strength"},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        grade = Value
    end)
    
local Toggle = Grade:AddToggle("Upgrade Selected", {Title = "Auto Upgrade Selected Stat", Default = false })
    Toggle:OnChanged(function(Value)
    getgenv().Grade = Value
    while getgenv().Grade do
        game:GetService("ReplicatedStorage").Remotes.Upgrade:FireServer(grade)
wait(0.3)
 end
    end)
    
local Other = Tabs.Main:AddSection("Other")
local Toggle = Other:AddToggle("Rebirth100%", {Title = "Auto Rebirth", Default = false })
    Toggle:OnChanged(function(Value)
    getgenv().Brith = Value
    while getgenv().Brith do
        game:GetService("ReplicatedStorage").Remotes.Rebirth:FireServer()
wait(1)
 end
    end)
    
local Dropdown = Other:AddDropdown("PlaneBuySelect", {
        Title = "Select Plane To Buy",
        Values = {"Red Plane", "Blue Plane", "Wing Plane", "Pink Plane", "Super Plane", "Cool Plane", "Golden Plane", "Airplane"},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        plane = Value
    end)
    
Other:AddButton({
        Title = "Buy Selected Plane",
        Description = "buys the selected plane by the dropdown",
        Callback = function()
game:GetService("ReplicatedStorage").Remotes.BuyPlane:FireServer(plane)
        end
    })
    
--pet
local Dropdown = Tabs.Egg:AddDropdown("Open Egg", {
        Title = "Select Egg",
        Values = {"Common Egg", "Desert Egg", "Ice Egg", "Tropical Egg", "Mush Egg", "Candy Egg", "Air Port Egg", "Ocean Egg", "Magma Egg", "Bouncy Egg", "Stone Egg", "Angel Egg"},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        egg = Value
    end)
    
local Dropdown = Tabs.Egg:AddDropdown("World Egg", {
        Title = "Select World",
        Values = {1,2,3},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        wegg = Value
    end)
    
local Toggle = Tabs.Egg:AddToggle("StartOpenEgg", {Title = "Open Egg", Default = false })
    Toggle:OnChanged(function(Value)
    getgenv().Open = Value
    while getgenv().Open do
game:GetService("ReplicatedStorage").Remotes.HatchEgg:InvokeServer(egg, wegg)
wait(0.1)
 end
    end)
    
--misc
local Toggle = Tabs.Misc:AddToggle("ClaimTimeGifts", {Title = "Auto Claim Time Gifts", Default = false })
    Toggle:OnChanged(function(Value)
    getgenv().Claim = Value
    while getgenv().Claim do
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer("1")
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer("2")
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer("3")
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer("4")
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer("5")
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer("6")
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer("7")
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer("8")
game:GetService("ReplicatedStorage").Remotes.ClaimGift:FireServer("9")
wait(5)
 end
    end)
    
local Toggle = Tabs.Misc:AddToggle("ClaimYen", {Title = "Auto Claim Yen", Default = false })
    Toggle:OnChanged(function(Value)
    getgenv().Yen = Value
    while getgenv().Yen do
game:GetService("ReplicatedStorage").Remotes.ClaimEventGift:FireServer("1")
game:GetService("ReplicatedStorage").Remotes.ClaimEventGift:FireServer("2")
game:GetService("ReplicatedStorage").Remotes.ClaimEventGift:FireServer("3")
game:GetService("ReplicatedStorage").Remotes.ClaimEventGift:FireServer("4")
game:GetService("ReplicatedStorage").Remotes.ClaimEventGift:FireServer("5")
game:GetService("ReplicatedStorage").Remotes.ClaimEventGift:FireServer("6")
game:GetService("ReplicatedStorage").Remotes.ClaimEventGift:FireServer("7")
wait(5)
 end
    end)
    
local Toggle = Tabs.Misc:AddToggle("ClaimSpin", {Title = "Auto Spin", Default = false })
    Toggle:OnChanged(function(Value)
    getgenv().Spin = Value
    while getgenv().Spin do
game:GetService("ReplicatedStorage").Remotes.Spin:InvokeServer()
wait(1)
 end
    end)
    
Tabs.Misc:AddButton({
        Title = "Claim Group Gift",
        Description = "",
        Callback = function()
game:GetService("ReplicatedStorage").Remotes.ClaimGroup:FireServer()
        end
    })
    
--settings
----later