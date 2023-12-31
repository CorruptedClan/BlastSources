-- KEY SYSTEM V2 UI LIBRARY:
-- UI by mr.xrer | Code by mstudio45

local KeySystemUI = loadstring(game:HttpGet("https://raw.githubusercontent.com/MaGiXxScripter0/keysystemv2api/master/ui/xrer_mstudio45.lua"))()
KeySystemUI.New({
    ApplicationName = "blasthub", -- Your Key System Application Name
    Name = "Blast Hub Key System", -- Your Script name
    Info = "Get key for Blast Hub", -- Info text in the GUI, keep empty for default text.
    DiscordInvite = "" -- Optional.
})
repeat task.wait() until KeySystemUI.Finished() or KeySystemUI.Closed
if KeySystemUI.Finished() and KeySystemUI.Closed == false then
    local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Blast Hub [Clicker Simulator]", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})


-- Don't mind this


local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Main"
})


Tab:AddToggle({
	Name = "Auto Click",
	Default = false,
	Callback = function(Value)
		           getgenv().Click = Value
		
		while getgenv().Click do
		game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(1)
		wait(0.01)
	    end
        end  
})


Tab:AddToggle({
	Name = "Super fast click",
	Default = false,
	Callback = function(Value)
		getgenv(). Super = Value
		
		while getgenv(). Super do
		game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ClickService.Click:FireServer(1)
		wait(0.0001)
		end
	    end    
})


Tab:AddToggle({
	Name = "Auto Attack Boss",
	Default = false,
	Callback = function(Value)
		     getgenv(). Boss = Value
		
		while getgenv(). Boss do
		game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.CursorCannonService.FireBoss:FireServer("Zombie")
		wait(0.01)
		end
	    end    
})


Tab:AddToggle({
	Name = "Auto Rebirth",
	Default = false,
	Callback = function(Value)
		           getgenv().Rebirth = Value
		
		while getgenv().Rebirth do
		game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.RebirthService.BuyRebirths:FireServer(rebirth)
		wait(0.2)
		end
	    end    
})


Tab:AddDropdown({
	Name = "Select Rebirths",
	Default = "1",
	Options = {"1", "10", "100", "1000", "10000", "100000", "1000000", "10000000", "100000000", "1000000000", "10000000000"},
	Callback = function(Value)
		rebirth = Value
	end    
})


Tab:AddToggle({
	Name = "Auto Hatch",
	Default = false,
	Callback = function(Value)
		     getgenv().Hatch = Value
		
		while getgenv().Hatch do
		game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.EggService.Purchase:FireServer(Eggs)
		wait(0.2)
		end
	end    
})


Tab:AddDropdown({
	Name = "Select Eggs",
	Default = "basic",
	Options = {"basic", "lava", "desert", "ocean", "winter", "toxic", "candy", "forest", "storm", "blocks", "space", "dominus", "infinity", "future", "city", "moon", "fire", "halloween"},
	Callback = function(Value)
		Eggs = Value
	end    
})


Tab:AddButton({
	Name = "Daily Chest",
	Callback = function()
      		game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ChestService.OpenChest:FireServer("daily1")
  	end    
})


Tab:AddButton({
	Name = "Group Chest",
	Callback = function()
      		game:GetService("ReplicatedStorage").Aero.AeroRemoteServices.ChestService.OpenChest:FireServer("group1")
  	end    
})


local Tab = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


Tab:AddButton({
	Name = "Spawn",
	Callback = function()
      		local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(510.3188781738281, 9.268750190734863, -318.26312255859375)
  	end    
})


Tab:AddButton({
	Name = "Lava",
	Callback = function()
      		local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(-1690.38525390625, 6.835058689117432, -734.6488647460938)
  	end    
})


Tab:AddButton({
	Name = "Desert",
	Callback = function()
      		local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(2288.6611328125, 6.822010040283203, 1087.666015625)
  	end    
})


Tab:AddButton({
	Name = "Ocean",
	Callback = function()
      		local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(-258.01800537109375, 9.58505630493164, 2065.25439453125)
  	end    
})


Tab:AddButton({
	Name = "Winter",
	Callback = function()
      		local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(-2195.280029296875, 6.8350605964660645, 409.9980163574219)
  	end    
})


Tab:AddButton({
	Name = "Toxic",
	Callback = function()
      		local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(-1676.339111328125, 7.1150617599487305, -2040.38427734375)
  	end    
})


Tab:AddButton({
	Name = "Candy",
	Callback = function()
      		local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(1428.39990234375, 6.435079097747803, -2241.861572265625)
  	end    
})


Tab:AddButton({
	Name = "Forest",
	Callback = function()
      		local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(1845.1798095703125, 6.727390289306641, 3259.60791015625)
  	end    
})


Tab:AddButton({
	Name = "Storm",
	Callback = function()
      		local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(-284.0956726074219, 8.105056762695312, -2586.98681640625)
  	end    
})


local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Owner, Scripting: Robloxblast, Co Owner Scripting: RoJav"
})
else
    print("Player closed the GUI.")
end

--next key v2
--------local Lib =loadstring(game:HttpGet("https://raw.githubusercontent.com/OopssSorry/KeySystem2Lib/main/Lib.lua"))()
------Lib.Application = "blasthub"	 		-- <str>
------Lib.Tittle = "Blast Hub Key System" 			-- <str>
------Lib.Description = "get key to acces blast hub"	   	-- <str>
------Lib.Logo = nil 						-- <str | none>
-----Lib.SaveKey = true					 -- <bool>
-----Lib.SecureVersion = true 				-- <bool>
------local Data = Lib:ActiveKeySystem()			-- Activate key system

------if Data['Success'] then
------	MakeUI()
------	if Data["Premium"] then
	----	MakeUI()
	--	else
	------	print("wrong key")
--	end
--end