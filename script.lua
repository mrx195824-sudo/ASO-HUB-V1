-- تنظيف أي نسخة قديمة
for _, v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "MOV9_Hub_Final" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MyImage = Instance.new("ImageLabel")
local CloseBtn = Instance.new("TextButton")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "MOV9_Hub_Final"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- [ الإطار الرئيسي ]
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 420, 0, 260) 
MainFrame.Position = UDim2.new(0.5, -210, 0.5, -130) -- في منتصف الشاشة
MainFrame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true 

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 15)
Corner.Parent = MainFrame

-- [ عرض صورتك بالرقم الجديد ]
MyImage.Parent = MainFrame
MyImage.Size = UDim2.new(1, 0, 1, 0)
MyImage.BackgroundTransparency = 1
MyImage.Image = "rbxassetid://103960116632767" -- الرقم اللي استخرجته أنت
MyImage.ScaleType = Enum.ScaleType.Fill

local ImgCorner = Instance.new("UICorner")
ImgCorner.CornerRadius = UDim.new(0, 15)
ImgCorner.Parent = MyImage

-- [ زر القفل X ]
CloseBtn.Parent = MainFrame
CloseBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseBtn.Position = UDim2.new(0.9, 0, 0.05, 0)
CloseBtn.Size = UDim2.new(0, 30, 0, 25)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.Font = Enum.Font.GothamBold

local BtnCorner = Instance.new("UICorner")
BtnCorner.CornerRadius = UDim.new(0, 5)
BtnCorner.Parent = CloseBtn

CloseBtn.MouseButton1Click:Connect(function() 
    ScreenGui:Destroy() 
end)
