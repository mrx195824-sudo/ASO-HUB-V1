-- [ ASO ADVANCED KINEMATIC RIG REPLICATION ENGINE - SECURE CORE ]
-- AUTHOR: SYSTEM_ARCHITECT
-- TARGET: ROBLOX RUNTIME ENVIRONMENT (LUA/LUAU)

local CoreGui = game:GetService("CoreGui")
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local LocalPlayer = Players.LocalPlayer
local Character = LocalPlayer.Character or LocalPlayer.CharacterAdded:Wait()
local HumanoidRootPart = Character:WaitForChild("HumanoidRootPart")

getgenv().ASO_AdvancedRigSystem = getgenv().ASO_AdvancedRigSystem or {}
if getgenv().ASO_AdvancedRigSystem.Connection then
    getgenv().ASO_AdvancedRigSystem.Connection:Disconnect()
    getgenv().ASO_AdvancedRigSystem.Connection = nil
end

local function InitializeComplexRigPipeline()
    local RigModel = Instance.new("Model")
    RigModel.Name = "ASO_Synthetic_ExoRig"
    RigModel.Parent = workspace

    local PrimaryNode = Instance.new("Part")
    PrimaryNode.Name = "CoreRoot"
    PrimaryNode.Size = Vector3.new(5, 8, 3)
    PrimaryNode.Material = Enum.Material.Neon
    PrimaryNode.Color = Color3.fromRGB(15, 15, 25)
    PrimaryNode.CFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -6)
    PrimaryNode.CanCollide = false
    PrimaryNode.Parent = RigModel

    local SelectionBox = Instance.new("SelectionBox")
    SelectionBox.Adornee = PrimaryNode
    SelectionBox.Color3 = Color3.fromRGB(120, 0, 255)
    SelectionBox.Parent = PrimaryNode

    local RenderSteppedConnection = RunService.RenderStepped:Connect(function(DeltaTime)
        if not Character or not Character:FindFirstChild("HumanoidRootPart") then
            RigModel:Destroy()
            return
        end

        local TargetCFrame = HumanoidRootPart.CFrame * CFrame.new(0, 0, -6)
        PrimaryNode.CFrame = PrimaryNode.CFrame:Lerp(TargetCFrame, DeltaTime * 25)
    end)

    getgenv().ASO_AdvancedRigSystem.Connection = RenderSteppedConnection
    getgenv().ASO_AdvancedRigSystem.Instance = RigModel
end

InitializeComplexRigPipeline()
