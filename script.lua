local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "👑 ASO HUB | TEST",
    SubTitle = "نسخة التجربة",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, 
    Theme = "Dark", 
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- التحكم باللون (الأزرق الملكي اللي تحبه)
Fluent.Options = { AccentColor = Color3.fromRGB(0, 51, 153) }

-- إضافة قسم واحد (علامة الزائد اللي تظهر فوق)
local Tabs = {
    TestTab = Window:AddTab({ Title = "تجربة", Icon = "plus-circle" })
}

-- إضافة الزر اللي طلبته
Tabs.TestTab:AddButton({
    Title = "تجربة",
    Description = "اضغط هنا للتأكد من أن السكربت يعمل",
    Callback = function()
        Fluent:Notify({
            Title = "نجحت التجربة!",
            Content = "الواجهة شغالة 100% يا وحش",
            Duration = 5
        })
    end
})

Window:SelectTab(1)
