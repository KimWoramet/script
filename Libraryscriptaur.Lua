local Ui = loadstring(game:HttpGet("https://raw.githubusercontent.com/KimWoramet/script/main/Modulescript.Lua"))()
local Ui = Library

local LoadTime = tick()

local Loader = Library.CreateLoader(
    "Kimmy Sex Hee", 
    Vector2.new(300, 300)
)

local Window = Library.Window(
    "Kimmy Sex Hee", 
    Vector2.new(500, 620)
)

Window.SendNotification(
    "Normal", -- Normal, Warning, Error 
    "Press RightShift to open menu and close menu!", 
    10
)

Window.Watermark(
    "Kimmy Sex Hee"
)
-- Window:Visible = true

-- // UI Main \\ --
local Tab1 = Window:Tab("Tab1")
local Section1 = Tab1:Section(
    "Section1", 
    "Left"
)


Section1:Toggle({
    Title = "Teleport", 
    Flag = "Teleport_1",
    Type = "Dangerous",
    Callback = function(v)
        print("Value = "..v)
    end
})

Section1:Toggle({
    Title = "AutoSkill", 
    Flag = "AutoSkill_2",
    Callback = function(v)
        print("SutoSkill")
})


Section1:Slider({
    Title = "Slider1", 
    Flag = "Slider_1", 
    Symbol = "", 
    Default = 0, 
    Min = 0, 
    Max = 20, 
    Decimals = 1,
    Callback = function(v)
        print("Value = "..v)
    end
})
Section1:Dropdown({
    Title = "Dropdown1", 
    List = {"1", "2" ,"3"}, 
    Default = "1", 
    Flag = "DropDown_1",
    Callback = function(v)
        print("Value = "..v)
    end
})

Section1:Button({
    Title = "Button1",
    Callback = function()
        print("Pressed!")
    end
})

--Section1:Colorpicker({
    --Title = "ColorPicker1"
--})

--Section1:Label({
    --Title = "Label1"
--})

--Tab1:AddPlayerlist()
Window:AddSettingsTab()
Window:SwitchTab(Tab1)
Window.ToggleAnime(false)
LoadTime = math.floor((tick() - LoadTime) * 1000)
