local Atlas = loadstring(game:HttpGet("https://siegehub.net/Atlas.lua"))()

local UI = Atlas.new({
	Name = "Acrio Hub V1.0"; -- script name (required)
	ConfigFolder = "AcrioHubV1"; -- folder name to save configs to, set this to nil if you want to disable configs saving
	Credit = "Made By V_eXeV#6351, UI Library: RoadToGlory#9879"; -- text to appear if player presses the "i" button on their UI (optional)
	Color = Color3.fromRGB(0, 0, 255); -- theme color for UI (required)
	Bind = "LeftControl"; -- keybind for toggling the UI, must be a valid KeyCode name
	-- Atlas Loader:
	UseLoader = true; -- whether to use Atlas Loader or not, if set to false than CheckKey and Discord are ignored
	FullName = "Acrio Hub V1.0"; -- works if UseLoader is set to true, can be same as Name argument, shown on loader frame
	CheckKey = function(inputtedKey) -- works if UseLoader is set to true, where inputtedKey is the key inputted by the player
		return inputtedKey=="AcrioV1"
	end;
	Discord = "https://discord.gg/zX2CN8B4ZG"; -- works if UseLoader is set to true, will be copied to clipboard if player presses "Copy Invite" button
})
local MainPage = UI:CreatePage("Ro-Ghoul")
local MainSection = MainPage:CreateSection("Main")
local newValue = false
local TestToggle = MainSection:CreateToggle({
	Name = "Bypass Speed";
	Flag = "RoGhoulSpeedToggle1";
	Default = false;
	Callback = function(newValue)
		print("Toggle:",newValue)
		UI:Notify({
			Title = "Ro-Ghoul";
			Content = "Speed Toggled";
		})
		while newValue == true do
			wait()
			game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
		end
	end,
})
UI:Notify({
	Title = "Acrio Hub";
	Content = "Acrio Hub V1.0 Has Been Loaded!";
})
