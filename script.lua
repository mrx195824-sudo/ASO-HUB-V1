local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

local Window = Rayfield:CreateWindow({
   Name = "Ravex Style Menu",
   LoadingTitle = "جاري تحميل السكربت...",
   LoadingSubtitle = "بواسطة الذكاء الاصطناعي",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "MyRayfieldConfig", 
      FileName = "Settings"
   },
   Discord = {
      Enabled = false,
      Invite = "noinviter", 
      RememberJoins = true 
   },
   KeySystem = false, -- اجعلها true إذا أردت إضافة نظام مفتاح (Key)
})

-- هذا هو القسم الذي يضيف التبويبات (Tabs)
local MainTab = Window:CreateTab("الرئيسية", 4483362458) -- أيقونة افتراضية

-- إضافة زر (Button) للتجربة
local Button = MainTab:CreateButton({
   Name = "تفعيل الميزة الأولى",
   Callback = function()
       -- هنا تضع الكود الذي تريد تشغيله عند الضغط
       Rayfield:Notify({
          Title = "تم التشغيل!",
          Content = "السكربت يعمل الآن بالواجهة الملونة",
          Duration = 5,
          Image = 4483362458,
          Actions = {
             Ignore = {
                Name = "حسناً",
                Callback = function() print("User clicked OK") end
             },
          },
       })
   end,
})

-- لتغيير اللون يدوياً إذا لم تعجبك السمة الجاهزة، يمكنك استخدام هذا السطر:
-- Rayfield:Notify({Title = "تنبيه", Content = "استمتع بالواجهة الجديدة!"})
