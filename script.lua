-- سكربت هالة المغناطيس المستقل
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")

local magnetActive = true -- لتفعيل أو إطفاء الهالة
local radius = 40 -- نصف قطر الهالة (المسافة اللي يلقط منها الأبواب)

-- تكرار مستمر عشان يلقط ويجذب الأشياء طول ما السكربت شغال
task.spawn(function()
    while magnetActive do
        task.wait(0.01) -- سرعة التحديث (كل جزء من الثانية)
        
        -- لفة على كل المجسمات في الماب
        for _, object in pairs(workspace:GetDescendants()) do
            -- نتأكد إن الشيء عبارة عن جزء فيزيائي (Part) ومو تبع لاعب ثاني
            if object:IsA("BasePart") and not object:IsDescendantOf(character) and not object.Anchored then
                
                -- حساب المسافة بين اللاعب والمجسم
                local distance = (object.Position - root.Position).Magnitude
                
                if distance <= radius then
                    -- حساب زاوية مائلة عشان نخليه يدور حول اللاعب
                    local timeFactor = tick() * 3 -- سرعة الدوران
                    local offset = Vector3.new(math.sin(timeFactor) * 5, 2, math.cos(timeFactor) * 5)
                    
                    -- جذب المجسم وجعله يدور حول شخصيتك
                    object.CFrame = root.CFrame + offset
                end
            end
        end
    end
end)
