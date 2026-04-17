herelocal OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({
    Name = "👑 ASO HUB | CUSTOM PRO", 
    HidePremium = false, 
    SaveConfig = true, 
    ConfigFolder = "ASOCustom",
    IntroText = "جاري تشغيل نظام النينجا..."
})

-- [[ قسم التصميم - هنا تتحكم بكل شيء ]]
local SettingsTab = Window:MakeTab({
    Name = "🎨 الألوان",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

SettingsTab:AddColorpicker({
    Name = "لون الواجهة (Theme)",
    Default = Color3.fromRGB(0, 51, 153),
    Callback = function(Value)
        -- هذا الكود يغير لك الثيم فوراً وأنت تتفرج
        _G.WindowColor = Value
        OrionLib:MakeNotification({
            Name = "تم التغيير!",
            Content = "اللون الجديد شغال يا بطل",
            Image = "rbxassetid://4483345998",
            Time = 3
        })
    end	  
})

-- [[ قسم اللاعب ]]
local PlayerTab = Window:MakeTab({
    Name = "👤 اللاعب",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

PlayerTab:AddSlider({
    Name = "السرعة",
    Min = 16,
    Max = 1000,
    Default = 16,
    Color = Color3.fromRGB(255,255,255),
    Increment = 1,
    ValueName = "Speed",
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end    
})

-- [[ قسم بروكهافن والشغل الثقيل ]]
local BrookTab = Window:MakeTab({
    Name = "🏡 بروكهافن",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

BrookTab:AddButton({
    Name = "🚗 فتح جميع السيارات (VIP)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/IceSpices/mop-hub/main/Brookhaven.lua"))()
    end    
})

BrookTab:AddButton({
    Name = "🏠 سكربت P_97 المطور",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/p97-sudo/P97-Hub/main/Brookhaven.lua"))()
    end    
})

-- [[ قسم التخريب (Troll) ]]
local TrollTab = Window:MakeTab({
    Name = "🌪️ التخريب",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

TrollTab:AddButton({
    Name = "💥 Admin Fling (طيرهم)",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/mops-hub/main/admin-fling.lua"))()
    end    
})

-- [[ قسم السكربتات العالمية ]]
local GlobalTab = Window:MakeTab({
    Name = "🌐 مكتبة الهكرز",
    Icon = "rbxassetid://4483345998",
    PremiumOnly = false
})

GlobalTab:AddDropdown({
    Name = "اختر السكربت",
    Default = "EzHub",
    Options = {"EzHub", "System47", "Ghost Hub", "Tiger Hub"},
    Callback = function(Value)
        if Value == "EzHub" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/debug101/EzHub/main/EzHub.lua"))()
        elseif Value == "System47" then
            loadstring(game:HttpGet("https://raw.githubusercontent.com/System47/System47/main/System47.lua"))()
        end
    end    
})

OrionLib:Init()
