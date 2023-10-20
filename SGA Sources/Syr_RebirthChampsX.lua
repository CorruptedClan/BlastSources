pcall(function()
    if getgenv().Loaded then
        print("Main script has been executed")
    else
        print("Main script has not been executed")
        game.Players.LocalPlayer:Kick("Unautorized UI access !")
        
        while true do end
    end
end)

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()
local SaveManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/SaveManager.lua"))()
local InterfaceManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/dawid-scripts/Fluent/master/Addons/InterfaceManager.lua"))()

local Window = Fluent:CreateWindow({
    Title = "SGA [ Rebirth Champions X ]",
    SubTitle = "by SGA development team",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = true, -- The blur may be detectable, setting this to false disables blur entirely
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.RightControl -- Used when theres no MinimizeKeybind
})

local Tabs = {
    Farms = Window:AddTab({ Title = "Main", Icon = "play" }),
    Eggs = Window:AddTab({ Title = "Eggs", Icon = "egg" }),
    Upgrades = Window:AddTab({ Title = "Upgrades", Icon = "arrow-big-up" }),
    Events = Window:AddTab({ Title = "Event", Icon = "anchor" }),
    Misc = Window:AddTab({ Title = "Misc", Icon = "plus-circle" }),
    Credits = Window:AddTab({ Title = "Credits", Icon = "code" })
}

local Options = Fluent.Options
--if this table doesnt work ill commit self destruction

local Eggs_Table = {}
for i,v in pairs(game:GetService("Workspace").Scripts.Eggs:GetChildren()) do
    table.insert(Eggs_Table, v.Name)
end

--main
local MainSection = Tabs.Farms:AddSection("Click")

