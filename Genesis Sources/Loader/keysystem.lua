--[[
if debug.info(1, "l") ~= 1 then
    game.Players.LocalPlayer:Kick("Safe dude..")
        while true do end
else
    ---handle----
end


pcall(game.HttpGet, game, setmetatable({}, {
    __tostring = function()
        print("Kick Player")
        return ""
    end,
}))

local functions = {print,warn,error,writefile,makefolder,rconsoleprint,setclipboard,rconsoleerr,rconsolewarn}
local hell_nah = {"githubusercontent","Yourgithubusername"}
for i,v in pairs(functions) do
    local old
    old = hookfunction(v, function(...)
        local content = {...}
        for i2,v2 in pairs(content) do
            for i3,v3 in pairs(hell_nah) do
                if string.find(string.lower(tostring(i2)),string.lower(tostring(v3))) or string.find(string.lower(tostring(v2)),string.lower(tostring(v3))) then
                    content = " So Let's raise the bar"
                    while true do end
                    return
                end
            end
        end
        return old(...)
    end)
end

local function CheckForSpy()
    local core = game:GetService("CoreGui")
    local keyword = "spy"
    
    for _, v in pairs(core:GetDescendants()) do
        if v:IsA("TextLabel") or v:IsA("TextButton") or v:IsA("TextBox") then
            if string.find(string.lower(v.Name), string.lower(keyword)) or string.find(string.lower(v.Text), string.lower(keyword)) then
                       while true do end
                end
            end
        end
end



CheckForSpy()

game:GetService("CoreGui").ChildAdded:Connect(function()
CheckForSpy()
end)

local service = "genesis" --- Change this to your service name 

local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local PandaAuth = loadstring(game:HttpGet("https://pandadevelopment.net/service_api/PandaBetaLib.lua"))()
local Window = OrionLib:MakeWindow({Name = "Project Genesis | Key System", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxthumb://type=Asset&id=15489113836&w=1000&h=1000",
	PremiumOnly = false
})
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key system loaded !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
local Section = Tab:AddSection({
	Name = "Validate keys"
})
local function RandomString(length)
    local randomString = ""
    for i = 1, length do
        local randomNumber = math.random(97, 122)
        randomString = randomString .. string.char(randomNumber)
    end
    return tostring(randomString)
end

Tab:AddTextbox({
	Name = "Any key check",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
	if PandaAuth:ValidateKey(service, RandomString(10)) == true then
	print("Imagine bypassing :skull")
	while true do end
	else if PandaAuth:ValidateKey(service, Value) then
	OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key validated !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
else
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key not valid !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
	end
	end	  
	end
})

Tab:AddTextbox({
	Name = "Normal key check",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
	if PandaAuth:ValidateNormalKey(service, RandomString(10)) == true then
	print("Imagine bypassing :skull")
	
	else if PandaAuth:ValidateNormalKey(service, Value) then
	OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is normal !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
else
if PandaAuth:ValidateKey(service, Value) then 
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is premium, not normal !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
else
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is invalid !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
wait(1)
LoadScript()
end
	end
	end	  
	end
})

Tab:AddTextbox({
	Name = "Premium key check",
	Default = "default box input",
	TextDisappear = true,
	Callback = function(Value)
	if PandaAuth:ValidatePremiumKey(service, RandomString(10)) == true then
	print("Imagine bypassing :skull")
	
	else if PandaAuth:ValidatePremiumKey(service, Value) == true then
	OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is premium !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
wait(1)
LoadScript()
else
if PandaAuth:ValidateKey(service, Value) then 
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is normal, not premium !",
	Image = "rbxthumb://type=Asset&w=768&h=432&id=13797614864",
	Time = 5
})
else
OrionLib:MakeNotification({
	Name = "Genesis",
	Content = "Key is invalid !",
	Image = "rbxassetid://4483345998",
	Time = 5
})
end
	end
	end	  
	end
})

local Others = Tab:AddSection({
	Name = "Get Key"
})


Tab:AddButton({
	Name = "Copy get key link",
	Callback = function()
      		setclipboard(PandaAuth:GetLink(service))
      print(PandaAuth:GetLink(service))
  	end    
})

function LoadScript()
]]
loadstring(game:HttpGet("https://raw.githubusercontent.com/CorruptedClan/BlastSources/main/Genesis%20Sources/Loader/source.lua"))()
--[[
Orion:Destroy()
end
]]