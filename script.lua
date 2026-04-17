local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "👑 ASO HUB | BLACK EDITION",
   LoadingTitle = "جاري تحميل الواجهة الملكية...",
   LoadingSubtitle = "بواسطة النينجا",
   ConfigurationSaving = {
      Enabled = false
   },
   KeySystem = false
})

-- [[ قسم التجربة ]]
local Tab = Window:CreateTab("تجربة", 4483362458) 

Tab:CreateButton({
   Name = "اضغط هنا (اختبار اللون)",
   Callback = function()
      Rayfield:Notify({
         Title = "تمت التجربة!",
         Content = "هل اللون الآن أسود صريح كما طلبت؟",
         Duration = 5,
         Image = 4483362458,
      })
   end,
})

-- [[ إعدادات الألوان لإجبار الواجهة على الأسود ]]
-- Rayfield تمتاز بأن خلفيتها سوداء داكنة جداً ولا تتأثر بالرمادي
