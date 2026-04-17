local RedzLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/REDZHUB/RedzLibV2/main/Source.lua"))()

local Window = RedzLib:MakeWindow({
  Title = "👑 ASO HUB | PURE BLACK",
  SubTitle = "بواسطة النينجا",
  SaveFolder = "ASO_Config"
})

-- إضافة زر واحد للتجربة
Window:AddTab({
  Name = "تجربة",
  Icon = "rbxassetid://4483345998"
})

Window:AddButton({
  Name = "زر تجربة",
  Description = "اضغط هنا لرؤية اللون الأسود الحقيقي",
  Callback = function()
    print("الواجهة شغالة يا وحش!")
  end
})

-- ملاحظة: هذي المكتبة ألوانها غامقة جداً وما فيها رمادي
