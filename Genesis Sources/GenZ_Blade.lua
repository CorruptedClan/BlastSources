--im bored of scripting i might leave for a bit i aint gonna lie
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Genesis Z | Blade Ball [BETA]",
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

--start

--function
function Manual()
local toggleState = false
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.ResetOnSpawn = false
ScreenGui.Name = "Button"

local button = Instance.new("TextButton")
button.Text = "Manual Parry"
button.BackgroundTransparency = 0
button.BackgroundColor3 = Color3.new(1, 1, 1)
button.Size = UDim2.new(0, 150, 0, 70)
button.Parent = ScreenGui
button.Position = UDim2.new(0, 100, 0, 100)

local topBar = Instance.new("Frame")
topBar.Size = UDim2.new(1, 0, 0, 15)
topBar.BackgroundColor3 = Color3.new(0, 0, 0)
topBar.Parent = button

local originalColor = button.BackgroundColor3
local grayColor = Color3.new(0.7, 0.7, 0.7)

local dragging = false
local offset = Vector2.new()
local player = game.Players.LocalPlayer

topBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        offset = button.Position - UDim2.new(0, input.Position.X, 0, input.Position.Y)
        button.BackgroundColor3 = grayColor
    end
end)

topBar.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local inputPosition = input.Position
        local newPosition = UDim2.new(0, inputPosition.X, 0, inputPosition.Y) + offset
        button.Position = newPosition
    end
end)

topBar.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
        button.BackgroundColor3 = originalColor
    end
end)

button.MouseButton1Click:Connect(function()
    toggleState = not toggleState
    button.Text = tostring(toggleState)
    getgenv().Spam = toggleState
    while getgenv().Spam do
game.ReplicatedStorage.Remotes.ParryButtonPress:Fire()
        wait(0.01)
    end
end)

ScreenGui.Parent = player:FindFirstChild("PlayerGui")
end

function autoParry()
local Debug = false -- Set this to true if you want my debug output.
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Players = game:GetService("Players")

local Player = Players.LocalPlayer or Players.PlayerAdded:Wait()
local Remotes = ReplicatedStorage:WaitForChild("Remotes", 9e9) -- A second argument in waitforchild what could it mean?
local Balls = workspace:WaitForChild("Balls", 9e9)
local function print(...) -- Debug print.
    if Debug then
        warn(...)
    end
end
local function VerifyBall(Ball) -- Returns nil if the ball isn't a valid projectile; true if it's the right ball.
    if typeof(Ball) == "Instance" and Ball:IsA("BasePart") and Ball:IsDescendantOf(Balls) and Ball:GetAttribute("realBall") == true then
        return true
    end
end
local function IsTarget() -- Returns true if we are the current target.
    return (Player.Character and Player.Character:FindFirstChild("Highlight"))
end
local function Parry() -- Parries.
    Remotes:WaitForChild("ParryButtonPress"):Fire()
end
Balls.ChildAdded:Connect(function(Ball)
    if not VerifyBall(Ball) then
        return
    end
    print(`Ball Spawned: {Ball}`)
    local OldPosition = Ball.Position
    local OldTick = tick()
    Ball:GetPropertyChangedSignal("Position"):Connect(function()
        if IsTarget() then -- No need to do the math if we're not being attacked.
            local Distance = (Ball.Position - workspace.CurrentCamera.Focus.Position).Magnitude
            local Velocity = (OldPosition - Ball.Position).Magnitude -- Fix for .Velocity not working. Yes I got the lowest possible grade in accuplacer math.
            print(`Distance: {Distance}\nVelocity: {Velocity}\nTime: {Distance / Velocity}`)
            if (Distance / Velocity) <= 10 then -- Sorry for the magic number. This just works. No, you don't get a slider for this because it's 2am.
                Parry()
            end
        end
        if (tick() - OldTick >= 1/60) then -- Don't want it to update too quickly because my velocity implementation is aids. Yes, I tried Ball.Velocity. No, it didn't work.
            OldTick = tick()
            OldPosition = Ball.Position
        end
    end)
end)
end

--auto parry
local Parry = Tabs.Main:AddSection("Auto Parry")

    local Toggle = Parry:AddToggle("AitoParry", {Title = "Auto Parry", Default = false })
Toggle:OnChanged(function(Value)
_G.Parry = Value
while _G.Parry == true do
        autoParry()
        wait(0.3)
        end
    end)
    
local Toggle = Parry:AddToggle("MobileSpam", {Title = "Spam Parry (hold block button)", Default = false })
Toggle:OnChanged(function(Value)
getgenv().exeSpam = Value
getgenv().SpamSpeed = 1 -- 1-25

if getgenv().exeSpam then
game:GetService("StarterGui"):SetCore("SendNotification",{
	Title = "by Genesis Dev Team",
	Text = "Hold Block button to Spam",
	Duration = 5
})

	loadstring(game:HttpGet("https://raw.githubusercontent.com/Hosvile/Refinement/main/MC%3ABlade%20Ball%20Spam",true))()
end
    end)
    
Parry:AddButton({
        Title = "Spam Toggle (close range)",
        Description = "",
        Callback = function()
Manual()
        end
    })
    
    Tabs.Credits:AddButton({
        Title = "EdxymRBLX - Copy YouTube",
        Description = "https://www.youtube.com/@EdxymOnline",
        Callback = function()
setclipboard("https://www.youtube.com/@EdxymOnline")
        end
    })
    Tabs.Credits:AddButton({
        Title = "Genesis Project - Copy Discord",
        Description = "https://dsc.gg/genesis-z",
        Callback = function()
setclipboard("https://dsc.gg/genesis-z")
        end
    })
    Tabs.Credits:AddButton({
        Title = "Genesis Website - Copy Website",
        Description = "https://bit.ly/genesis-z",
        Callback = function()
setclipboard("https://bit.ly/genesis-z")
        end
    })
  --[[  
local Toggle = Parry:AddToggle("UseRage", {Title = "Auto Use Raging Deflect", Default = false })
Toggle:OnChanged(function(Value)
UseRage = Value
    end)
    ]]
    --trash values
local runService = game:GetService("RunService")
local workspace = game:GetService("Workspace")
local players = game:GetService("Players")
local localPlayer = players.LocalPlayer
local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
local abilitiesFolder = character:WaitForChild("Abilities")
local UserInputService = game:GetService("UserInputService")
local replicatedStorage = game:GetService("ReplicatedStorage")
local heartbeatConnection
local upgrades = localPlayer.Upgrades
local UseRage = false

function RageParry()
local isCheckingRage = false

if timeUntilImpact(ball.Velocity, distanceToPlayer, charVel) < getDynamicThreshold(ballVelocityTowardsPlayer) then
            if character.Abilities["Raging Deflection"].Enabled and UseRage == true then
                if not isCheckingRage then
                    isCheckingRage = true
                    abilityButtonPress:Fire()
                    if not isWalkSpeedZero() then
                        abilityButtonPress:Fire()
                    end
                    isCheckingRage = false
                end
            else
                abilityButtonPress:Fire()
            end
        end
    end
 
 local function isWalkSpeedZero()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            return humanoid.WalkSpeed == 0
        end
        return false
    end