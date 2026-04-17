--[[ 
    SHΔDØW CØRE V99 - ASO EDITION
    DEVELOPER: ABSI (عبسي) & ASO
    THEME: BLACK & PURPLE SOLID
]]

local CoreGui = game:GetService("CoreGui")
local TweenService = game:GetService("TweenService")

-- تنظيف أي نسخ قديمة
if CoreGui:FindFirstChild("ALFA_TRIAL") then CoreGui.ALFA_TRIAL:Destroy() end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "ALFA_TRIAL"

-- [ زر SR7 العائم ]
local ToggleBtn = Instance.new("TextButton", ScreenGui)
ToggleBtn.Size = UDim2.new(0, 60, 0, 40)
ToggleBtn.Position = UDim2.new(0.05, 0, 0.4, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(40, 0, 80)
ToggleBtn.Text = "SR7"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 16
ToggleBtn.Active = true
ToggleBtn.Draggable = true -- تقدر تحركه بيدك
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(0, 8)
local BStroke = Instance.new("UIStroke", ToggleBtn)
BStroke.Color = Color3.fromRGB(180, 100, 255)
BStroke.Thickness = 2

-- [ الواجهة الرئيسية - أسود ملكي صافي ]
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 350, 0, 200)
MainFrame.Position = UDim2.new(0.5, -175, 0.5, -100)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10) -- أسود فحم صريح
MainFrame.Visible = false -- تبدأ مخفية
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 12)
local MStroke = Instance.new("UIStroke", MainFrame)
MStroke.Color = Color3.fromRGB(80, 0, 160)
MStroke.Thickness = 2

-- [ عنوان الواجهة ]
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 45)
Title.BackgroundColor3 = Color3.fromRGB(20, 0, 40)
Title.Text = "ASO HUB | TRIAL"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18
Instance.new("UICorner", Title)

-- [ زر تجربة ]
local TestBtn = Instance.new("TextButton", MainFrame)
TestBtn.Size = UDim2.new(0, 180, 0, 50)
TestBtn.Position = UDim2.new(0.5, -90, 0.5, -10)
TestBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TestBtn.Text = "تـجـربـة"
TestBtn.TextColor3 = Color3.fromRGB(200, 150, 255)
TestBtn.Font = Enum.Font.GothamBold
TestBtn.TextSize = 18
Instance.new("UICorner", TestBtn)

-- [ برمجة الفتح والإغلاق ]
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

-- [ حركة الزر عند الضغط ]
TestBtn.MouseButton1Click:Connect(function()
    TestBtn.Text = "شـغـال 🔥"
    TestBtn.BackgroundColor3 = Color3.fromRGB(60, 0, 120)
    wait(1)
    TestBtn.Text = "تـجـربـة"
    TestBtn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
end)
