local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- 1. إعداد النافذة (خلفية سوداء ملكية 100%)
local Window = Fluent:CreateWindow({
    Title = "🔥 ASO HUB | ROYAL 👑",
    SubTitle = "بواسطة النينجا",
    TabWidth = 170,
    Size = UDim2.fromOffset(600, 480),
    Acrylic = false, -- لإلغاء الشفافية وجعل اللون أسود غامق جداً
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- تخصيص الألوان الملكية للأزرار والسلايدر
Fluent.Options.AccentColor = Color3.fromRGB(0, 51, 153)

-- 2. [ تعديل زر الفتح/الغلق ليصبح MOV9 ]
local ScreenGui = game:GetService("CoreGui"):FindFirstChild("FluentGui")
if ScreenGui then
    local ToggleButton = ScreenGui:FindFirstChild("Toggle")
    if ToggleButton then
        ToggleButton.Text = "MOV9"
        ToggleButton.BackgroundColor3 = Color3.fromRGB(0, 20, 80) -- أزرق غامق
        ToggleButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        ToggleButton.Size = UDim2.new(0,
