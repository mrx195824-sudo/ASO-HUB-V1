-- [ MOV9 FINAL FIX - ZINDEX EDITION ] --

for _, v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "MOV9_FIXED" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local BgImage = Instance.new("ImageLabel")
local ButtonsHolder = Instance.new("ScrollingFrame")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "MOV9_FIXED"

-- [ الإطار الرئيسي - مقاس وسط ]
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 420, 0, 280)
MainFrame.Position = UDim2.new(0.5, -210, 0.5, -140)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ZIndex = 1

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 12)
MainCorner.Parent = MainFrame

-- [ صورة العين - طبقة خلفية (ZIndex = 1) ]
BgImage.Parent = MainFrame
BgImage.Size = UDim2.new(1, 0, 1, 0)
BgImage.Image = "rbxthumb://type=Asset&id=103960116632767&w=768&h=432"
BgImage.ImageTransparency = 0.7
BgImage.BackgroundTransparency = 1
BgImage.ScaleType = Enum.ScaleType.Fill
BgImage.ZIndex = 1 -- هذي أهم خطوة عشان تصير خلفية

-- [ حاوي الأزرار - طبقة علوية (ZIndex = 5) ]
ButtonsHolder.Parent = MainFrame
ButtonsHolder.Size = UDim2.new(0, 160, 1, -20)
ButtonsHolder.Position = UDim2.new(0, 10, 0, 10)
ButtonsHolder.BackgroundTransparency = 1
ButtonsHolder.ZIndex = 5 
ButtonsHolder.CanvasSize = UDim2.new(0, 0, 2.5, 0)
ButtonsHolder.ScrollBarThickness = 0

-- صورة حسابك الشخصي (فوق الأزرار)
local AvImg = Instance.new("ImageLabel")
AvImg.Parent = ButtonsHolder
AvImg.Size = UDim2.new(0, 60, 0, 60)
AvImg.Position = UDim2.new(0.5, -30, 0, 5)
AvImg.Image = game:GetService("Players"):GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
AvImg.ZIndex = 6
local Round = Instance.new("UICorner")
Round.CornerRadius = UDim.new(1, 0)
Round.Parent = AvImg

-- [ وظيفة إضافة الأزرار البيضاء (ZIndex = 6) ]
local function AddWhiteBtn(name, yPos)
    local btn = Instance.new("TextButton")
    btn.Parent = ButtonsHolder
    btn.Size = UDim2.new(0.9, 0, 0, 30)
    btn.Position = UDim2.new(0.05, 0, 0, yPos)
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(0, 0, 0)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 10
    btn.ZIndex = 6 -- فوق كل شيء
    
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = btn
end

-- [ توزيع الأزرار - مرتبة ومنفصلة ]
local start = 75
local space = 35

AddWhiteBtn("👤 اللاعب", start)
AddWhiteBtn("🏷️ الاسم", start + space)
AddWhiteBtn("💬 شات", start + space*2)
AddWhiteBtn("🌌 Skybox", start + space*3)
AddWhiteBtn("🧨 تخريب", start + space*4)
AddWhiteBtn("🤡 Troll", start + space*5)
AddWhiteBtn("💪 صملات", start + space*6)
AddWhiteBtn("👕 السكن", start + space*7)
AddWhiteBtn("🚫 مضادات", start + space*8)
AddWhiteBtn("➕ أخرى", start + space*9)

-- زر الإغلاق
local Close = Instance.new("TextButton")
Close.Parent = MainFrame
Close.Size = UDim2.new(0, 25, 0, 25)
Close.Position = UDim2.new(1, -30, 0, 5)
Close.Text = "X"
Close.ZIndex = 10
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)
local CC = Instance.new("UICorner")
CC.CornerRadius = UDim.new(1, 0)
CC.Parent = Close

