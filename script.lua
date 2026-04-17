local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "👑 ASO HUB",
    SubTitle = "إصدار النخبة V14",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- إيقاف الشفافية عشان اللون يكون قوي
    Theme = "Black", -- الثيم الأسود الصافي
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- تخصيص الألوان (أزرق ملكي حاد على خلفية سوداء)
Fluent.Options = {
    AccentColor = Color3.fromRGB(0, 85, 255),
    MainColor = Color3.fromRGB(10, 10, 10) -- أسود ملكي فخم
}

-- قسم التجربة (الخط الطويل الجانبي)
local Tabs = {
    Main = Window:AddTab({ Title = "تجربة", Icon = "star" })
}

-- الزر اللي طلبته
Tabs.Main:AddButton({
    Title = "تجربة القوة",
    Description = "أقوى مكتبة بأفضل لون",
    Callback = function()
        Fluent:Notify({
            Title = "نجحت!",
            Content = "هذي هي أقوى مكتبة بأفضل ثيم ممكن.",
            Duration = 5
        })
    end
})

Window:SelectTab(1)
