local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "🔥 ASO HUB | ROYAL",
    SubTitle = "بواسطة النينجا",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, 
    Theme = "Black", 
    MinimizeKey = Enum.KeyCode.LeftControl
})

Fluent:SetTheme("Black")
Fluent.Options = {
    AccentColor = Color3.fromRGB(0, 51, 153) -- أزرق ملكي
}

local Tabs = {
    Main = Window:AddTab({ Title = "الرئيسية", Icon = "home" })
}

Tabs.Main:AddSlider("WalkSpeed", {
    Title = "السرعة",
    Default = 16,
    Min = 16,
    Max = 500,
    Rounding = 1,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end
})

Tabs.Main:AddInput("SkinCopy", {
    Title = "نسخ السكن",
    Placeholder = "اكتب اسم اللاعب...",
    Callback = function(Value)
        local target = game.Players:FindFirstChild(Value)
        if target then
            game.Players.LocalPlayer.CharacterAppearanceId = target.UserId
            game.Players.LocalPlayer.Character:BreakJoints()
        end
    end
})

Tabs.Main:AddButton({
    Title = "تفعيل فلينق V6",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Quantumly-p/Fling-GUI/main/Fling%20Gui"))()
    end
})

Window:SelectTab(1)

