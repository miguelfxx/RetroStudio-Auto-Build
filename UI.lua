local AutoBuildGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TitleLabel = Instance.new("TextLabel")
local ModelBox = Instance.new("TextBox")
local NameBox = Instance.new("TextBox")
local StartButton = Instance.new("TextButton")

AutoBuildGui.Name = "AutoBuildGui"
AutoBuildGui.Parent = game:GetService("CoreGui")
AutoBuildGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

MainFrame.Name = "MainFrame"
MainFrame.Parent = AutoBuildGui
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
MainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
MainFrame.Size = UDim2.new(0.25, 0, 0.5, 0)
MainFrame.Style = Enum.FrameStyle.DropShadow
MainFrame.Active = true
MainFrame.Draggable = true

TitleLabel.Name = "TitleLabel"
TitleLabel.Parent = MainFrame
TitleLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleLabel.BackgroundTransparency = 1.000
TitleLabel.Size = UDim2.new(1, 0, 0.25, 0)
TitleLabel.Font = Enum.Font.ArialBold
TitleLabel.Text = "RetroStudio AutoBuild"
TitleLabel.TextColor3 = Color3.fromRGB(250, 250, 250)
TitleLabel.TextScaled = true
TitleLabel.TextSize = 14.000
TitleLabel.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
TitleLabel.TextStrokeTransparency = 0.500
TitleLabel.TextWrapped = true

ModelBox.Name = "ModelBox"
ModelBox.Parent = MainFrame
ModelBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
ModelBox.BackgroundTransparency = 0.600
ModelBox.Position = UDim2.new(0, 0, 0.300000012, 0)
ModelBox.Size = UDim2.new(1, 0, 0.150000006, 0)
ModelBox.Font = Enum.Font.ArialBold
ModelBox.PlaceholderText = "Model Id"
ModelBox.Text = ""
ModelBox.TextColor3 = Color3.fromRGB(250, 250, 250)
ModelBox.TextScaled = true
ModelBox.TextSize = 14.000
ModelBox.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
ModelBox.TextWrapped = true

NameBox.Name = "NameBox"
NameBox.Parent = MainFrame
NameBox.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
NameBox.BackgroundTransparency = 0.600
NameBox.Position = UDim2.new(0, 0, 0.5, 0)
NameBox.Size = UDim2.new(1, 0, 0.150000006, 0)
NameBox.Font = Enum.Font.ArialBold
NameBox.PlaceholderText = "Model Name"
NameBox.Text = ""
NameBox.TextColor3 = Color3.fromRGB(250, 250, 250)
NameBox.TextScaled = true
NameBox.TextSize = 14.000
NameBox.TextStrokeColor3 = Color3.fromRGB(180, 180, 180)
NameBox.TextWrapped = true

StartButton.Name = "StartButton"
StartButton.Parent = MainFrame
StartButton.AnchorPoint = Vector2.new(0.5, 0)
StartButton.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
StartButton.BackgroundTransparency = 0.600
StartButton.Position = UDim2.new(0.5, 0, 0.800000012, 0)
StartButton.Size = UDim2.new(0, 200, 0, 50)
StartButton.Font = Enum.Font.ArialBold
StartButton.Text = "Build"
StartButton.TextColor3 = Color3.fromRGB(250, 250, 250)
StartButton.TextSize = 14.000
StartButton.TextStrokeColor3 = Color3.fromRGB(50, 50, 50)
StartButton.TextStrokeTransparency = 0.500

return function()
	return AutoBuildGui, MainFrame, TitleLabel, ModelBox, NameBox, StartButton
end
