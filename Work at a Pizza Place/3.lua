function MainGUI()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tuxdboy/Roblox/main/Work%20at%20a%20Pizza%20Place/1.lua"))()
end

function AutoFarmGUI()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tuxdboy/Roblox/main/Work%20at%20a%20Pizza%20Place/2.lua"))()
end

function StartingZoneTeleport()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(49, 3, 198)
end

function CashierAreaTeleport()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(48, 4, 80)
end

function CookAreaTeleport()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(42, 4, 61)
end

function BoxerAreaTeleport()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(55, 4, 31)
end

function SupplierAreaTeleport()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(8, 13, -1020)
end

function DeliveryAreaTeleport()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(64, 4, -17)
end

function ManagerAreaTeleport()
    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(23.7, 2.59944, 6.5)
end

local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local NewUI = Material.Load({
	Title = "Work at a Pizza Place — By Tuxdboy",
	Style = 1,
	SizeX = 300,
	SizeY = 220,
	Theme = "Dark"
})

local NewPage = NewUI.New({
	Title = "Main"
})

local NewButton = NewPage.Button({
    Text = "Main GUI",
    Callback = function()
        MainGUI()
    end
})

local NewButton = NewPage.Button({
    Text = "Auto-Farm GUI",
    Callback = function()
        AutoFarmGUI()
    end
})

local NewPage = NewUI.New({
	Title = "Teleport"
})

local NewButton = NewPage.Button({
    Text = "Starting Zone",
    Callback = function()
        StartingZoneTeleport()
    end
})

local NewButton = NewPage.Button({
    Text = "Cashier Area",
    Callback = function()
        CashierAreaTeleport()
    end
})

local NewButton = NewPage.Button({
    Text = "Cook Area",
    Callback = function()
        CookAreaTeleport()
    end
})

local NewButton = NewPage.Button({
    Text = "Boxer Area",
    Callback = function()
        BoxerAreaTeleport()
    end
})

local NewButton = NewPage.Button({
    Text = "Supplier Area",
    Callback = function()
        SupplierAreaTeleport()
    end
})

local NewButton = NewPage.Button({
    Text = "Delivery Area",
    Callback = function()
        DeliveryAreaTeleport()
    end
})

local NewButton = NewPage.Button({
    Text = "Manager Area",
    Callback = function()
        ManagerAreaTeleport()
    end
})
