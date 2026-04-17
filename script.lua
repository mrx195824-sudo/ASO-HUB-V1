local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("MOV9_HUB") then CoreGui.MOV9_HUB:Destroy() end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "MOV9_HUB"

-- [ زر الفتح والإغلاق MOV9 ]
local ToggleBtn = Instance.new("TextButton", ScreenGui)
ToggleBtn.Size = UDim2.new(0, 70, 0, 40)
ToggleBtn.Position = UDim2.new(0.02, 0, 0.45, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 50) -- أخضر داكن
ToggleBtn.Text = "MOV9"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.TextSize = 16
ToggleBtn.Draggable = true
ToggleBtn.Active = true
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(0, 8)
local BStroke = Instance.new("UIStroke", ToggleBtn)
BStroke.Color = Color3.fromRGB(0, 255, 100)
BStroke.Thickness = 2

-- [ الواجهة الرئيسية - أسود ملكي ]
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 480, 0, 320)
MainFrame.Position = UDim2.new(0.5, -240, 0.5, -160)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.Visible = false 
Instance.new("UICorner", MainFrame)

-- [ شريط البحث - غيمة MOV9 ]
local SearchBar = Instance.new("TextBox", MainFrame)
SearchBar.Size = UDim2.new(0.9, 0, 0, 40)
SearchBar.Position = UDim2.new(0.05, 0, 0, 55)
SearchBar.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
SearchBar.PlaceholderText = "🔍 ابحث في غيمة MOV9..."
SearchBar.Text = ""
SearchBar.TextColor3 = Color3.fromRGB(0, 255, 120)
SearchBar.Font = Enum.Font.Gotham
SearchBar.TextSize = 14
local SCorner = Instance.new("UICorner", SearchBar)
local SStroke = Instance.new("UIStroke", SearchBar)
SStroke.Color = Color3.fromRGB(0, 255, 120)
SStroke.Transparency = 0.6

-- [ العنوان ]
local Title = Instance.new("TextLabel", MainFrame)
Title.Size = UDim2.new(1, 0, 0, 45)
Title.Text = "ASO HUB | MOV9 CLOUD"
Title.TextColor3 = Color3.fromRGB(0, 255, 120)
Title.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Title.Font = Enum.Font.GothamBold
Title.TextSize = 18

-- [ أزرار ماب بيوت (أخضر هكر) ]
local function AddButton(name, pos)
    local btn = Instance.new("TextButton", MainFrame)
    btn.Size = UDim2.new(0.4, 0, 0, 45)
    btn.Position = UDim2.new(0.05 + (pos % 2 * 0.5), 0, 0.4 + (math.floor(pos/2) * 0.2), 0)
    btn.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    Instance.new("UICorner", btn)
    local stroke = Instance.new("UIStroke", btn)
    stroke.Color = Color3.fromRGB(0, 255, 100)
    return btn
end

AddButton("🚗 طيران سيارة", 0)
AddButton("🏠 قفل المنزل", 1)
AddButton("💨 سرعة خارقة", 2)
AddButton("🔑 فتح الأبواب", 3)

-- [ البرمجة ]
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
end)

print("MOV9 Script Loaded Successfully!")
