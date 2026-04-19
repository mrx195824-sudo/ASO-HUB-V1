-- حذف أي نسخة قديمة عشان ما تتلخبط
if game.CoreGui:FindFirstChild("MOV9_Safe_UI") then
    game.CoreGui.MOV9_Safe_UI:Destroy()
end

local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local MyImage = Instance.new("ImageLabel")
local CloseBtn = Instance.new("TextButton")

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.Name = "MOV9_Safe_UI"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

-- [ الإطار الرئيسي - خليته في نص الشاشة بالضبط ]
MainFrame.Parent = ScreenGui
MainFrame.Size = UDim2.new(0, 400, 0, 250) 
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -125) -- منتصف الشاشة
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40) -- لون رمادي غامق يبان لو الصورة ماطلعت
MainFrame.BorderSizePixel = 2
MainFrame.Active = true
MainFrame.Draggable = true 

-- [ الصورة ]
MyImage.Parent = MainFrame
MyImage.Size = UDim2.new(1, 0, 1, 0)
MyImage.BackgroundTransparency = 1
-- الرقم اللي عطيته لي طويل جداً، جربته بهذا التنسيق
MyImage.Image = "rbxassetid://121390048608932" 
MyImage.ScaleType = Enum.ScaleType.Fill

-- [ زر القفل ]
CloseBtn.Parent = MainFrame
CloseBtn.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
CloseBtn.Position = UDim2.new(0.85, 0, 0.05, 0)
CloseBtn.Size = UDim2.new(0, 40, 0, 30)
CloseBtn.Text = "X"
CloseBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseBtn.ZIndex = 5 -- عشان يطلع فوق الصورة

CloseBtn.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    print("تم إغلاق السكربت")
end)

print("السكربت اشتغل.. شف نص الشاشة!")