local Toggle = MainSection:AddToggle("Autoclick", {Title = "Auto Clicker", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().AutoClick = Value
        
        while getgenv().AutoClick do
game:GetService("ReplicatedStorage").Events.Click3:FireServer()
        wait(0.01)
        end
    end)
    
    local Toggle = MainSection:AddToggle("ClickPotion", {Title = "Auto Use 2x Click Potions", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().UseClickPotion = Value
        
        while getgenv().UseClickPotion do
game:GetService("ReplicatedStorage").Events.Boost:FireServer("x2Clicks")
        wait(5)
        end
    end)
    
    local Dropdown = MainSection:AddDropdown("NumberOfPotions", {
        Title = "Select How Many Potion to Buy",
        Values = {"1", "10", "100"},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        potionnr = Value
    end)
    
    local Toggle = MainSection:AddToggle("BuyClickPotion", {Title = "Auto Buy 2x Click Potion", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().BuyClick = Value
        
        while getgenv().BuyClick do
game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Clicks", potionnr)
        wait(1)
        end
    end)
    --rebirth
    local RebirthSection = Tabs.Farms:AddSection("Rebirths")
    
    local Toggle = RebirthSection:AddToggle("StartRebirthing", {Title = "Auto Rebirth", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().AutoRebirth = Value
        
        while getgenv().AutoRebirth do
game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(rebirthvalue)
        wait(0.01)
        end
    end)
    
    local Dropdown = RebirthSection:AddDropdown("SelectRebirth", {
        Title = "Select Rebirth Button",
        Values = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152,153,154,155,156,157,158,159,160,161,162,163,164,165,166,167,168,169,170,171,172,173,174,175,176,177,178,179,180,181,182,183,184,185,186,187,188,189,190,191,192,193,194,195,196,197,198,199,200,201,202,203,204,205,206,207,208,209,210,211,212,213,214,215,216,217,218,219,220,221,222,223,224,225,226,227,228,229,230,231,232,233,234,235,236,237,238,239,240,241,242,243,244,245,246,247,248,249,250},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        rebirthvalue = Value
    end)
    
    local Toggle = RebirthSection:AddToggle("RebirthPotion", {Title = "Auto Use 2x Rebirth Potions", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().UseRebirthPotion = Value
        
        while getgenv().UseRebirthPotion do
game:GetService("ReplicatedStorage").Events.Boost:FireServer("x2Rebirths")
        wait(5)
        end
    end)
    
    local Dropdown = RebirthSection:AddDropdown("NumberOfPotions", {
        Title = "Select How Many Potion to Buy",
        Values = {"1", "10", "100"},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        potionnr = Value
    end)
    
    local Toggle = RebirthSection:AddToggle("BuyRebirthPotions", {Title = "Auto Buy 2x Rebirth Potion", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().BuyClick = Value
        
        while getgenv().BuyClick do
game:GetService("ReplicatedStorage").Events.Potion:FireServer("x2Rebirths", potionnr)
        wait(1)
        end
    end)
    --eggs
    local EggSection = Tabs.Eggs:AddSection("Eggs")
    
    local Toggle = EggSection:AddToggle("Hatch", {Title = "Start Auto Hatch", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().Hatching = Value
        
        while getgenv().Hatching do
game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(selectegg,eggmultiple)
        wait(0.2)
        end
    end)
    
    local Dropdown = EggSection:AddDropdown("EggChoose", {
        Title = "Select Egg",
        Values = Eggs_Table,
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        selectegg = Value
    end)
    
    local Dropdown = EggSection:AddDropdown("EggMuliplier", {
        Title = "Select How Many Eggs to open",
        Values = {"Single", "Double", "Triple"},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        eggmultiple = Value
    end)
    
    local Toggle = EggSection:AddToggle("Craft", {Title = "Auto Craft", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().CraftPets = Value
        
        while getgenv().CraftPets do
game:GetService("ReplicatedStorage").Functions.Request:InvokeServer("CraftAll",{})
        wait(0.5)
        end
    end)
    
    local Toggle = EggSection:AddToggle("Destruction", {Title = "Auto Draw Pet (Destruction Machine)", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().Draw = Value
        
        while getgenv().Draw do
game:GetService("ReplicatedStorage").Events.DestructionMachine:FireServer()
        wait(1)
        end
    end)
    --upgrades
    local UpSection = Tabs.Upgrades:AddSection("Upgrades")
    
    local Toggle = UpSection:AddToggle("Upgrade", {Title = "Auto Upgrade", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().Upgrade = Value
        
        while getgenv().Upgrade do
game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer(upgrade)
        wait(0.2)
        end
    end)
    
    local Dropdown = UpSection:AddDropdown("EggMuliplier", {
        Title = "Select What to Upgrade",
        Values = {"ClickMultiplier", "FreeAutoClicker", "RebirthButtons", "WalkSpeed", "GemMultiplier", "LuckMultuplier", "FasterAutoClicker"},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        upgrade = Value
    end)
    
    local Toggle = UpSection:AddToggle("Necessary", {Title = "Auto Upgrade Necessary", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().UpgradeSecond = Value
        
        while getgenv().UpgradeSecond do
game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("ClickMultiplier")
wait(0.2)
game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("RebirthButtons")
wait(0.2)
game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("WalkSpeed")
wait(0.2)
game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("GemMultiplier")
wait(0.2)
game:GetService("ReplicatedStorage").Functions.Upgrade:InvokeServer("LuckMultiplier")
        wait(0.2)
        end
    end)
    
    UpSection:AddParagraph({
        Title = "Necessary Upgrades",
        Content = "Click Multiplier, Rebirth Buttons, Walk Speed, Gem Multiplier, Luck Multiplier"
    })
    
    --events
    local Events = Tabs.Events:AddSection("Fall Event")
    
    Events:AddParagraph({
        Title = "There are no ongoing events :(",
        Content = "if there is an ongoing event and its not here then make sure \nto inform the developer of the script"
    })
    
    --misc
    local Misc = Tabs.Misc:AddSection("Extra")
    
    local Toggle = Misc:AddToggle("SpinWheel", {Title = "Auto Spin Wheel", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().Spin = Value
        
        while getgenv().Spin do
game:GetService("ReplicatedStorage").Functions.Spin:InvokeServer()
        wait(1)
        end
    end)
    
    local Toggle = Misc:AddToggle("ReedemChest", {Title = "Auto Reedem Chests", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().Chest = Value
        
        while getgenv().Chest do
game:GetService("ReplicatedStorage").Events.Chest:FireServer("Spawn")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Beach")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Winter")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Nuclear")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Hell")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Space")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Galaxy")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Shadow")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Hacker")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Clover")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Chest:FireServer("Fantasy")
        wait(1)
        end
    end)
    
    local Aqua = Tabs.Misc:AddSection("Aqua")
    
    local Toggle = Aqua:AddToggle("AquaBuy", {Title = "Auto Buy Aqua Potion", Default = false })
    Toggle:OnChanged(function(Value)
        getgenv().Spin = Value
        
        while getgenv().Spin do
game:GetService("ReplicatedStorage").Events.Potion:FireServer(aquaselect,potionnr,"aqua")
        wait(1)
        end
    end)
    
    local Dropdown = Aqua:AddDropdown("AquaPotionSelect", {
        Title = "Select Aqua Potion",
        Values = {"x3Clicks", "x3Gems", "x2Luck", "WalkSpeed", "x3Rebirths", "x2PetLevel"},
        Multi = false,
        Default = 1,
    })
    Dropdown:OnChanged(function(Value)
        aquaselect = Value
    end)
    
    Misc:AddButton({
        Title = "Reedem all Codes",
        Description = " ",
        Callback = function()
            game:GetService("ReplicatedStorage").Events.Codes:FireServer("moon")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("heaven")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("nuclear")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("thanksfor50k")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("void")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("spooky")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("75kthanks")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("cave")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("easter")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("100kthanks")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("easter2")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("steampunk")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("steampunk")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("hell")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("50m")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("space")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("mars")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("alien")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("galactic")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("60m")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("summer")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("150kthanks")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("kraken")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("lab")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("fantasy")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("75m")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("neon")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("shadow")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("tutel")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("destruction")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("sun")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("saturn")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("hacker")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("blackhole")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("aqua")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("axolotls")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("update32")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("pixel")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("halloween")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("evil")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("90m")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("seacave")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("ancient")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("pirate")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("95m")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("christmas")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("santa")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("2023")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("fish")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("ocean")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("molten")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("flower")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("100m")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("anniversary")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("jungle")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("dragon")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("clover")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("omgfreex3luck")

		wait(1)

		game:GetService("ReplicatedStorage").Events.Codes:FireServer("fairy")
        end
    })
    
    local Toggle = Misc:AddToggle("RewardsClaim", {Title = "Claim Time Rewards", Default = true })
    Toggle:OnChanged(function(Value)
		    getgenv().Time = Value
		while getgenv().Time do
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(1)
wait(0.5)
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(2)
wait(0.5)
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(3)
wait(0.5)
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(4)
wait(0.5)
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(5)
wait(0.5)
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(6)
wait(0.5)
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(7)
wait(0.5)
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(8)
wait(0.5)
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(9)
wait(0.5)
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(10)
wait(0.5)
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(11)
wait(0.5)
game:GetService("ReplicatedStorage").Functions.ClaimPlaytimeReward:InvokeServer(12)
wait(1)
end
    end)
    
    local Toggle = Misc:AddToggle("Passclaim", {Title = "Claim Pass Rewards", Default = true })
    Toggle:OnChanged(function(Value)
		    getgenv().Pass = Value
		while getgenv().Pass do
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 1)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 2)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 3)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 4)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 5)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 6)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 7)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 8)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 9)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 10)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 11)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 12)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 13)
wait(1)
game:GetService("ReplicatedStorage").Events.Season:FireServer("Free", 14)
wait(1)
end
    end)
    
    local Player = Tabs.Misc:AddSection("Player")
    
    local Slider = Player:AddSlider("SpeedHacks", {
        Title = "Select Speed",
        Description = " ",
        Default = 16,
        Min = 16,
        Max = 200,
        Rounding = 1,
        Callback = function(Value)
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    })
    Slider:OnChanged(function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end)
    
    local Toggle = Player:AddToggle("NoAfkKick", {Title = "Anti AFK", Default = true })
    Toggle:OnChanged(function(Value)
        game:GetService("Players").LocalPlayer.Idled:connect(function()
		    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		    wait(1)
		    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
    end)

--credits
Tabs.Credits:AddParagraph({
        Title = "Credits",
        Content = "Scripter - EdxymRBLX \nSGA Owner - SponsoParNordVpn"
    })

Tabs.Credits:AddButton({
        Title = "Join Discord!",
        Description = "Copy SGA Discord Link",
        Callback = function()
            setclipboard("https://discord.com/invite/6MpMKEBhYE")
        end
    })

Tabs.Credits:AddButton({
        Title = "Subscribe to Sponso's youtube!",
        Description = "Copy Sponso's YouTube Link",
        Callback = function()
            setclipboard("https://m.youtube.com/@le_rat2308/videos")
        end
    })

Tabs.Credits:AddButton({
        Title = "Subscribe to EdxymRBLX's youtube!",
        Description = "Copy EdxymRBLX's YouTube Link",
        Callback = function()
            setclipboard("https://m.youtube.com/@EdxymOnlind/videos")
        end
    })
