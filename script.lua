local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "👑 ASO HUB | PRO TEST",
    SubTitle = "بواسطة النينجا",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, 
    Theme = "Dark", 
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- تخصيص اللون للأزرق الملكي المريح للعين
Fluent.Options = { AccentColor = Color3.fromRGB(0, 51, 153) }

-- إضافة الأقسام (الخطوط الطويلة الجانبية)
local Tabs = {
    Main = Window:AddTab({ Title = "التجربة", Icon = "play" }),
    Settings = Window:AddTab({ Title = "الإعدادات", Icon = "settings" })
}

-- إضافة الزر اللي طلبته
Tabs.Main:AddButton({
    Title = "زر تجربة",
    Description = "اضغط هنا لاختبار الواجهة",
    Callback = function()
        Window:Dialog({
            Title = "نجحت التجربة!",
            Content = "الواجهة تعمل الآن بنفس التصميم الذي طلبته. هل نستمر؟",
            Buttons = {
                { Title = "استمرار", Callback = function() print("مستعدون!") end },
                { Title = "إلغاء", Callback = function() print("تم الإلغاء") end }
            }
        })
    end
})

Window:SelectTab(1)
