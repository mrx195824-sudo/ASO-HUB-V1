-- [[ MOV9 ULTIMATE HUB - BROOKHAVEN ]]
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local LP = Players.LocalPlayer

-- تنظيف النسخ القديمة عشان ما يعلق
if CoreGui:FindFirstChild("MOV9_PRO") then CoreGui.MOV9_PRO:Destroy() end

-- [ إنشاء الواجهة ]
local ScreenGui = Instance.new("ScreenGui", CoreGui)
ScreenGui.Name = "MOV9_PRO"

local MainFrame = Instance.new("Frame", ScreenGui)
MainFrame.Size = UDim2.new(0, 520, 0, 340)
MainFrame.Position = UDim2.new(0.5, -260, 0.5, -170)
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
MainFrame.BorderSizePixel = 0
MainFrame.Visible = true -- خليه يظهر فوراً للتجربة
Instance.new("UICorner", MainFrame).CornerRadius = UDim.new(0, 10)
local Stroke = Instance.new("UIStroke", MainFrame)
Stroke.Color = Color3.fromRGB(0, 255, 127)
Stroke.Thickness = 2

-- [ القائمة الجانبية ]
local Sidebar = Instance.new("Frame", MainFrame)
Sidebar.Size = UDim2.new(0, 140, 1, 0)
Sidebar.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
Sidebar.BorderSizePixel = 0
Instance.new("UICorner", Sidebar)

-- [ حاوية الصفحات ]
local PagesContainer = Instance.new("Frame", MainFrame)
PagesContainer.Size = UDim2.new(0.68, 0, 0

