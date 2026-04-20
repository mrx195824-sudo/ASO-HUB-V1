-- [ MOV9 ULTIMATE FIX - THE CHOSEN ONE ] --

for _, v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "MOV9_KING" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local BgImage = Instance.new("ImageLabel")
local ButtonsList = Instance.new("ScrollingFrame")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "MOV9_KING"

-- [ الإطار الرئيسي - مقاس Ravex المضبوط ]
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 480, 0, 300) -- مقاس مثالي للجوال
MainFrame.Position = UDim2.new(0.5, -240, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.BorderSizePixel = 0
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ZIndex = 1 -- الطبقة الأساسية

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 15)
Corner.Parent = MainFrame

-- [ صورة العين - خلفية فقط ]
BgImage.Parent = MainFrame
BgImage.Size = UDim2.new(1, 0, 1, 0)
BgImage.Image = "rbxthumb://type=Asset&id=103960116632767&w=768&h=432"
BgImage.ImageTransparency = 0.8 -- خفيفة عشان ما تغطي الأزرار
BgImage.BackgroundTransparency = 1
BgImage.ScaleType = Enum.ScaleType.Fill
BgImage.ZIndex = 2 -- طبقة تحت الأزرار

-- [ قائمة الأزرار - طبقة علوية ZIndex = 10 ]
ButtonsList.Parent = MainFrame
ButtonsList.Size = UDim2.new(0, 180, 1, -20)
ButtonsList.Position = UDim2.new(0, 15, 0, 10)
ButtonsList.BackgroundTransparency = 1
ButtonsList.ZIndex = 10 -- غصب تطلع فوق العين
ButtonsList.CanvasSize = UDim2.new(0, 0, 3, 0)
ButtonsList.ScrollBarThickness = 0

-- صورة حسابك الشخصي دائرية
local Av = Instance.new("ImageLabel")
Av.Parent = ButtonsList
Av.Size = UDim2.new(0, 65, 0, 65)
Av.Position = UDim2.new(0.5, -32, 0, 5)
Av.Image = game:GetService("Players"):GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
Av.ZIndex = 11
local Round = Instance.new("UICorner")
Round.CornerRadius = UDim.new(1, 0)
Round.Parent = Av

-- [ وظيفة إضافة الأزرار البيضاء ]
local function AddBtn(name, y)
    local b = Instance.new("TextButton")
    b.Parent = ButtonsList
    b.Size = UDim2.new(0.9, 0, 0, 32)
    b.Position = UDim2.new(0.05, 0, 0, y)
    b.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- أبيض ملكي
    b.Text = name
    b.TextColor3 = Color3.fromRGB(0, 0, 0)
    b.Font = Enum.Font.GothamBold
    b.TextSize = 11
    b.ZIndex = 12 -- طبقة فوق كل شيء
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
end

-- [ توزيع الأزرار - مرتبة ومنفصلة ]
local s, gap = 85, 38
AddBtn("👤 اللاعب", s)
AddBtn("🏷️ الاسم", s + gap)
AddBtn("💬 شات", s + gap*2)
AddBtn("🌌 Skybox", s + gap*3)
AddBtn("🧨 تخريب", s + gap*4)
AddBtn("🤡 Troll", s + gap*5)
AddBtn("👕 السكن", s + gap*6)
AddBtn("🚫 مضادات", s + gap*7)
AddBtn("➕ أخرى", s + gap*8)

-- زر الإغلاق X
local Close = Instance.new("TextButton")
Close.Parent = MainFrame
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Position = UDim2.new(1, -35, 0, 5)
Close.Text = "X"
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.ZIndex = 20
Close.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)
local CC = Instance.new("UICorner")
CC.CornerRadius = UDim.new(1, 0)
CC.Parent = Close
