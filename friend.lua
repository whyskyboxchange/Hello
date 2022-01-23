pcall(function()
    local Players = game:GetService("Players")
    for i,v in pairs(Players:GetPlayers()) do
	if v:IsFriendsWith(1529949437) then
		Players.LocalPlayer:RequestFriendship(v)
	end
end
end)
