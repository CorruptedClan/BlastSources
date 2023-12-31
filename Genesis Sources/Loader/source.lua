print("happy usage")
local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("Genesis Z - Loader [BLADE BALL RELEASED]", "")

local scripts = DrRayLibrary.newTab("Scripts", "ImageIdHere")
local player = DrRayLibrary.newTab("Player", "ImageIdHere")
local misc = DrRayLibrary.newTab("Misc", "ImageIdHere")

--scripts
scripts.newButton("Syr Hub | Universal", "Syr Hub", function()
    LoadUniversal()
end)

scripts.newButton("Blade Ball", "Genesis Z", function()
    LoadBladeBall()
end)

scripts.newButton("Arm Wrestling Simulator", "Genesis Z", function()
    LoadAWS()
end)

scripts.newButton("Rebirth Champions X", "Genesis Z", function()
    LoadRCX()
end)

scripts.newButton("Ninja Legends", "Genesis Z", function()
    LoadNL()
end)

scripts.newButton("Obby buy You're on a Bike", "Genesis Z", function()
    LoadOBYAB()
end)

--player
player.newSlider("Player Speed", "changes the player's speed", 250, false, function(num)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = num
end)

player.newButton("Enable Noclip", "disables collisions", function()
    noclip()
end)

player.newButton("Disable Noclip", "enables collisions", function()
    clip()
end)


function noclip()
	Clip = false
	local function Nocl()
		if Clip == false and game.Players.LocalPlayer.Character ~= nil then
			for _,v in pairs(game.Players.LocalPlayer.Character:GetDescendants()) do
				if v:IsA('BasePart') and v.CanCollide and v.Name ~= floatName then
					v.CanCollide = false
				end
			end
		end
		wait() -- basic optimization
	end
	Noclip = game:GetService('RunService').Stepped:Connect(Nocl)
end

function clip()
	if Noclip then Noclip:Disconnect() end
	Clip = true
end

noclip() -- to toggle noclip() and clip()

--misc

misc.newButton("Launch Mobile Keyboard", "a virtual keyboard good for mobile players", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/advxzivhsjjdhxhsidifvsh/mobkeyboard/main/main.txt", true))()
end)

misc.newButton("Launch Infinite Yield", "powerful exploiting tool", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source", true))()
end)

--function
function LoadUniversal()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/BackOnTop/main/SyrHubRemastered.lua"))()
end

function LoadAWS()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/BlastSources/main/Genesis%20Sources/GenZ_AWS.lua"))()
end

function LoadRCX()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/BlastSources/main/Genesis%20Sources/GenZ_RCX.lua"))()
end

function LoadYAP()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/BlastSources/main/Genesis%20Sources/GenZ_YAP.lua"))()
end

function LoadNL()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/BlastSources/main/Genesis%20Sources/GenZ_NL.lua"))()
end

function LoadOBYAB()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/BlastSources/main/Genesis%20Sources/GenZ_OBYAB.lua"))()
end

function LoadBladeBall()
loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/BlastSources/main/Genesis%20Sources/GenZ_Blade.lua"))()
end