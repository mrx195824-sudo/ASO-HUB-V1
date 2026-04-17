local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("MOV9_EXTEND") then CoreGui.MOV9_EXTEND:Destroy() end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "MOV9_EXTEND"

-- [ 1. الشريط الأساسي (النحيف) ]
local MainBar = Instance.new("Frame", ScreenGui)
MainBar.Size = UDim2.new(0, 500, 0, 35) -- العرض 500
MainBar.Position = UDim2.new(0.5, -250, 0.2, 0)
MainBar.BackgroundColor3 = Color3.fromRGB(15, 0, 0)
MainBar.BackgroundTransparency = 0.1
MainBar.BorderSizePixel = 0
Instance.new("UICorner", MainBar).CornerRadius = UDim.new(0, 6)
local BarStroke = Instance.new("UIStroke", MainBar)
BarStroke.Color = Color3.fromRGB(180, 0, 0)
BarStroke.Thickness = 1.5

-- نص العنوان (مثل الصورة)
local Title = Instance.new("TextLabel", MainBar)
Title.Size = UDim2.new(0.7, 0, 1, 0)
Title.Position = UDim2.new(0.03, 0, 0, 0)
Title.Text = "✅ MOV9 Hub | Developers: (MOV9_Cloud)"
Title.TextColor3 = Color3.fromRGB(220, 220, 220)
Title.TextSize = 13
Title.Font = Enum.Font.GothamBold
Title.BackgroundTransparency = 1
Title.TextXAlignment = Enum.TextXAlignment.Left

-- [ 2. أزرار التحكم ]
local Controls = Instance.new("Frame", MainBar)
Controls.Size = UDim2.new(0, 70, 1, 0)
Controls.Position = UDim2.new(1, -75, 0, 0)
Controls.BackgroundTransparency = 1

local ToggleBtn = Instance.new("TextButton", Controls)
ToggleBtn.Size = UDim2.new(0, 25, 0, 25)
ToggleBtn.Position = UDim2.new(0, 0, 0.5, -12)
ToggleBtn.Text = "+"
ToggleBtn.BackgroundColor3 = Color3.fromRGB(60, 0, 0)
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", ToggleBtn)

local CloseBtn = Instance.new("TextButton", Controls)
CloseBtn.Size = UDim2.new(0, 25, 0, 25)
CloseBtn.Position = UDim2.new(0, 35, 0.5, -12)
CloseBtn.Text = "x"
CloseBtn.BackgroundColor3 = Color3.fromRGB(180, 0, 0)
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", CloseBtn)

-- [ 3. القائمة المنسدلة (بنفس عرض الشريط) ]
local DropMenu = Instance.new("Frame", MainBar)
DropMenu.Size = UDim2.new(1, 0, 0, 200) -- الـ 1 تعني نفس عرض الشريط (500)
DropMenu.Position = UDim2.new(0, 0, 1, 2) -- تبدأ من تحت الشريط مباشرة
DropMenu.BackgroundColor3 = Color3.fromRGB(10, 0, 0)
DropMenu.BackgroundTransparency = 0.2
DropMenu.Visible = false -- مخفية
Instance.new("UICorner", DropMenu)
local MenuStroke = Instance.new("UIStroke", DropMenu)
MenuStroke.Color = Color3.fromRGB(180, 0, 0)

-- قائمة الأزرار
local Content = Instance.new("ScrollingFrame", DropMenu)
Content.Size = UDim2.new(1, 0, 0.9, 0)
Content.Position = UDim2.new(0, 0, 0.05, 0)
Content.BackgroundTransparency = 1
Content.ScrollBarThickness = 0
local Layout = Instance.new("UIListLayout", Content)
Layout.Padding = UDim.new(0, 5)
Layout.HorizontalAlignment = Enum.HorizontalAlignment.Center

local function AddItem(name)
    local B = Instance.new("TextButton", Content)
    B.Size = UDim2.new(0.95, 0, 0, 38)
    B.BackgroundColor3 = Color3.fromRGB(40, 0, 0)
    B.Text = name
    B.TextColor3 = Color3.fromRGB(255, 255, 255)
    B.Font = Enum.Font.GothamBold
    Instance.new("UICorner", B)
end

AddItem("تفعيل الطيران ✈️")
AddItem("سرعة اللاعب ⚡")
AddItem("قفزة عالية 🚀")
AddItem("نسخ الإحداثيات 📍")

-- [ 4. البرمجة ]
ToggleBtn.MouseButton1Click:Connect(function()
    DropMenu.Visible = not DropMenu.Visible
    ToggleBtn.Text = DropMenu.Visible and "-" or "+"
end)

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)

-- جعل الشريط قابل للسحب
MainBar.Active = true
MainBar.Draggable = true
