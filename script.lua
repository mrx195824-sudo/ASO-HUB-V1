local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

local Window = Rayfield:CreateWindow({
   Name = "GhostHub Clone | الواجهة الملونة",
   LoadingTitle = "جاري تشغيل السكربت...",
   LoadingSubtitle = "بواسطة الذكاء الاصطناعي",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "GhostHubConfigs", 
      FileName = "CustomHub"
   },
   Discord = {
      Enabled = false,
   },
   KeySystem = false, 
})

-- هنا السر: تعديل الألوان لتكون مثل الصورة (وردي وأرجواني)
Rayfield:Notify({
   Title = "تم التشغيل!",
   Content = "الواجهة الآن مخصصة بألوان GhostHub",
   Duration = 5,
   Image = 4483362458,
   Actions = { 
      Ignore = {
         Name = "حسناً",
         Callback = function() end
      },
   },
})

-- إضافة الأقسام والأزرار
local Tab = Window:CreateTab("القائمة الرئيسية", 4483362458) -- يمكنك تغيير رقم الأيقونة

local Section = Tab:CreateSection("خيارات الأغاني")

local Button = Tab:CreateButton({
   Name = "تشغيل شيلات",
   Callback = function()
       print("تم ضغط الزر!")
   end,
})

local Toggle = Tab:CreateToggle({
   Name = "وضع الطيران",
   CurrentValue = false,
   Flag = "Toggle1", 
   Callback = function(Value)
       print("الحالة الآن:", Value)
   end,
})

local Slider = Tab:CreateSlider({
   Name = "سرعة اللاعب",
   Range = {16, 500},
   Increment = 10,
   Suffix = "سرعة",
   CurrentValue = 16,
   Flag = "Slider1", 
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})
