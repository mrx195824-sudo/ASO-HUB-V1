local CoreGui = game:GetService("CoreGui")
if CoreGui:FindFirstChild("MOV9_FINAL") then CoreGui.MOV9_FINAL:Destroy() end

local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "MOV9_FINAL"

-- [ زر الفتح MOV9 ]
local ToggleBtn = Instance.new("TextButton", ScreenGui)
ToggleBtn.Size = UDim2.new(0, 70, 0, 40)
ToggleBtn.Position = UDim2.new(0.02, 0, 0.4, 0)
ToggleBtn.BackgroundColor3 = Color3.fromRGB(0, 150, 50)
ToggleBtn.Text = "MOV9"
ToggleBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
ToggleBtn.Font = Enum.Font.GothamBold
ToggleBtn.Draggable = true
Instance.new("UICorner", ToggleBtn)

-- [ شريط البحث العلوي (غيمة MOV9) ]
local CloudSearch = Instance.new("Frame", ScreenGui)
CloudSearch.Size = UDim2.new(0.6, 0, 0, 45)
CloudSearch.Position = UDim2.new(0.2, 0, 0.05, 0)
CloudSearch.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
CloudSearch.Visible = false
Instance.new("UICorner", CloudSearch)
Instance.new("UIStroke", CloudSearch).Color = Color3.fromRGB(0, 255, 127)

local SearchInput = Instance.new("TextBox", CloudSearch)
SearchInput.Size = UDim2.new(0.9, 0, 0.8, 0)
SearchInput.Position = UDim2.new(0.05, 0, 0.1, 0)
SearchInput.PlaceholderText = "🔍 ابحث في غيمة MOV9..."
SearchInput.BackgroundTransparency = 1
SearchInput.TextColor3 = Color3.fromRGB(0, 255, 127)
SearchInput.Font = Enum.Font.GothamBold

-- [ الواجهة الرئيسية ]
local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 550, 0, 350)
MainFrame.Position = UDim2.new(0.5, -275, 0.5, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.Visible = false
Instance.new("UICorner", MainFrame)

-- [ القائمة الجانبية ]
local Sidebar = Instance.new("Frame", MainFrame)
Sidebar.Size = UDim2.new(0, 140, 1, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Instance.new("UICorner", Sidebar)

local Pages = Instance.new("Frame", MainFrame)
Pages.Position = UDim2.new(0.28, 0, 0.1, 0)
Pages.Size = UDim2.new(0.7, 0, 0.85, 0)
Pages.BackgroundTransparency = 1

-- نظام تغيير الصفحات
local function CreatePage()
    local Page = Instance.new("ScrollingFrame", Pages)
    Page.Size = UDim2.new(1, 0, 1, 0)
    Page.Visible = false
    Page.BackgroundTransparency = 1
    Page.ScrollBarThickness = 2
    return Page
end

local CarPage = CreatePage()
local HousePage = CreatePage()

-- [ أزرار ماب بيوت ]
local function AddFeature(name, page, callback)
    local btn = Instance.new("TextButton", page)
    btn.Size = UDim2.new(0.9, 0, 0, 45)
    btn.Position = UDim2.new(0.05, 0, 0, #page:GetChildren() * 50)
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    btn.Text = name
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    Instance.new("UICorner", btn)
    btn.MouseButton1Click:Connect(callback)
end

-- إضافة المميزات
AddFeature("🚗 تلوين السيارة أخضر", CarPage, function() print("Car Colored!") end)
AddFeature("💨 سرعة السيارة", CarPage, function() print("Speed Set!") end)
AddFeature("🏠 قفل المنزل", HousePage, function() print("House Locked!") end)

-- [ أزرار التبديل الجانبية ]
local function AddTab(name, page, pos)
    local Tab = Instance.new("TextButton", Sidebar)
    Tab.Size = UDim2.new(0.9, 0, 0, 40)
    Tab.Position = UDim2.new(0.05, 0, 0, 20 + (pos * 45))
    Tab.Text = name
    Tab.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Tab.TextColor3 = Color3.fromRGB(0, 255, 127)
    Instance.new("UICorner", Tab)
    Tab.MouseButton1Click:Connect(function()
        for _, p in pairs(Pages:GetChildren()) do p.Visible = false end
        page.Visible = true
    end)
end

AddTab("السيارات", CarPage, 0)
AddTab("المنزل", HousePage, 1)

-- [ تفعيل البحث والفتح ]
ToggleBtn.MouseButton1Click:Connect(function()
    MainFrame.Visible = not MainFrame.Visible
    CloudSearch.Visible = MainFrame.Visible
end)

CarPage.Visible = true -- الصفحة الافتراضية
