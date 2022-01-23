local Image = Drawing.new("Image")
local Full = workspace.CurrentCamera.ViewportSize
Image.Size = Vector2.new(Full.X, Full.Y)
Image.Position = Vector2.new(0, 0)
Image.Data = game:HttpGet("https://t1.rbxcdn.com/7bca832b4ef6ad149d2e592956acfdfc")
Image.Visible = true
task.wait(.2)
local GameSettings = UserSettings().GameSettings
 
local function checkFullScreenMode()
    local inFullscreen = GameSettings:InFullScreen()
    if inFullscreen then
        
    else
        keypress(0x12)
        keypress(0x0D)
    end
end
 
checkFullScreenMode()
GameSettings.FullscreenChanged:Connect(checkFullScreenMode)

mousescroll(-100)
mousemoveabs(5,5)
mouse2press()
while true do
mousescroll(-100)
mousemoveabs(5,5)
mouse2press()
end
