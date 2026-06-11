-- [[ ASO-HUB V2 - Rayfield UI Edition ]] --
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "ASO-HUB V2 🚀 (Brookhaven)",
   LoadingTitle = "جاري تشغيل السكربت...",
   LoadingSubtitle = "بواسطة mrx195824-sudo",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = "ASOHub"
   },
   KeySystem = false -- تم إلغاء نظام المفتاح لسهولة التشغيل
})

-- القسم الرئيسي الأول: مضادات
local Tab1 = Window:CreateTab("مضادات 🛡️", 4483362458) -- أيقونة درع

Tab1:CreateButton({
   Name = "مضاد الطرد (Anti-Kick)",
   Callback = function()
       -- كود حماية من الطرد التلقائي
       local g = hookmetamethod(game, "__namecall", function(self, ...)
           local method = getnamecallmethod()
           if method == "Kick" then
               return nil
           end
           return g(self, ...)
       end)
       Rayfield:Notify({Title = "تفعيل", Content = "تم تفعيل مضاد الطرد بنجاح!", Duration = 3})
   end,
})

Tab1:CreateButton({
   Name = "مضاد السقوط (Anti-Ragdoll)",
   Callback = function()
       -- كود لمنع سقوط الشخصية أو فقدان التوازن
       local p = game.Players.LocalPlayer
       if p.Character and p.Character:FindFirstChild("Humanoid") then
           p.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown, false)
           p.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll, false)
       end
       Rayfield:Notify({Title = "تفعيل", Content = "تم تفعيل مضاد السقوط!", Duration = 3})
   end,
})

-- القسم الرئيسي الثاني: مضادات 2
local Tab2 = Window:CreateTab("مضادات 2 ⚔️", 4483362458)

Tab2:CreateButton({
   Name = "مضاد التجميد (Anti-Freeze)",
   Callback = function()
       -- كود لمنع الماب من تجميد حركتك
       local p = game.Players.LocalPlayer
       if p.Character and p.Character:FindFirstChild("HumanoidRootPart") then
           p.Character.HumanoidRootPart.Anchored = false
       end
       Rayfield:Notify({Title = "تفعيل", Content = "تم تفعيل مضاد التجميد والأنكور!", Duration = 3})
   end,
})

Tab2:CreateButton({
   Name = "مضاد الفلاش / العمى (Anti-Blind)",
   Callback = function()
       -- كود لإزالة المؤثرات البصرية المزعجة من الشاشة
       if game.Lighting:FindFirstChild("Blur") then game.Lighting.Blur:Destroy() end
       if game.Lighting:FindFirstChild("ColorCorrection") then game.Lighting.ColorCorrection:Destroy() end
       Rayfield:Notify({Title = "تفعيل", Content = "تم تنظيف الشاشة من المؤثرات!", Duration = 3})
   end,
})

-- قسم إضافي للتحكم بالسرعة والقفز داخل الماب
local Tab3 = Window:CreateTab("الإعدادات الشخصية ⚙️", 4483362458)

Tab3:CreateSlider({
   Name = "سرعة اللاعب",
   Range = {16, 250},
   Increment = 1,
   CurrentValue = 16,
   Flag = "SpeedSlider",
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

Tab3:CreateSlider({
   Name = "قوة القفز",
   Range = {50, 250},
   Increment = 1,
   CurrentValue = 50,
   Flag = "JumpSlider",
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

Rayfield:Notify({Title = "ASO-HUB جاهز!", Content = "استمتع باللعب وتعديل الميزات وتطويرها يا بطل.", Duration = 5})
