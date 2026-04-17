local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "✅ MOV9 Hub | Developers: (MOV9_Cloud)",
   LoadingTitle = "MOV9 Hub System",
   LoadingSubtitle = "بواسطة MOV9_Cloud",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "MOV9Data",
      FileName = "MainHub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvite",
      RememberJoins = true
   },
   KeySystem = false 
})

-- [ إنشاء الأقسام بالأيقونات مثل الصورة ]
local MusicTab = Window:CreateTab("اغاني منوعة 🎵", 4483362458) 
local QuranTab = Window:CreateTab("قرآن 📖", 4483362458)
local ForeignTab = Window:CreateTab("اجنبيات 🎸", 4483362458)
local ArabicTab = Window:CreateTab("اغاني عربية 🎶", 4483362458)

-- [ الأزرار داخل قسم "اغاني منوعة" ]
MusicTab:CreateButton({
   Name = "[ ⭐ ]  حزين 2",
   Info = "button", -- الكلمة اللي تظهر على اليمين في الصورة
   Callback = function()
       print("تم اختيار حزين 2")
   end,
})

MusicTab:CreateButton({
   Name = "[ ⭐ ]  الحمدلله",
   Info = "button",
   Callback = function()
       print("الحمدلله")
   end,
})

MusicTab:CreateButton({
   Name = "[ ⭐ ]  صلوا على النبي",
   Info = "button",
   Callback = function()
       print("اللهم صل وسلم على نبينا محمد")
   end,
})

-- [ السلايدر الأزرق - مطابق للصورة ]
MusicTab:CreateSlider({
   Name = "صوت الموسيقى",
   Range = {0, 100},
   Increment = 1,
   Suffix = "%",
   CurrentValue = 50,
   Flag = "MusicSlider", 
   Callback = function(Value)
      -- برمجة الصوت
   end,
})

-- [ أيقونات البحث والإعدادات فوق تظهر تلقائياً في Rayfield V2 ]
