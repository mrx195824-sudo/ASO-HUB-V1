local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("MOV9_PRO_FINAL") then CoreGui.MOV9_PRO_FINAL:Destroy() end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "MOV9_PRO_FINAL"

-- [ الإطار الرئيسي - أسود شفاف ]
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 450, 0, 310)
MainFrame.Position = UDim2.new(0.5, -225, 0.4, -155)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.BackgroundTransparency = 0.25 -- نفس شفافية Ravex
MainFrame.BorderSizePixel = 0
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)

-- [ حدود أخضر غامق جداً ]
local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Color = Color3.fromRGB(0, 70, 30) -- أخضر غامق ملكي
Stroke.Thickness = 3

-- [ صورة البروفايل العلوية ]
local ProfileImg = Instance.new("ImageLabel", MainFrame)
ProfileImg.Size = UDim2.new(0, 65, 0, 65)
ProfileImg.Position = UDim2.new(0.43, 0, -0.12, 0)
ProfileImg.Image = "rbxassetid://6033788246" 
ProfileImg.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Instance.new("UICorner", ProfileImg).CornerRadius = UDim.new(1, 0)
local ImgStroke = Instance.new("UIStroke", ProfileImg)
ImgStroke.Color = Color3.fromRGB(0, 100, 40)
ImgStroke.Thickness = 2

-- [ قائمة الأزرار المنسدلة ]
local Content = Instance.new("ScrollingFrame", MainFrame)
Content.Size = UDim2.new(0.9, 0, 0.7, 0)
Content.Position = UDim2.new(0.05, 0, 0.25, 0)
Content.BackgroundTransparency = 1
Content.CanvasSize = UDim2.new(0, 0, 1.8, 0)
Content.ScrollBarThickness = 0

local function AddDropdown(text, pos)
    local Drop = Instance.new("Frame", Content)
    Drop.Size = UDim2.new(1, 0, 0, 48)
    Drop.Position = UDim2.new(0, 0, 0, pos * 58)
    Drop.BackgroundColor3 = Color3.fromRGB(0, 60, 25) -- الأخضر الغامق للأزرار
    Drop.BackgroundTransparency = 0.1
    Drop.BorderSizePixel = 0
    Instance.new("UICorner", Drop).CornerRadius = UDim.new(0, 10)
    
    local Label = Instance.new("TextLabel", Drop)
    Label.Size = UDim2.new(0.8, 0, 1, 0)
    Label.Position = UDim2.new(0.05, 0, 0, 0)
    Label.Text = text
    Label.TextColor3 = Color3.fromRGB(255, 255, 255)
    Label.BackgroundTransparency = 1
    Label.TextXAlignment = Enum.TextXAlignment.Left
    Label.Font = Enum.Font.GothamBold
    Label.TextSize = 14

    local Arrow = Instance.new("TextLabel", Drop)
    Arrow.Size = UDim2.new(0.1, 0, 1, 0)
    Arrow.Position = UDim2.new(0.85, 0, 0, 0)
    Arrow.Text = "▼"
    Arrow.TextColor3 = Color3.fromRGB(200, 200, 200)
    Arrow.BackgroundTransparency = 1
end

-- [ إضافة نفس أزرار الصورة ]
AddDropdown("اختيار نوع السيارة", 0)
AddDropdown("دوران حول اللاعب", 1)
AddDropdown("بدء حركة السيارة", 2)
AddDropdown("إيقاف الحركة", 3)
AddDropdown("إعدادات MOV9", 4)

-- [ زر الفتح والإغلاق الصغير ]
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 55, 0, 55)
Toggle.Position = UDim2.new(0.02, 0, 0.1, 0)
Toggle.Text = "MOV9"
Toggle.BackgroundColor3 = Color3.fromRGB(0, 60, 25)
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Toggle.Font = Enum.Font.GothamBold
Toggle.TextSize = 12
Instance.new("UICorner", Toggle).CornerRadius = UDim.new(1, 0)
local TStroke = Instance.new("UIStroke", Toggle)
TStroke.Color = Color3.fromRGB(255, 255, 255)
TStroke.Thickness = 1

Toggle.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

print("MOV9 DARK EDITION LOADED SUCCESS!")
