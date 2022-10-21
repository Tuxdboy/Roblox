getgenv().farm = false

function InfiniteYield()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end

function GodMode()
    game:GetService("ReplicatedStorage").GameFunctions.StatChange:FireServer("Energy", 10000000)
    game:GetService("ReplicatedStorage").GameFunctions.StatChange:FireServer("Health", 10000000)
end

function ESP()
    for _,v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Character:FindFirstChild("Object") then
            local Highlight = Instance.new("Highlight", v.Character.Object)
            Highlight.FillColor = Color3.fromRGB(255, 255, 0)
    end
    v.Character.ChildAdded:Connect(function(child)
        if child.Name == "Object" then
            local Highlight = Instance.new("Highlight", v.Character.Object)
            Highlight.FillColor = Color3.fromRGB(255, 255, 0)
            end
        end)
    end
    game:GetService("Players").PlayerAdded:Connect(function(player)
        if player.Character:FindFirstChild("Object") then
            local Highlight = Instance.new("Highlight", player.Character.Object)
            Highlight.FillColor = Color3.fromRGB(255, 255, 0)
    end
    player.Character.ChildAdded:Connect(function(child)
        if child.Name == "Object" then
            local Highlight = Instance.new("Highlight", player.Characterv.Object)
            Highlight.FillColor = Color3.fromRGB(255, 255, 0)
            end
        end)
    end)
end

function AutoFarmParkour()
    while task.wait() and farm do
        if not farm then break end
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-93.90117645263672, 61.39884567260742, 143.81243896484375)
    end
end

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local NewUI = Material.Load({
	Title = "Blox Hunt — By Tuxdboy",
	Style = 1,
	SizeX = 300,
	SizeY = 220,
	Theme = "Dark"
})

local NewPage = NewUI.New({
	Title = "Main"
})

local NewButton = NewPage.Button({
    Text = "Infinite Yield",
    Callback = function()
        InfiniteYield()
    end
})

local NewButton = NewPage.Button({
    Text = "God Mode",
    Callback = function()
        GodMode()
    end
})

local NewButton = NewPage.Button({
    Text = "ESP",
    Callback = function()
        ESP()
    end
})

local NewToggle = NewPage.Toggle({
    Text = "Autofarm Parkour",
    Callback = function(value)
        farm = value
        AutoFarmParkour()
    end,
    Enabled = farm
})
