local DebugMenu = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local AHPLabel = Instance.new("TextLabel")
local DEBUG = Instance.new("TextLabel")
local AHP = Instance.new("TextLabel")
local MHPLabel = Instance.new("TextLabel")
local MHP = Instance.new("TextLabel")
local WKLabel = Instance.new("TextLabel")
local WK = Instance.new("TextLabel")

local keyval = Instance.new("StringValue")
keyval.Value = "nil"

DebugMenu.Name = "DebugMenu"
DebugMenu.Parent = game.CoreGui
DebugMenu.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = DebugMenu
Frame.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Frame.BackgroundTransparency = 0.450
Frame.Position = UDim2.new(0.854711294, 0, 0.361647606, 0)
Frame.Size = UDim2.new(0, 214, 0, 446)

AHPLabel.Name = "AHP Label"
AHPLabel.Parent = Frame
AHPLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AHPLabel.BackgroundTransparency = 1.000
AHPLabel.Position = UDim2.new(0, 0, 0.150493667, 0)
AHPLabel.Size = UDim2.new(0, 214, 0, 48)
AHPLabel.Font = Enum.Font.SciFi
AHPLabel.Text = "Active HP"
AHPLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
AHPLabel.TextScaled = true
AHPLabel.TextSize = 14.000
AHPLabel.TextWrapped = true

DEBUG.Name = "DEBUG"
DEBUG.Parent = Frame
DEBUG.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
DEBUG.BackgroundTransparency = 1.000
DEBUG.Size = UDim2.new(0, 214, 0, 59)
DEBUG.Font = Enum.Font.SciFi
DEBUG.Text = "DEBUG MENU"
DEBUG.TextColor3 = Color3.fromRGB(255, 255, 255)
DEBUG.TextScaled = true
DEBUG.TextSize = 14.000
DEBUG.TextWrapped = true

AHP.Name = "AHP"
AHP.Parent = Frame
AHP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AHP.BackgroundTransparency = 1.000
AHP.Position = UDim2.new(0, 0, 0.296664804, 0)
AHP.Size = UDim2.new(0, 214, 0, 46)
AHP.Font = Enum.Font.SciFi
AHP.Text = game.Players.LocalPlayer.Character.Humanoid.Health
AHP.TextColor3 = Color3.fromRGB(255, 255, 255)
AHP.TextScaled = true
AHP.TextSize = 14.000
AHP.TextWrapped = true

MHPLabel.Name = "MHP Label"
MHPLabel.Parent = Frame
MHPLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MHPLabel.BackgroundTransparency = 1.000
MHPLabel.Position = UDim2.new(0, 0, 0.449400663, 0)
MHPLabel.Size = UDim2.new(0, 214, 0, 60)
MHPLabel.Font = Enum.Font.SciFi
MHPLabel.Text = "Max HP"
MHPLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MHPLabel.TextScaled = true
MHPLabel.TextSize = 14.000
MHPLabel.TextWrapped = true

MHP.Name = "MHP"
MHP.Parent = Frame
MHP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MHP.BackgroundTransparency = 1.000
MHP.Position = UDim2.new(0, 0, 0.617206395, 0)
MHP.Size = UDim2.new(0, 214, 0, 50)
MHP.Font = Enum.Font.SciFi
MHP.Text = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
MHP.TextColor3 = Color3.fromRGB(255, 255, 255)
MHP.TextScaled = true
MHP.TextSize = 14.000
MHP.TextWrapped = true

WKLabel.Name = "WK Label"
WKLabel.Parent = Frame
WKLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WKLabel.BackgroundTransparency = 1.000
WKLabel.Position = UDim2.new(0, 0, 0.770890832, 0)
WKLabel.Size = UDim2.new(0, 214, 0, 41)
WKLabel.Font = Enum.Font.SciFi
WKLabel.Text = "Weapon Key"
WKLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
WKLabel.TextScaled = true
WKLabel.TextSize = 14.000
WKLabel.TextWrapped = true

local WeaponKey = require(game.Players.LocalPlayer.PlayerGui.Weapons.WeaponKey)
local vv = tostring(WeaponKey.Key)
WK.Name = "WK"
WK.Parent = Frame
WK.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
WK.BackgroundTransparency = 1.000
WK.Position = UDim2.new(0, 0, 0.891967058, 0)
WK.Size = UDim2.new(0, 214, 0, 41)
WK.Font = Enum.Font.SciFi
WK.Text = vv
WK.TextColor3 = Color3.fromRGB(255, 255, 255)
WK.TextScaled = true
WK.TextSize = 14.000
WK.TextWrapped = true



local h = game.Players.LocalPlayer.Character.Humanoid
h.Changed:Connect(function(p)
  if p == "Health" then
    AHP.Text = h[p]
  elseif p == "MaxHealth" then
    MHP.Text = h[p]
  end
end)

local function CheckKey()
  keyval.Value = tostring(vv)
end
game:GetService("RunService").Stepped:Connect(CheckKey)

keyval.Changed:Connect(function(NewValue)
  WK.Text = keyval.Value
end)
