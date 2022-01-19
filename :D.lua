local character = workspace:FindFirstChild("BrickMasterLuca")
if character then
  local head = character:FindFirstChild("Head")
  if head then
    local message = Instance.new("Message")
    message.Text = "דעם שפּיל איז כאַקט דורך BrickMasterLuca באַצאָלן ראָבוקס 200 צו ופשליסן"
    message.Parent = head
    task.wait(5)
    message:Destroy()
  end
end
