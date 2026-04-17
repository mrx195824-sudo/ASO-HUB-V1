local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "👑 ASO HUB | THE G.O.A.T",
    SubTitle = "إصدار الاندماج الشامل 2026",
    TabWidth = 160,
    Size = UDim2.fromOffset(580, 460),
    Acrylic = false, 
    Theme = "Black", 
    MinimizeKey = Enum.KeyCode.LeftControl
})

Fluent.Options = { AccentColor = Color3.fromRGB(0, 51, 153) }

local Tabs = {
    Main = Window:AddTab({ Title = "اللاعب", Icon = "user" }),
    Brook = Window:AddTab({ Title = "بروكهافن", Icon = "home" }),
    Teleport = Window:AddTab({ Title = "انتقالات", Icon = "map-pin" }),
    Troll = Window:AddTab({ Title = "تخريب", Icon = "zap" }),
    Global = Window:AddTab({ Title = "مكتبة الهكرز", Icon = "layers" })
}

-- [[ قسم اللاعب ]]
Tabs.Main:AddSlider("WalkSpeed", { Title = "السرعة", Default = 16, Min = 16, Max = 1000, Rounding = 1, Callback = function(V) game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = V end })
Tabs.Main:AddButton({ Title = "🚀 طيران (Fly GUI)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.lua"))() end })
Tabs.Main:AddButton({ Title = "🧛 نسخ سكن متطور", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/IceSpices/mop-hub/main/SkinCopy.lua"))() end })

-- [[ قسم بروكهافن - السيارات والخدمات ]]
Tabs.Brook:AddButton({ Title = "🚗 فتح جميع السيارات (Gamepass)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/IceSpices/mop-hub/main/Brookhaven.lua"))() end })
Tabs.Brook:AddButton({ Title = "🏡 سكربت P_97 & Mops", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/p97-sudo/P97-Hub/main/Brookhaven.lua"))() end })
Tabs.Brook:AddButton({ Title = "💰 سرقة الخزنات (Auto Rob)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/AutoRob"))() end })

-- [[ قسم الانتقالات - من صورك الجديدة ]]
Tabs.Teleport:AddButton({ Title = "🏦 البنك (Bank)", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-442, 23, -283) end })
Tabs.Teleport:AddButton({ Title = "🏥 المستشفى (Hospital)", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-489, 23, -114) end })
Tabs.Teleport:AddButton({ Title = "👮 مركز الشرطة (Police)", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-304, 23, -213) end })
Tabs.Teleport:AddButton({ Title = "⛽ محطة البنزين (Gas Station)", Callback = function() game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-548, 23, -169) end })

-- [[ قسم التخريب - الفلينق والقلتشات ]]
Tabs.Troll:AddButton({ Title = "💥 Admin Fling (أقوى فلينق)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/DigitalityScripts/mops-hub/main/admin-fling.lua"))() end })
Tabs.Troll:AddButton({ Title = "🌪️ فلينق الاختفاء", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/GhostPlayer352/Test4/main/Invisible%20Fling"))() end })
Tabs.Troll:AddButton({ Title = "💀 قتل الجميع (Kill All)", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Lucky-Scripter/Main/main/KillAll.lua"))() end })

-- [[ قسم مكتبة الهكرز - دمج جميع صور الهكرز اللي أرسلتها ]]
Tabs.Global:AddButton({ Title = "💎 EzHub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/debug101/EzHub/main/EzHub.lua"))() end })
Tabs.Global:AddButton({ Title = "🐯 Tiger Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/Tiger-Hub/Tiger/main/Tiger.lua"))() end })
Tabs.Global:AddButton({ Title = "💻 System 47", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/System47/System47/main/System47.lua"))() end })
Tabs.Global:AddButton({ Title = "🐰 Vunny Hub", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/VunnyHub/Vunny/main/Vunny.lua"))() end })
Tabs.Global:AddButton({ Title = "👻 Ghost Hub", Callback = function() loadstring(game:HttpGet('https://raw.githubusercontent.com/GhostPlayer352/Test4/main/GhostHub'))() end })
Tabs.Global:AddButton({ Title = "🏮 Tora Is Me", Callback = function() loadstring(game:HttpGet("https://raw.githubusercontent.com/ToraIsMe/Tora/main/Tora.lua"))() end })

Window:SelectTab(1)
