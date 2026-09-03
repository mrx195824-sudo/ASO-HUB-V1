-- استدعاء مكتبة الواجهات Rayfield UI
local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

-- إنشاء النافذة الرئيسية
local Window = Rayfield:CreateWindow({
   Name = "Mickey Chat | Spam Bot",
   LoadingTitle = "جارِ التحميل...",
   LoadingSubtitle = "بواسطة GitHub",
   ConfigurationSaving = {
      Enabled = false,
   },
   KeySystem = false, 
})

-- إنشاء تاب (صفحة) للتحكم
local Tab = Window:CreateTab("السبام", 4483362458)

-- متغيرات التحكم
local spamText = "كلاب"
local isSpamming = false

-- خانة لتغيير الكلام اللي تبي ترسله
Tab:CreateInput({
   Name = "نص الرسالة",
   PlaceholderText = "اكتب الكلام هنا...",
   RemoveFocusTextOnFocusLost = false,
   Callback = function(Text)
      spamText = Text
   end,
})

-- زر التشغيل والإيقاف (Toggle)
Tab:CreateToggle({
   Name = "تشغيل / إيقاف السبام",
   CurrentValue = false,
   Flag = "SpamToggle",
   Callback = function(Value)
      isSpamming = Value
      
      if isSpamming then
         task.spawn(function()
            while isSpamming do
               pcall(function()
                  local args = {
                      [1] = spamText,
                      [2] = "All"
                  }
                  game:GetService("ReplicatedStorage"):WaitForChild("DefaultChatSystemChatEvents"):WaitForChild("SayMessageRequest"):FireServer(unpack(args))
               end)
               -- سرعة عالية بدون تأخير للوصول لأقصى سرعة ممكنة
               task.defer(function() end)
            end
         end)
      end
   end,
})
