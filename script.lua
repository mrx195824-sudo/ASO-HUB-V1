-- [ استدعاء المكتبة الأصلية ]
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- [ إنشاء النافذة الرئيسية بنفس أبعاد GhostHub ]
local Window = Rayfield:CreateWindow({
   Name = "✅ MOV9 Hub | Developers: (MOV9_Cloud)",
   LoadingTitle = "MOV9 LOADING SYSTEM",
   LoadingSubtitle = "بواسطة MOV9_Cloud",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "MOV9_Configs",
      FileName = "Main"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvite",
      RememberJoins = true
   },
   KeySystem = false 
})

-- [ إنشاء الأقسام الجانبية بنفس الترتيب ]
local MusicTab = Window:CreateTab("اغاني منوعة 🎵", 4483362458) -- هذا هو القسم المفتوح بالصورة
local QuranTab = Window:CreateTab("قرآن 📖", 4483362458)
local ForeignTab = Window:CreateTab("اجنبيات 🎸", 4483362458)
local ArabicTab = Window:CreateTab("اغاني عربية 🎶", 4483362458)

-- [ إضافة الأزرار بنفس الشكل والنجمة ⭐ ]
local Section = MusicTab:CreateSection("قائمة الأغاني والمنوعات")

MusicTab:CreateButton({
   Name = "شيلات  [ ⭐ ]",
   Callback = function()
       -- الكود هنا
       print("تم تشغيل الشيلات")
   end,
})

MusicTab:CreateButton({
   Name = "هجولة  [ ⭐ ]",
   Callback = function()
       print("تم تفعيل وضع الهجولة")
   end,
})

MusicTab:CreateButton({
   Name = "حزين 2  [ ⭐ ]",
   Callback = function()
       print("تم تشغيل حزين 2")
   end,
})

MusicTab:CreateButton({
   Name = "الحمدلله  [ ⭐ ]",
   Callback = function()
       print("الحمدلله")
   end,
})

MusicTab:CreateButton({
   Name = "صلوا على النبي  [ ⭐ ]",
   Callback = function()
       print("اللهم صل وسلم على نبينا محمد")
   end,
})

-- [ إضافة ميزة السلايدر (نفس نظام السكربتات الاحترافية) ]
MusicTab:CreateSlider({
   Name = "صوت الموسيقى",
   Range = {0, 100},
   Increment = 1,
   Suffix = "%",
   CurrentValue = 50,
   Flag = "MusicVol",
   Callback = function(Value)
      print("مستوى الصوت: "..Value)
   end,
})

-- [ إشعار التشغيل ]
Rayfield:Notify({
   Title = "تم التفعيل بنجاح!",
   Content = "واجهة MOV9 مطابقة لـ GhostHub الآن",
   Duration = 6.5,
   Image = 4483362458,
})
