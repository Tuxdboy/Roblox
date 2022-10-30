function InfiniteYield()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source"))()
end

function FindSpookWood()
    function toClipboard(String)
        local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
        if clipBoard then
            clipBoard(String)
            notify("Clipboard", "Copied to clipboard")
        else
            notify("Clipboard", "Your exploit doesn't have the ability to use the clipboard")
        end
    end
    local ToFind = "Spooky"
    local Tree
    for i, v in pairs(workspace:GetChildren()) do
        if v.Name == "TreeRegion" then
            for l, c in pairs(v:GetChildren()) do
                if c:FindFirstChild("TreeClass") then
                    if c.TreeClass.Value == ToFind then
                        Tree = c
                        break
                    end
                end
            end
        end
    end
    if Tree then
        local r = game.Players.LocalPlayer.Character.HumanoidRootPart
        r.CFrame = CFrame.new(Tree.WoodSection.Position)
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Spook Finder",
                Text = "Found Spooky!\nJobID has been copied to clipboard.",
                Duration = 15
            }
        )
        local jobId = "Roblox.GameLauncher.joinGameInstance(" .. game.PlaceId .. ', "' .. game.JobId .. '")'
        toClipboard(jobId)
    else
        if not tree then
            wait(1.2)
            game.StarterGui:SetCore(
                "SendNotification",
                {
                    Title = "Spook Finder",
                    Text = "There is no Spooky here.",
                    Duration = 10
                }
            )
            print("There is no Spooky here.")
            local module =
                loadstring(game:HttpGet "https://raw.githubusercontent.com/Tuxdboy/Roblox/main/Lumber%20Tycoon%202/1.lua")()
            module:Teleport(game.PlaceId)
        end
    end
end

function FindSinisterWood()
    function toClipboard(String)
        local clipBoard = setclipboard or toclipboard or set_clipboard or (Clipboard and Clipboard.set)
        if clipBoard then
            clipBoard(String)
            notify("Clipboard", "Copied to clipboard")
        else
            notify("Clipboard", "Your exploit doesn't have the ability to use the clipboard")
        end
    end
    local ToFind = "SpookyGlow"
    local Tree
    for i, v in pairs(workspace:GetChildren()) do
        if v.Name == "TreeRegion" then
            for l, c in pairs(v:GetChildren()) do
                if c:FindFirstChild("TreeClass") then
                    if c.TreeClass.Value == ToFind then
                        Tree = c
                        break
                    end
                end
            end
        end
    end
    if Tree then
        local r = game.Players.LocalPlayer.Character.HumanoidRootPart
        r.CFrame = CFrame.new(Tree.WoodSection.Position)
        game.StarterGui:SetCore(
            "SendNotification",
            {
                Title = "Sinister Finder",
                Text = "Found Sinister!\nJobID has been copied to clipboard.",
                Duration = 15
            }
        )
        local jobId = "Roblox.GameLauncher.joinGameInstance(" .. game.PlaceId .. ', "' .. game.JobId .. '")'
        toClipboard(jobId)
    else
        if not tree then
            wait(1.2)
            game.StarterGui:SetCore(
                "SendNotification",
                {
                    Title = "Sinister Finder",
                    Text = "There is no Sinister here.",
                    Duration = 10
                }
            )
            print("There is no Sinister here.")
            local module =
                loadstring(game:HttpGet "https://raw.githubusercontent.com/Tuxdboy/Roblox/main/Lumber%20Tycoon%202/1.lua")()
            module:Teleport(game.PlaceId)
        end
    end
end


local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local NewUI = Material.Load({
	Title = "Lumber Tycoon 2 — By Tuxdboy",
	Style = 1,
	SizeX = 300,
	SizeY = 185,
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
    Text = "Find Spook Wood",
    Callback = function()
        FindSpookWood()
    end
})

local NewButton = NewPage.Button({
    Text = "Find Sinister Wood",
    Callback = function()
        FindSinisterWood()
    end
})
