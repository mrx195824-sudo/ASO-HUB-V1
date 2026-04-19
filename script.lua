-- [ MOV9 BROOKHAVEN GHOST INJECTOR ]

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Title = Instance.new("TextLabel")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "MOV9_GHOST"

-- تصميم الواجهة الاحترافي
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 450, 0, 300)
MainFrame.Position = UDim2.new(0.5, -225, 0.5, -150)
MainFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
MainFrame.Active = true
MainFrame.Draggable = true

local Corner = Instance.new("UICorner")
Corner.CornerRadius = UDim.new(0, 15)
Corner.Parent = MainFrame

-- إضافة صورة العين كخلفية (اللي اخترتها أنت)
local Bg = Instance.new("ImageLabel")
Bg.Parent = MainFrame
Bg.Size = UDim2.new(1, 0, 1, 0)
Bg.Image = "rbxthumb://type=Asset&id=103960116632767&w=420&h=420"
Bg.ImageTransparency = 0.7
Bg.BackgroundTransparency = 1
Bg.ScaleType = Enum.ScaleType.Fill

-- [ وظائف الحقن القوية ]

local function AddHack(name, pos, func)
    local btn = Instance.new("TextButton")
    btn.Parent = MainFrame
    btn.Size = UDim2.new(0, 200, 0, 45)
    btn.Position = pos
    btn.Text = name
    btn.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.GothamBold
    btn.TextSize = 14
    
    local c = Instance.new("UICorner")
    c.CornerRadius = UDim.new(0, 8)
    c.Parent = btn
    
    btn.MouseButton1Click:Connect(func)
end

-- 1. كود سرقة جميع الخزنات (Remote Injection)
AddHack("💰 سرقة خزنة قريبة", UDim2.new(0.05, 0, 0.2, 0), function()
    -- هذا الريموت يرسل أمر الانفجار للخزنة
    local args = { [1] = "ExplodeSafe" }
    game:GetService("ReplicatedStorage").RE:FindFirstChild("1Safe"):FireServer(unpack(args))
end)

-- 2. كود فتح جميع الأبواب (Unlock All)
AddHack("🔓 فتح جميع الأبواب", UDim2.new(0.52, 0, 0.2, 0), function()
    for _, house in pairs(workspace.Houses:GetChildren()) do
        local args = { [1] = "UnlockDoor", [2] = house }
        game:GetService("ReplicatedStorage").RE:FindFirstChild("1House"):FireServer(unpack(args))
    end
end)

-- 3. كود الطيران الاحترافي (Fly)
AddHack("🕊️ طيران الهكر", UDim2.new(0.05, 0, 0.45, 0), function()
    -- تفعيل وضع الطيران الخاص بالمشغل
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))()
end)

-- 4. كود نسخ الملابس السريع
AddHack("👕 نسخ سكن (عشوائي)", UDim2.new(0.52, 0, 0.45, 0), function()
    local p2 = game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())]
    if p2 then
        game.Players.LocalPlayer.CharacterAppearanceId = p2.UserId
        game.Players.LocalPlayer.Character.Humanoid.Health = 0
    end
end)
