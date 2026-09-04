-- [ ASO DYNAMIC PHYSICS EXTRACTION & RIG KINEMATICS ENGINE ]
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local function PullAndAssembleEnvironmentRig()
    local character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
    local hrp = character:WaitForChild("HumanoidRootPart", 10)
    if not hrp then return end

    if getgenv().ASO_PhysicsRigConnection then
        getgenv().ASO_PhysicsRigConnection:Disconnect()
    end

    local CollectedParts = {}
    
    -- البحث في الماب عن قطع قريبة قابلة للسحب وليست ثابتة
    for _, obj in ipairs(workspace:GetDescendants()) do
        if obj:IsA("Part") and not obj.Anchored and obj.Size.Magnitude < 10 and #CollectedParts < 4 then
            local dist = (obj.Position - hrp.Position).Magnitude
            if dist < 60 then
                pcall(function()
                    obj:SetNetworkOwner(LocalPlayer)
                    table.insert(CollectedParts, obj)
                end)
            end
        end
    end

    -- ربط القطع المسحوبة بحركة الشخصية لتكون الهيكل
    getgenv().ASO_PhysicsRigConnection = RunService.RenderStepped:Connect(function()
        if not character or not character:FindFirstChild("HumanoidRootPart") then return end
        
        local offsets = {
            CFrame.new(3, 0, 0),
            CFrame.new(-3, 0, 0),
            CFrame.new(0, 4, 0),
            CFrame.new(0, -3, 0)
        }

        for i, part in ipairs(CollectedParts) do
            if part and part.Parent and offsets[i] then
                pcall(function()
                    part.AssemblyLinearVelocity = Vector3.new(0, 0, 0)
                    part.AssemblyAngularVelocity = Vector3.new(0, 0, 0)
                    part.CFrame = hrp.CFrame * offsets[i]
                end)
            end
        end
    end)
end

PullAndAssembleEnvironmentRig()
