local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local title = Instance.new("TextLabel")
local AHPLabel = Instance.new("TextLabel")
local AHP = Instance.new("TextLabel")
local MHPLabel = Instance.new("TextLabel")
local MHP = Instance.new("TextLabel")


ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(54, 54, 54)
Frame.BackgroundTransparency = 0.400
Frame.Position = UDim2.new(0.851092875, 0, 0.576923072, 0)
Frame.Size = UDim2.new(0, 198, 0, 321)

title.Name = "title"
title.Parent = Frame
title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
title.BackgroundTransparency = 1.000
title.BorderColor3 = Color3.fromRGB(0, 0, 0)
title.Size = UDim2.new(0, 200, 0, 50)
title.Font = Enum.Font.SourceSans
title.Text = "Debug Menu"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.TextScaled = true
title.TextSize = 14.000
title.TextWrapped = true

AHPLabel.Name = "AHP Label"
AHPLabel.Parent = Frame
AHPLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AHPLabel.BackgroundTransparency = 1.000
AHPLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
AHPLabel.Position = UDim2.new(-0.0101010101, 0, 0.214953274, 0)
AHPLabel.Size = UDim2.new(0, 200, 0, 50)
AHPLabel.Font = Enum.Font.SourceSans
AHPLabel.Text = "Active HP"
AHPLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
AHPLabel.TextScaled = true
AHPLabel.TextSize = 14.000
AHPLabel.TextWrapped = true

AHP.Name = "AHP"
AHP.Parent = Frame
AHP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
AHP.BackgroundTransparency = 1.000
AHP.BorderColor3 = Color3.fromRGB(0, 0, 0)
AHP.Position = UDim2.new(-0.00505050505, 0, 0.370716512, 0)
AHP.Size = UDim2.new(0, 200, 0, 50)
AHP.Font = Enum.Font.SourceSans
AHP.Text = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
AHP.TextColor3 = Color3.fromRGB(255, 255, 255)
AHP.TextScaled = true
AHP.TextSize = 14.000
AHP.TextWrapped = true

MHPLabel.Name = "MHP Label"
MHPLabel.Parent = Frame
MHPLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MHPLabel.BackgroundTransparency = 1.000
MHPLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
MHPLabel.Position = UDim2.new(0, 0, 0.526479721, 0)
MHPLabel.Size = UDim2.new(0, 200, 0, 50)
MHPLabel.Font = Enum.Font.SourceSans
MHPLabel.Text = "Max HP"
MHPLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
MHPLabel.TextScaled = true
MHPLabel.TextSize = 14.000
MHPLabel.TextWrapped = true

MHP.Name = "MHP"
MHP.Parent = Frame
MHP.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MHP.BackgroundTransparency = 1.000
MHP.BorderColor3 = Color3.fromRGB(0, 0, 0)
MHP.Position = UDim2.new(0, 0, 0.713395655, 0)
MHP.Size = UDim2.new(0, 200, 0, 50)
MHP.Font = Enum.Font.SourceSans
MHP.Text = game.Players.LocalPlayer.Character.Humanoid.MaxHealth
MHP.TextColor3 = Color3.fromRGB(255, 255, 255)
MHP.TextScaled = true
MHP.TextSize = 14.000
MHP.TextWrapped = true

local h = game.Players.LocalPlayer.Character.Humanoid
h.Changed:Connect(function(p)
    if p == "Health" then
      AHP.Text = h[p]
    elseif p == "MaxHealth" then
      MHP.Text = h[p]
    end
end)
