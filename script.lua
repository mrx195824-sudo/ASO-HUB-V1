-- [[ MOV9 COORDINATE EXTRACTOR ]]

local ScreenGui = Instance.new("ScreenGui", game:GetService("CoreGui"))
local GetPosBtn = Instance.new("TextButton", ScreenGui)

-- تصميم الزر
GetPosBtn.Size = UDim2.new(0, 200, 0, 50)
GetPosBtn.Position = UDim2.new(0.5, -100, 0.05, 0)
GetPosBtn.BackgroundColor3 = Color3.fromRGB(0, 100, 50) -- أخضر غامق ملكي
GetPosBtn.Text = "استخراج إحداثيات MOV9 📍"
GetPosBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
GetPosBtn.Font = Enum.Font.GothamBold
GetPosBtn.TextSize = 14
Instance.new("UICorner", GetPosBtn)

-- وظيفة الاستخراج
GetPosBtn.MouseButton1Click:Connect(function()
    local p = game.Players.LocalPlayer.Character.HumanoidRootPart.Position
    -- تنسيق الكود عشان تنسخه وتحطه في سكربتك فوراً
    local formattedCoords = string.format("Vector3.new(%.2f, %.2f, %.2f)", p.X, p.Y, p.Z)
    
    -- نسخ للـ Clipboard (للمشغلات اللي تدعمها مثل Delta/Fluxus)
    setclipboard(formattedCoords)
    
    -- إظهار النتيجة في الـ Console وفي نص الزر مؤقتاً
    GetPosBtn.Text = "تم النسخ بنجاح! ✅"
    print("-------------------------")
    print("MOV9 New Coords:")
    print(formattedCoords)
    print("-------------------------")
    
    wait(2)
    GetPosBtn.Text = "استخراج إحداثيات MOV9 📍"
end)
