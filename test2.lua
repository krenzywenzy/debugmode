game:GetService("StarterGui"):SetCore("SendNotification",{
Title    = "Delete Click Enabled!",
Text     = "Hold Shift and Click to Delete Parts",
Duration = 9,
})
local Plr = game:GetService("Players").LocalPlayer
local Mouse = Plr:GetMouse()
 
Mouse.Button1Down:connect(function()
if not game:GetService("UserInputService"):IsKeyDown(Enum.KeyCode.LeftShift) then return end
if not Mouse.Target then return end
Mouse.Target:Destroy()
end)
