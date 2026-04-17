local CoreGui = game:GetService("CoreGui")
local LP = game.Players.LocalPlayer

if CoreGui:FindFirstChild("MOV9_MAPS") then CoreGui.MOV9_MAPS:Destroy() end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "MOV9_MAPS"

-- [ الواجهة الرئيسية - ستايل Ravex أخضر غامق ]
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 450, 0, 350)
MainFrame.Position = UDim2.new(0.5, -225, 0.4, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.BackgroundTransparency = 0.2
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 15)
local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Color = Color3.fromRGB(0, 80, 30) -- الأخضر الغامق الملكي
Stroke.Thickness = 3

-- [ حاوية الأزرار ]
local Content = Instance.new("ScrollingFrame", MainFrame)
Content.Size = UDim2.new(0.9, 0, 0.8, 0)
Content.Position = UDim2.new(0.05, 0, 0.15, 0)
Content.BackgroundTransparency = 1
Content.ScrollBarThickness = 2
Content.CanvasSize = UDim2.new(0, 0, 2, 0)
local List = Instance.new("UIListLayout", Content)
List.Padding = UDim.new(0, 10)

-- [ وظيفة الانتقال الذكي ]
local function Teleport(name, pos)
    local btn = Instance.new("TextButton", Content)
    btn.Size = UDim2.new(1, 0, 0, 45)
    btn.Text = "انتقال إلى: " .. name
    btn.BackgroundColor3 = Color3.fromRGB(0, 60, 25)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    Instance.new("UICorner", btn)
    
    btn.MouseButton1Click:Connect(function()
        LP.Character.HumanoidRootPart.CFrame = CFrame.new(pos)
    end)
end

-- [[ قائمة الإحداثيات الجاهزة ]]

-- أماكن عامة
Teleport("البنك 🏦", Vector3.new(-411, 23, -204))
Teleport("مركز الشرطة 👮", Vector3.new(-484, 23, -64))
Teleport("المستشفى 🏥", Vector3.new(-246, 23, -196))
Teleport("المطار ✈️", Vector3.new(-441, 23, -422))

-- أشياء وأماكن سرية (إحداثيات دقيقة)
Teleport("خزنة البنك السرية 💰", Vector3.new(-422, 23, -214))
Teleport("الغرفة السرية في السقف 🕵️", Vector3.new(-65, 80, -135))
Teleport("البحيرة 🌊", Vector3.new(-270, 20, 480))
Teleport("محل الملابس 👕", Vector3.new(-415, 23, -130))

-- [ زر الفتح ]
local Toggle = Instance.new("TextButton", ScreenGui)
Toggle.Size = UDim2.new(0, 50, 0, 50)
Toggle.Position = UDim2.new(0.02, 0, 0.1, 0)
Toggle.Text = "MOV9"
Toggle.BackgroundColor3 = Color3.fromRGB(0, 60, 25)
Toggle.TextColor3 = Color3.fromRGB(255, 255, 255)
Instance.new("UICorner", Toggle).CornerRadius = UDim.new(1, 0)
Toggle.MouseButton1Click:Connect(function() MainFrame.Visible = not MainFrame.Visible end)
