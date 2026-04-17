local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("MOV9_RED_RECT") then CoreGui.MOV9_RED_RECT:Destroy() end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "MOV9_RED_RECT"

-- [ الإطار الرئيسي - مستطيل فخم ]
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 500, 0, 280) -- حجم مستطيل مدروس
MainFrame.Position = UDim2.new(0.5, -250, 0.4, -140)
MainFrame.BackgroundColor3 = Color3.fromRGB(8, 0, 0)
MainFrame.BackgroundTransparency = 0.15
MainFrame.BorderSizePixel = 0
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)

-- [ حدود أحمر ملكي ]
local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Color = Color3.fromRGB(180, 0, 0)
Stroke.Thickness = 2

-- [ شريط العنوان العلوي ]
local TitleBar = Instance.new("Frame", MainFrame)
TitleBar.Size = UDim2.new(1, 0, 0, 35)
TitleBar.BackgroundColor3 = Color3.fromRGB(40, 0, 0)
TitleBar.BorderSizePixel = 0
Instance.new("UICorner", TitleBar)

local TitleText = Instance.new("TextLabel", TitleBar)
TitleText.Size = UDim2.new(0.5, 0, 1, 0)
TitleText.Position = UDim2.new(0.05, 0, 0, 0)
TitleText.Text = "MOV9 HUB | RED EDITION"
TitleText.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleText.BackgroundTransparency = 1
TitleText.Font = Enum.Font.GothamBold
TitleText.TextXAlignment = Enum.TextXAlignment.Left

-- [ أزرار التحكم (يمين) ]
local Controls = Instance.new("Frame", TitleBar)
Controls.Size = UDim2.new(0, 80, 1, 0)
Controls.Position = UDim2.new(1, -90, 0, 0)
Controls.BackgroundTransparency = 1

-- زر الإخفاء (-)
local MinBtn = Instance.new("TextButton", Controls)
MinBtn.Size = UDim2.new(0, 30, 0, 25)
MinBtn.Position = UDim2.new(0, 0, 0.5, -12)
MinBtn.Text = "-"
MinBtn.BackgroundColor3 = Color3.fromRGB(60, 0, 0)
MinBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", MinBtn)

-- زر الإغلاق النهائي (+)
local ExitBtn = Instance.new("TextButton", Controls)
ExitBtn.Size = UDim2.new(0, 30, 0, 25)
ExitBtn.Position = UDim2.new(0, 40, 0.5, -12)
ExitBtn.Text = "+"
ExitBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
ExitBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", ExitBtn)

-- [ حاوية الأزرار ]
local Content = Instance.new("ScrollingFrame", MainFrame)
Content.Size = UDim2.new(0.94, 0, 0.75, 0)
Content.Position = UDim2.new(0.03, 0, 0.2, 0)
Content.BackgroundTransparency = 1
Content.ScrollBarThickness = 2
local Layout = Instance.new("UIListLayout", Content)
Layout.Padding = UDim.new(0, 8)

-- وظيفة صنع الأزرار
local function AddBtn(txt)
    local B = Instance.new("TextButton", Content)
    B.Size = UDim2.new(1, 0, 0, 40)
    B.BackgroundColor3 = Color3.fromRGB(30, 0, 0)
    B.Text = "  " .. txt
    B.TextColor3 = Color3.fromRGB(255, 255, 255)
    B.TextXAlignment = Enum.TextXAlignment.Left
    B.Font = Enum.Font.GothamBold
    Instance.new("UICorner", B)
    local S = Instance.new("UIStroke", B)
    S.Color = Color3.fromRGB(100, 0, 0)
end

AddBtn("باص مدرسي 🚌")
AddBtn("دوران حول اللاعب 🔄")
AddBtn("بدء الحركة 🚀")
AddBtn("إيقاف الحركة 🛑")

-- [ زر الفتح الجانبي ]
local OpenBtn = Instance.new("TextButton", ScreenGui)
OpenBtn.Size = UDim2.new(0, 50, 0, 50)
OpenBtn.Position = UDim2.new(0.02, 0, 0.4, 0)
OpenBtn.Text = "MOV9"
OpenBtn.BackgroundColor3 = Color3.fromRGB(100, 0, 0)
OpenBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", OpenBtn).CornerRadius = UDim.new(1, 0)

-- برمجة الأزرار
MinBtn.MouseButton1Click:Connect(function() MainFrame.Visible = false end)
OpenBtn.MouseButton1Click:Connect(function() MainFrame.Visible = not MainFrame.Visible end)
ExitBtn.MouseButton1Click:Connect(function() ScreenGui:Destroy() end) -- يقفل السكربت نهائياً
