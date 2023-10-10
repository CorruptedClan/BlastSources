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
local Window = OrionLib:MakeWindow({Name = "Blast Hub [Break In 2]", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = <string> - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]


local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Food"
})


Tab:AddToggle({
	Name = "Inf Cookie",
	Default = false,
	Callback = function(Value)
		   getgenv(). cookie = Value
		
		while getgenv(). cookie do
		game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Cookie")
		wait(0.001)
		end
	    end   
})


Tab:AddToggle({
	Name = "Inf Apple",
	Default = false,
	Callback = function(Value)
		getgenv(). apple = Value
		
		while getgenv(). apple do
		game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Apple")
		wait(0.001)
		end
	    end    
})


Tab:AddToggle({
	Name = "Inf Rainbow Pizza",
	Default = false,
	Callback = function(Value)
		   getgenv(). Rainbow = Value
		
		while getgenv(). Rainbow do
		game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("RainbowPizza")
		wait(0.001)
		end
    	end    
})


Tab:AddToggle({
	Name = "Inf Golden Apple",
	Default = false,
	Callback = function(Value)
		   getgenv(). Golden = Value
		
		while getgenv(). Golden do
		game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("GoldenApple")
		wait(0.001)
		end
	    end    
})


Tab:AddToggle({
	Name = "Inf Gold Pizza",
	Default = false,
	Callback = function(Value)
		  getgenv(). Gold = Value
		
		while getgenv(). Gold do
		game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("GoldPizza")
		wait(0.001)
		end
	    end    
})


Tab:AddToggle({
	Name = "Inf Chips",
	Default = false,
	Callback = function(Value)
		 getgenv(). Chips = Value
		
		while getgenv(). Chips do
		game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Chips")
		wait(0.001)
		end
    	end    
})


Tab:AddToggle({
	Name = "Inf Pizza",
	Default = false,
	Callback = function(Value)
		 getgenv(). Normal = Value
		
		while getgenv(). Normal do
		game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Pizza")
		wait(0.001)
		end
    	end    
})


Tab:AddToggle({
	Name = "Inf Bloxy Cola",
	Default = false,
	Callback = function(Value)
		 getgenv(). Cola = Value
		
		while getgenv(). Cola do
		game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("BloxyCola")
		wait(0.001)
		end
    	end    
})


Tab:AddToggle({
	Name = "Inf Stacked Cola",
	Default = false,
	Callback = function(Value)
         getgenv(). Stack = Value
         
         while getgenv(). Stack do
         game:GetService("ReplicatedStorage").Events.StackItem:FireServer("BloxyCola")
         wait(0.2)
         end
    	end    
})


Tab:AddToggle({
	Name = "Inf Stacked Pizza Box",
	Default = false,
	Callback = function(Value)
		getgenv(). Stapi = Value
		
		while getgenv(). Stapi do
		game:GetService("ReplicatedStorage").Events.StackItem:FireServer("PizzaBox")
		wait(0.2)
		end
    	end    
})


Tab:AddToggle({
	Name = "Inf Stacked Rainbow Pizza",
	Default = false,
	Callback = function(Value)
		getgenv(). Rainsta = Value
		
		while getgenv(). Rainsta do
		game:GetService("ReplicatedStorage").Events.StackItem:FireServer("RainbowPizzaBox")
		wait(0.2)
		end
	    end    
})


local Section = Tab:AddSection({
	Name = "Weapon (More Weapons Soon)"
})


Tab:AddButton({
	Name = "Get CrowBar",
	Callback = function()
      	 game:GetService("ReplicatedStorage").Events.GiveCrowbar:FireServer(workspace.TheHouse.Rack)
  	end    
})


Tab:AddButton({
	Name = "Get Hammer",
	Callback = function()
      		game:GetService("ReplicatedStorage").Events.ReplicateVending:FireServer("Weapons","Hammer")
  	end    
})


local Tab = Window:MakeTab({
	Name = "Others",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Others"
})


Tab:AddButton({
	Name = "House",
	Callback = function()
      		local rootPart = game.Players.LocalPlayer.Character.HumanoidRootPart
rootPart.CFrame = CFrame.new(-208.105712890625, 29.10904884338379, -789.8094482421875)
  	end    
})


Tab:AddToggle({
	Name = "Auto Turn on Power",
	Default = false,
	Callback = function(Value)
		 getgenv(). Power = Value
		
		while getgenv(). Power do
		game:GetService("ReplicatedStorage").Events.LightFlipped:FireServer()
		wait(0.2)
		end
    	end    
})


Tab:AddButton({
	Name = "Get Key",
	Callback = function()
      		game:GetService("ReplicatedStorage").Events.ReplicateVending:FireServer("Drinks","Key")
  	end    
})


local Tab = Window:MakeTab({
	Name = "Credits",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})


local Section = Tab:AddSection({
	Name = "Owner, Scripter - Robloxblast"
})


local Section = Tab:AddSection({
	Name = "Key System: RoJav"
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