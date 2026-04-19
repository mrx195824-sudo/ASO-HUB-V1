-- [ إنشاء الواجهة من الصفر ]
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local TopBar = Instance.new("Frame")
local CloseBtn = Instance.new("TextButton")
local MinBtn = Instance.new("TextButton")
local ContentFrame = Instance.new("Frame")

ScreenGui.Parent = game.CoreGui
ScreenGui.Name = "MOV9_Custom_UI"

-- [ الإطار الرئيسي - نفس حجم ومكان الصورة ]
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.BackgroundTransparency = 0.2 -- شفافية تعطيك مظهر "مب صورة"
MainFrame.Position = UDim2.new(0.3, 0, 0.25, 0)
MainFrame.Size = UDim2.new(0, 450, 0, 280) -- الحجم المتوسط المريح
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true -- تقدر تحركه بيدك في الشاشة

-- زوايا منحنية (Round Corners)
local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 10)
MainCorner.Parent = MainFrame

-- [ شريط التحكم العلوي - للأزرار فقط ]
TopBar.Name = "TopBar"
TopBar.Parent = MainFrame
TopBar.BackgroundTransparency = 1
TopBar.Size = UDim2.new(1, 0, 0, 30)

-- زر الإغلاق (X)
CloseBtn.Name = "Close"
CloseBtn.Parent = TopBar
CloseBtn.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseBtn.BackgroundTransparency = 0.5
CloseBtn.Position = UDim2.new(0.92, 0, 0.2, 0)
CloseBtn.Size = UDim2.new(0, 25, 0, 20)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.Font = Enum.Font.GothamBold

-- زر التصغير (-)
MinBtn.Name = "Minimize"
MinBtn.Parent = TopBar
MinBtn.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
MinBtn.BackgroundTransparency = 0.5
MinBtn.Position = UDim2.new(0.85, 0, 0.2, 0)
MinBtn.Size = UDim2.new(0, 25, 0, 20)
MinBtn.Text = "-"
MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
MinBtn.Font = Enum.Font.GothamBold

-- [ مكان وضع المحتوى - شفاف ]
ContentFrame.Name = "Content"
ContentFrame.Parent = MainFrame
ContentFrame.BackgroundTransparency = 1
ContentFrame.Position = UDim2.new(0, 0, 0.15, 0)
ContentFrame.Size = UDim2.new(1, 0, 0.85, 0)

-- برمجة زر الإغلاق
CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
