function FindSpookWood()
    loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Tuxdboy/Roblox/main/Lumber%20Tycoon%202/1.lua"))()
end


local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local NewUI = Material.Load({
	Title = "Lumber Tycoon 2 — By Xtrevious",
	Style = 1,
	SizeX = 300,
	SizeY = 115,
	Theme = "Dark"
})

local NewPage = NewUI.New({
	Title = "Main"
})


local NewButton = NewPage.Button({
    Text = "Find Spook Wood",
    Callback = function()
        FindSpookWood()
    end
})
