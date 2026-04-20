-- [ MOV9 FINAL FIX - WHITE BUTTONS EDITION ] --

for _, v in pairs(game.CoreGui:GetChildren()) do
    if v.Name == "MOV9_WHITE_FIX" then v:Destroy() end
end

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local BgImage = Instance.new("ImageLabel")
local FrontFrame = Instance.new("Frame")
local SearchBox = Instance.new("TextBox")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "MOV9_WHITE_FIX"

-- [ الإطار الرئيسي ]
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 520, 0, 400) 
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -200)
MainFrame.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
MainFrame.Active = true
MainFrame.Draggable = true
MainFrame.ClipsDescendants = true -- لضمان عدم خروج العين عن الحدود
MainFrame.ZIndex = 1

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 15)
Corner.Parent = MainFrame

-- [ الخلفية - صورة العين ]
BgImage.Parent = MainFrame
BgImage.Size = UDim2.new(1, 0, 1, 0)
BgImage.Image = "rbxthumb://type=Asset&id=103960116632767&w=768&h=432"
BgImage.ImageTransparency = 0.8 -- تقليل الشفافية قليلاً لبروز الأزرار
BgImage.ZIndex = 2 -- طبقة منخفضة
BgImage.ScaleType = Enum.ScaleType.Fill

-- [ إطار الواجهة الأمامي - الأزرار ]
FrontFrame.Parent = MainFrame
FrontFrame.Size = UDim2.new(1, 0, 1, 0)
FrontFrame.BackgroundTransparency = 1
FrontFrame.ZIndex = 10 -- طبقة عالية لضمان الظهور فوق العين

-- خانة البحث
SearchBox.Parent = FrontFrame
SearchBox.Size = UDim2.new(0, 180, 0, 35)
SearchBox.Position = UDim2.new(0, 15, 0, 100)
SearchBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
SearchBox.Text = ""
SearchBox.PlaceholderText = "بحث..."
SearchBox.TextColor3 = Color3.fromRGB(0, 0, 0)
SearchBox.Font = Enum.Font.GothamBold
SearchBox.TextSize = 14
SearchBox.ZIndex = 12
local SC = Instance.new("UICorner")
SC.CornerRadius = UDim.new(0, 8)
SC.Parent = SearchBox

local ButtonsList = Instance.new("ScrollingFrame")
ButtonsList.Parent = FrontFrame
ButtonsList.Size = UDim2.new(0, 200, 1, -155)
ButtonsList.Position = UDim2.new(0, 15, 0, 145)
ButtonsList.BackgroundTransparency = 1
ButtonsList.CanvasSize = UDim2.new(0, 0, 6, 0)
ButtonsList.ScrollBarThickness = 0
ButtonsList.ZIndex = 11

-- صورة الحساب
local Av = Instance.new("ImageLabel")
Av.Parent = FrontFrame
Av.Size = UDim2.new(0, 75, 0, 75)
Av.Position = UDim2.new(0, 65, 0, 10)
Av.Image = game:GetService("Players"):GetUserThumbnailAsync(game.Players.LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size150x150)
Av.ZIndex = 12
local Round = Instance.new("UICorner")
Round.CornerRadius = UDim.new(1, 0)
Round.Parent = Av

-- [ وظيفة الأزرار البيضاء ]
local allButtons = {}
local function AddBtn(name, y)
    local b = Instance.new("TextButton")
    b.Parent = ButtonsList
    b.Size = UDim2.new(0.9, 0, 0, 32)
    b.Position = UDim2.new(0.05, 0, 0, y)
    b.BackgroundColor3 = Color3.fromRGB(255, 255, 255) -- أبيض صريح
    b.Text = name
    b.TextColor3 = Color3.fromRGB(0, 0, 0) -- خط أسود واضح
    b.Font = Enum.Font.GothamBold
    b.TextSize = 12
    b.ZIndex = 15 -- أعلى قيمة لضمان أنها فوق العين دائماً
    b.BorderSizePixel = 0
    
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 6)
    c.Parent = b
    table.insert(allButtons, b)
end

-- نظام البحث
SearchBox:GetPropertyChangedSignal("Text"):Connect(function()
    local searchText = SearchBox.Text:lower()
    local currentY = 0
    for _, btn in pairs(allButtons) do
        if btn.Text:lower():find(searchText) then
            btn.Visible = true
            btn.Position = UDim2.new(0.05, 0, 0, currentY)
            currentY = currentY + 38
        else
            btn.Visible = false
        end
    end
end)

-- [ القائمة بكلماتك بالضبط ]
local s, g = 0, 38
AddBtn("الحقوق", s)
AddBtn("القائمه الرئيسيه", s + g)
AddBtn("اللاعب", s + g*2)
AddBtn("التخريب على لاعبين", s + g*3)
AddBtn("سكربت شات", s + g*4)
AddBtn("تأثير", s + g*5)
AddBtn("تخريب الماب", s + g*6)
AddBtn("السكنات", s + g*7)
AddBtn("الاجسام", s + g*8)
AddBtn("مضادات", s + g*9)
AddBtn("بحوثات", s + g*10)
AddBtn("قسم الاطفال", s + g*11)
AddBtn("السيارات", s + g*12)
AddBtn("البيوت", s + g*13)
AddBtn("الصملات", s + g*14)
AddBtn("الرحمه", s + g*15)
AddBtn("تخريب سيرفر", s + g*16)
AddBtn("اخرى", s + g*17)

-- زر الإغلاق X
local Close = Instance.new("TextButton")
Close.Parent = FrontFrame
Close.Size = UDim2.new(0, 30, 0, 30)
Close.Position = UDim2.new(1, -35, 0, 5)
Close.Text = "X"
Close.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Close.ZIndex = 20
local CC = Instance.new("UICorner")
CC.CornerRadius = UDim.new(1, 0)
CC.Parent = Close
Close.MouseButton1Click:Connect(function() ScreenGui:Destroy() end)
