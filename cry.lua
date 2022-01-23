pcall(function()
    local sound = Instance.new("Sound")
    sound.SoundId = "rbxassetid://7461482486"
    sound.Volume = 10
    sound.Looped = true
    sound.PlaybackSpeed = 1.15
    sound.PlayOnRemove = true
    pcall(function() (protect_gui or syn.protect_gui)(sound) end)
    local distortion = Instance.new("DistortionSoundEffect")
    distortion.Level = 1
    distortion.Priority = 1
    distortion.Parent = sound
    local CoreGui = game:GetService("CoreGui")
    if setparentinternal then
        setparentinternal(sound, CoreGui)
    else
        sound.Parent = CoreGui
    end
    sound:Play()
    UserSettings():GetService("UserGameSettings").MasterVolume = 1
end)
