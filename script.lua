-- [ MOV9 ULTIMATE WHITE EDITION ] --

for _, v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "MOV9_WHITE_HUB" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local SideBar = Instance.new("ScrollingFrame")
local BgImage = Instance.new("ImageLabel")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "MOV9_WHITE_HUB"

-- [ الواجهة الرئيسية ]
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 680, 0, 420)
MainFrame.Position = UDim2.new(0.5, -340, 0.5, -210)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.Active = true
MainFrame.Draggable = true

local MainCorner = Instance.new("UICorner")
MainCorner.CornerRadius = UDim.new(0, 15)
MainCorner.Parent = MainFrame

-- [ صورة العين بالخلفية ]
BgImage.Parent = MainFrame
BgImage.Size = UDim2.new(1, 0, 1, 0)
BgImage.Image = "rbxthumb://type=Asset&id=103960116632767&w=768&h=432"
BgImage.ImageTransparency = 0.85
BgImage.BackgroundTransparency = 1
BgImage.ScaleType = Enum.ScaleType.Fill

-- [ القائمة اليسرى ]
SideBar.Parent = MainFrame
SideBar.Size = UDim2.new(0, 200, 1, -20)
SideBar.Position = UDim2.new(0, 10, 0, 10)
SideBar.BackgroundTransparency = 0.6
SideBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SideBar.CanvasSize = UDim2.new(0, 0, 2.2, 0)
SideBar.ScrollBarThickness = 0 -- إخفاء شريط التمرير لشكل أجمل

local SBCorner = Instance.new("UICorner")
SBCorner.Parent = SideBar

-- [ صورة حسابك الشخصي دائرية ]
local AvHolder = Instance.new("Frame")
AvHolder.Parent = SideBar
AvHolder.Size = UDim2.new(0, 75, 0, 75)
AvHolder.Position = UDim2.new(0.5, -37.5, 0, 15)
AvHolder.BackgroundTransparency = 1

local AvImg = Instance.new("ImageLabel")
AvImg.Parent = AvHolder
AvImg.Size = UDim2.new(1, 0, 1, 0)
AvImg.Image = game:GetService("Players"):GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
local Round = Instance.new("UICorner")
Round.CornerRadius = UDim.new(1, 0)
Round.Parent = AvImg

local Stroke = Instance.new("UIStroke")
Stroke.Color = Color3.fromRGB(255, 255, 255)
Stroke.Thickness = 2
Stroke.Parent = AvImg

-- [ وظيفة صنع الأزرار البيضاء ]
local function AddWhiteButton(name, yPos, func)
    local btn = Instance.new("TextButton")
    btn.Parent = SideBar
    btn.Size = UDim2.new(0.9, 0, 0, 35)
    btn.Position = UDim2.new(0.05, 0, 0, yPos)
    btn.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- لون أبيض صافي
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(0, 0, 0) -- نص أسود للوضوح
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 12
    
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent = btn
    
    -- ظل خفيف تحت الزر
    local shadow = Instance.new("UIStroke")
    shadow.Color = Color3.fromRGB(200, 200, 200)
    shadow.Thickness = 1
    shadow.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    shadow.Parent = btn

    btn.MouseButton1Click:Connect(func)
end

-- [ توزيع الأزرار البيضاء ]
local startY = 110
local gap = 40

AddWhiteButton("👤 اللاعب (Player)", startY, function() print("Player") end)
AddWhiteButton("🏷️ الاسم (Display Name)", startY + gap, function() print("Name") end)
AddWhiteButton("💬 شات (Chat)", startY + (gap*2), function() print("Chat") end)
AddWhiteButton("🌌 Skybox (السماء)", startY + (gap*3), function() print("Sky") end)
AddWhiteButton("🧨 تخريب (Destroy)", startY + (gap*4), function() print("Destroy") end)
AddWhiteButton("🤡 Troll (طقطقة)", startY + (gap*5), function() print("Troll") end)
AddWhiteButton("💪 صملات (No Mercy)", startY + (gap*6), function() print("Somlat") end)
AddWhiteButton("🕊️ رحمه (Mercy)", startY + (gap*7), function() print("Mercy") end)
AddWhiteButton("👕 السكن (Outfit)", startY + (gap*8), function() print("Outfit") end)
AddWhiteButton("✨ التاثير (Effects)", startY + (gap*9), function() print("Effects") end)
AddWhiteButton("👶 الاطفال (Kids)", startY + (gap*10), function() print("Kids") end)
AddWhiteButton("🧍 اجسام (Body)", startY + (gap*11), function() print("Body") end)
AddWhiteButton("💇 شعور (Hair)", startY + (gap*12), function() print("Hair") end)
AddWhiteButton("🎭 سكنات (Avatars)", startY + (gap*13), function() print("Avatars") end)
AddWhiteButton("🚫 مضادات (Anti)", startY + (gap*14), function() print("Anti") end)
AddWhiteButton("➕ أخرى (Other)", startY + (gap*15), function() print("Other") end)

-- [ زر إغلاق ]
local Close = Instance.new("TextButton")
Close.Parent = MainFrame
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Position = UDim2.new(1, -35, 0, 5)
Close.Text = "X"
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
local CC = Instance.new("UICorner")
CC.CornerRadius = UDim.new(1, 0)
CC.Parent = Close
Close.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)
