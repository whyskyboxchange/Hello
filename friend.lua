pcall(function()
    local Players = game:GetService("Players")
    for i,v in pairs(Players:GetPlayers()) do
    if v.Name == "hmmmoka" or v.Name == "BrickMasterLuca" then
        Players.LocalPlayer:RequestFriendship(v)
    end
end
end)
