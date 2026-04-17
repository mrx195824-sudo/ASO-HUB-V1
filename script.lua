local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "✅ MOV9 Hub | Developers: (MOV9_Cloud)",
   LoadingTitle = "MOV9 Hub System",
   LoadingSubtitle = "بواوسطة MOV9_Cloud",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "MOV9_Configs",
      FileName = "MainHub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvite",
      RememberJoins = true
   },
   KeySystem = false -- خله False عشان يفتح فوراً مثل الصورة
})

-- [ إنشاء الأقسام بنفس ترتيب وأيقونات صورتك ]
local MusicTab = Window:CreateTab("اغاني منوعة 🎵", 4483362458) 
local QuranTab = Window:CreateTab("قرآن 📖", 4483362458)
local ForeignTab = Window:CreateTab("اجنبيات 🎸", 4483362458)
local ArabicTab = Window:CreateTab("اغاني عربية 🎶", 4483362458)

-- [ إضافة الأزرار داخل القسم ]
local Section = MusicTab:CreateSection("General") -- مثل كلمة General في الصورة

MusicTab:CreateButton({
   Name = "Rayfield Keybind",
   Info = "b", -- الحرف اللي يظهر على اليمين
   Callback = function()
       print("تم الضغط على الزر")
   end,
})

local Section2 = MusicTab:CreateSection("System") -- مثل كلمة System في الصورة

MusicTab:CreateToggle({
   Name = "Anonymised Analytics",
   CurrentValue = true,
   Flag = "Toggle1", 
   Callback = function(Value)
       print("الحالة: ", Value)
   end,
})

-- [ إضافة زر البحث والإعدادات تظهر تلقائياً في هذا الإصدار ]
