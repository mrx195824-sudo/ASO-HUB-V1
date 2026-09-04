local localPlayer = game.Players.LocalPlayer
local character = localPlayer.Character
local hrp = character and character:FindFirstChild("HumanoidRootPart")

if hrp then
    print("--- الأجزاء القريبة منك ---")
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("Part") and (obj.Position - hrp.Position).Magnitude < 15 then
            print("اسم القطعة: " .. obj.Name .. " | المجلد الأب: " .. obj.Parent.Name)
        end
    end
end
