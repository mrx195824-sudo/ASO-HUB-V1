local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "✅ GhostHub | Developers: (Ghost, Rami)", -- نفس الاسم في الصورة
   LoadingTitle = "MOV9 LOADING...",
   LoadingSubtitle = "بواسطة MOV9_Cloud",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "GhostHubConfig",
      FileName = "MainConfig"
   },
   -- [ السطر السحري اللي بحثت عنه في جوجل ]
   Theme = "Amethyst", -- هذا اللي يخلي الخلفية نفس صورتك بالضبط
   KeySystem = false 
})

-- إنشاء الأقسام الجانبية مثل الصورة
local MusicTab = Window:CreateTab("اغاني منوعة 🎵", 4483362458)
local QuranTab = Window:CreateTab("قرآن 📖", 4483362458)

-- إضافة الأزرار مع النجمة ⭐
MusicTab:CreateButton({
   Name = "حزين 2 [ ⭐ ]",
   Callback = function()
       print("تم التشغيل")
   end,
})

MusicTab:CreateButton({
   Name = "صلوا على النبي [ ⭐ ]",
   Callback = function()
       print("اللهم صل وسلم على نبينا محمد")
   end,
})
