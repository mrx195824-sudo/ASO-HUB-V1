local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local LP = Players.LocalPlayer

if CoreGui:FindFirstChild("MOV9_RED_EDITION") then CoreGui.MOV9_RED_EDITION:Destroy() end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "MOV9_RED_EDITION"

-- [ الإطار الرئيسي - أسود بلمحة حمراء ]
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 420, 0, 320)
MainFrame.Position = UDim2.new(0.5, -210, 0.4, -160)
MainFrame.BackgroundColor3 = Color3.fromRGB(5, 0, 0) -- أسود محمر
MainFrame.BackgroundTransparency = 0.2
MainFrame.BorderSizePixel = 0
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)

-- [ خط الحدود - أحمر دموي ]
local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Color = Color3.fromRGB(150, 0, 0) -- أحمر ملكي
Stroke.Thickness = 1.8

-- [ صورة البروفايل العلوية ]
local UserImg = Instance.new("ImageLabel", MainFrame)
UserImg.Size = UDim2.new(0, 70, 0, 70)
UserImg.Position = UDim2.new(0.41, 0, -0.12, 0)
UserImg.Image = "rbxassetid://6033788246" 
UserImg.BackgroundColor3 = Color3.fromRGB(20, 0, 0)
Instance.new("UICorner", UserImg).CornerRadius = UDim.new(1, 0)
Instance.new("UIStroke", UserImg).Color = Color3.fromRGB(150, 0, 0)

-- [ اسم المستخدم ]
local UserName = Instance.new("TextLabel", MainFrame)
UserName.Size = UDim2.new(1, 0, 0, 20)
UserName.Position = UDim2.new(0, 0, 0.12, 0)
UserName.Text = LP.Name .. " | MOV9 RED"
UserName.TextColor3 = Color3.fromRGB(255, 255, 255)
UserName.BackgroundTransparency = 1
UserName.Font = Enum.Font.GothamBold

-- [ حاوية الأزرار ]
local ListFrame = Instance.new("ScrollingFrame", MainFrame)
ListFrame.Size = UDim2.new(0.9, 0, 0.7, 0)
ListFrame.Position = UDim2.new(0.05, 0, 0.25, 0)
ListFrame.BackgroundTransparency = 1
ListFrame.ScrollBarThickness = 0
local Layout = Instance.new("UIListLayout", ListFrame)
Layout.Padding = UDim.new(0, 12)
Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

-- [ وظيفة صنع الأزرار باللون الأحمر الغامق ]
local function MakeButton(text)
    local Btn = Instance.new("Frame", ListFrame)
    Btn.Size = UDim2.new(1, 0, 0, 45)
    Btn.BackgroundColor3 = Color3.fromRGB(60, 0, 0) -- خلفية الأزرار حمراء غامقة
    Btn.BackgroundTransparency = 0.2
    Btn.BorderSizePixel = 0
    Instance.new("UICorner", Btn).CornerRadius = UDim.new(0, 8)
    
    -- حدود الزر
    local BStroke = Instance.new("UIStroke", Btn)
    BStroke.Color = Color3.fromRGB(180, 0, 0) -- حدود حمراء فاتحة
    BStroke.Thickness = 1

    local Label = Instance.new("TextLabel", Btn)
    Label.Size = UDim2.new(0.8, 0, 1, 0)
    Label.Position = UDim2.new(0.05, 0, 0, 0)
    Label.Text = text
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.BackgroundTransparency = 1
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Font = Enum.Font.GothamBold

    local Arrow = Instance.new("TextLabel", Btn)
    Arrow.Size = UDim2.new(0.1, 0, 1, 0)
    Arrow.Position = UDim2.new(0.85, 0, 0, 0)
    Arrow.Text = "∧"
    Arrow.TextColor3 = Color3.fromRGB(255, 0, 0) -- السهم أحمر ساطع
    Arrow.BackgroundTransparency = 1
end

-- [ إضافة الأزرار بنفس ترتيب الصورة ]
MakeButton("باص مدرسي")
MakeButton("دوران حول اللاعب")
MakeButton("بدء حركة السيارة")
MakeButton("إيقاف الحركة")

-- [ زر MOV9 الأحمر الجانبي ]
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.Position = UDim2.new(0.02, 0, 0.4, 0)
Toggle.Text = "MOV9"
Toggle.BackgroundColor3 = Color3.fromRGB(120, 0, 0)
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", Toggle).CornerRadius = UDim.new(1, 0)
Instance.new("UIStroke", Toggle).Color = Color3.fromRGB(255, 255, 255)
Toggle.MouseButton1Click:Connect(function() MainFrame.Visible = not MainFrame.Visible end)
