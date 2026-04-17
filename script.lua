-- [[ 1. مسح أي واجهة قديمة معلقة عشان ما يصير لاق ]]
for _, v in pairs(game.CoreGui:GetChildren()) do
    if v:IsA("ScreenGui") and (v.Name == "Fluent" or v.Name == "Orion" or v.Name == "Rayfield") then
        v:Destroy()
    end
end

-- [[ 2. تحميل مكتبة Fluent الأصلية برابط مباشر وسريع ]]
local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

-- [[ 3. إنشاء الواجهة بالسواد الملكي اللي طلبته (بدون شفافية رمادية) ]]
local Window = Fluent:CreateWindow({
    Title = "👑 ASO HUB PRO",
    SubTitle = "النسخة الصافية",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, -- إيقاف التغبيش اللي يعيق الرؤية
    Theme = "Dark",
    MinimizeKey = Enum.KeyCode.LeftControl
})

-- لون أزرق حاد وواضح (مثل صور الهكرز المحترفين)
Fluent.Options = {
    AccentColor = Color3.fromRGB(0, 102, 255),
    MainColor = Color3.fromRGB(15, 15, 15) -- أسود صريح
}

-- [[ 4. قسم التجربة ]]
local Tabs = {
    Main = Window:AddTab({ Title = "تجربة", Icon = "play" })
}

Tabs.Main:AddButton({
    Title = "تشغيل السكربت الآن",
    Description = "اضغط للتأكد أن كل العوائق تم مسحها",
    Callback = function()
        Fluent:Notify({
            Title = "نجاح!",
            Content = "السكربت شغال والواجهة سوداء ملكية",
            Duration = 5
        })
    end
})

Window:SelectTab(1)
