local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MyImage = Instance.new("ImageLabel")
local CloseBtn = Instance.new("TextButton")
local MinBtn = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "MOV9_Brookhaven_UI"
ScreenGui.ResetOnSpawn = false

-- [ الإطار الرئيسي - حجم Ravex الصغير ]
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 420, 0, 260) 
MainFrame.Position = UDim2.new(0.35, 0, 0.3, 0)
MainFrame.BackgroundTransparency = 1 
MainFrame.Active = true
MainFrame.Draggable = true 

-- [ وضع صورتك اللي رفعتها ]
MyImage.Parent = MainFrame
MyImage.Size = UDim2.new(1, 0, 1, 0)
MyImage.BackgroundTransparency = 1
MyImage.Image = "rbxassetid://121390048608932" 
MyImage.ScaleType = Enum.ScaleType.Fill

-- زوايا منحنية فخمة
local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 12)
Corner.Parent = MyImage

-- [ زر القفل X ]
CloseBtn.Parent = MainFrame
CloseBtn.BackgroundColor3 = Color3.fromRGB(180, 50, 50)
CloseBtn.Position = UDim2.new(0.91, 0, 0.04, 0)
CloseBtn.Size = UDim2.new(0, 26, 0, 24)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.Font = Enum.Font.GothamBold

local BtnCorner1 = Instance.new("UICorner")
BtnCorner1.CornerRadius = UDim.new(0, 6)
BtnCorner1.Parent = CloseBtn

-- [ زر التصغير - ]
MinBtn.Parent = MainFrame
MinBtn.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
MinBtn.Position = UDim2.new(0.83, 0, 0.04, 0)
MinBtn.Size = UDim2.new(0, 26, 0, 24)
MinBtn.Text = "-"
MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MinBtn.Font = Enum.Font.GothamBold

local BtnCorner2 = Instance.new("UICorner")
BtnCorner2.CornerRadius = UDim.new(0, 6)
BtnCorner2.Parent = MinBtn

-- برمجة الأزرار
CloseBtn.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)
MinBtn.MouseButton1Click:Connect(function() 
    MyImage.Visible = not MyImage.Visible 
end)
