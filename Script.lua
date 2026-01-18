-- ZAŁADOWANIE ORION UI
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/jensonhirst/Orion/main/source.lua"))()

-- OKNO
local Window = OrionLib:MakeWindow({
	Name = "Example Orion UI",
	HidePremium = false,
	SaveConfig = true,
	ConfigFolder = "ExampleUI"
})

-- TAB 1
local MainTab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

-- SEKCJA
MainTab:AddSection({
	Name = "Example Buttons"
})

-- BUTTON
MainTab:AddButton({
	Name = "Hello World",
	Callback = function()
		print("Hello World!")
	end
})

-- TOGGLE
MainTab:AddToggle({
	Name = "Example Toggle",
	Default = false,
	Callback = function(Value)
		print("Toggle:", Value)
	end
})

-- SLIDER
MainTab:AddSlider({
	Name = "WalkSpeed",
	Min = 16,
	Max = 100,
	Default = 16,
	Color = Color3.fromRGB(255,255,255),
	Increment = 1,
	ValueName = "Speed",
	Callback = function(Value)
		game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
	end
})

-- DROPDOWN
MainTab:AddDropdown({
	Name = "Choose Option",
	Default = "Option 1",
	Options = {"Option 1","Option 2","Option 3"},
	Callback = function(Value)
		print("Selected:", Value)
	end
})

-- TEXTBOX
MainTab:AddTextbox({
	Name = "Type Something",
	Default = "",
	TextDisappear = true,
	Callback = function(Value)
		print("Textbox:", Value)
	end
})

-- TAB 2
local OtherTab = Window:MakeTab({
	Name = "Other",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

OtherTab:AddButton({
	Name = "Notification",
	Callback = function()
		OrionLib:MakeNotification({
			Name = "Example UI",
			Content = "This is Orion UI Example",
			Image = "rbxassetid://4483345998",
			Time = 5
		})
	end
})

-- INIT
OrionLib:Init()