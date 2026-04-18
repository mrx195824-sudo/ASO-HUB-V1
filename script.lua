-- [ استدعاء مكتبة Redz V5 الأصلية ]
local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/RHEZSN/Redz-Library/refs/heads/main/Source.lua"))()

-- [ إنشاء النافذة الرئيسية ]
local Window = RedzLib:MakeWindow({
  Title = "MOV9 Hub | Brookhaven",
  SubTitle = "بواسطة MOV9_Cloud",
  SaveFolder = "MOV9_Config"
})

-- [ إضافة الأقسام الجانبية - Tabs ]
local MainTab = Window:CreateTab("🏠 الرئيسية", "rbxassetid://4483362458")
local MusicTab = Window:CreateTab("🎵 أغاني منوعة", "rbxassetid://4483362458")

-- [ إضافة العناوين والأزرار داخل قسم الأغاني ]
MusicTab:AddSection("قائمة الأغاني والمنوعات")

MusicTab:AddButton({
  Name = "شيلات  [ ⭐ ]",
  Callback = function()
      print("تم تشغيل الشيلات")
  end
})

MusicTab:AddButton({
  Name = "حزين 2  [ ⭐ ]",
  Callback = function()
      print("تم تشغيل حزين 2")
  end
})

-- [ إضافة سلايدر السرعة بنفس شكل V5 ]
MusicTab:AddSlider({
  Name = "سرعة اللاعب",
  Min = 16,
  Max = 500,
  Default = 16,
  Color = Color3.fromRGB(0, 150, 255), -- اللون الأزرق اللي في الصورة
  Increment = 1,
  Callback = function(Value)
      game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
  end
})

-- [ إضافة التوقل (Toggle) ]
MusicTab:AddToggle({
  Name = "تفعيل تلقائي",
  Default = false,
  Callback = function(Value)
      print("الحالة: ", Value)
  end
})
