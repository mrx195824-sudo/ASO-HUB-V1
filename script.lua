-- سوي Execute لهذا الكود داخل الهاك وأنت في ماب البيوت
local player = game.Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()

-- [ 1. نظام الحقن في واجهة الماب ]
-- هذا الكود يحاول يضيف زر "MOV9" داخل القائمة الأصلية للماب
pcall(function()
    local SideMenu = player.PlayerGui:WaitForChild("MainGui"):WaitForChild("SideMenu")
    local CopyButton = SideMenu:WaitForChild("Home"):Clone()
    CopyButton.Parent = SideMenu
    CopyButton.Name = "MOV9_Inject"
    CopyButton.Text = "COPY"
    CopyButton.BackgroundColor3 = Color3.fromRGB(0, 170, 255)
end)

-- [ 2. وظيفة نسخ السكن "الحقن المباشر" ]
-- هذي الوظيفة تنسخ أي لاعب تضغط عليه في الماب
local function InjectAndCopy(targetPlayer)
    if targetPlayer and targetPlayer:IsA("Player") then
        -- استخدام نظام الـ HumanoidDescription لحقن الملابس
        local targetDesc = game.Players:GetHumanoidDescriptionFromUserId(targetPlayer.UserId)
        player.Character.Humanoid:ApplyDescription(targetDesc)
        
        -- إشعار بالحقن الناجح
        print("تم حقن سكن " .. targetPlayer.Name .. " في شخصيتك!")
    end
end

-- [ 3. طريقة التشغيل ]
-- الحين تقدر تكتب اسم اللاعب اللي تبي تحقنه في الـ Console
-- أو نستخدم زر النسخ العشوائي اللي سويناه قبل
InjectAndCopy(game.Players:GetPlayers()[math.random(1, #game.Players:GetPlayers())])
