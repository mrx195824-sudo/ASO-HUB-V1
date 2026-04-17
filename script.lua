local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Steventhebest/Venyx-UI-Library/main/Source.lua"))()
local Venyx = library.new("👑 ASO HUB | THE LAST HOPE", 5013109572)

-- [[ الأقسام ]]
local PlayerTab = Venyx:addPage("اللاعب", 5012544693)
local BrookTab = Venyx:addPage("بروكهافن", 5012544693)
local TrollTab = Venyx:addPage("التخريب", 5012544693)
local SettingsTab = Venyx:addPage("الألوان", 5012544693)

local PlayerSection = PlayerTab:addSection("مميزات اللاعب")
local BrookSection = BrookTab:addSection("سيارات وبيوت")
local TrollSection = TrollTab:addSection("قلتشات وفلينق")
local ColorsSection = SettingsTab:addSection("تغيير الثيم")

-- [[ 1. قسم اللاعب ]]
PlayerSection:addSlider("السرعة", 16, 16, 1000, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)

PlayerSection:addButton("🚀 طيران (Fly)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))()
end)

-- [[ 2. قسم بروكهافن - مدمج فيه كل صورك ]]
BrookSection:addButton("🚗 فتح السيارات (Mops)", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/IceSpices/mop-hub/main/Brookhaven.lua"))()
end)

BrookSection:addButton("🏠 سكربت P_97 الكامل", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/p97-sudo/P97-Hub/main/Brookhaven.lua"))()
end)

-- [[ 3. قسم التخريب ]]
TrollSection:addButton("💥 Admin Fling", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/mops-hub/main/admin-fling.lua"))()
end)

TrollSection:addButton("🌪️ فلينق الاختفاء", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Invisible%20Fling"))()
end)

-- [[ 4. قسم الألوان - تحكم كامل بالألوان ]]
ColorsSection:addColorPicker("لون الأزرار", Color3.fromRGB(0, 51, 153), function(color)
    Venyx:setTheme("Accent", color)
end)

-- افتح أول صفحة تلقائياً
Venyx:SelectPage(Venyx.pages[1], true)

