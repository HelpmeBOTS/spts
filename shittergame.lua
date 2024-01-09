_G.var = false
local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()
local workspace = game:GetService('Workspace')
local playerRoot = game.Players.LocalPlayer.Character.HumanoidRootPart
local player = game.Players.LocalPlayer
local Window = Rayfield:CreateWindow({
    Name = "Multiverse Defenders | Gift Sniper",
    LoadingTitle = "Multiverse Defenders | Gift Sniper",
    LoadingSubtitle = "by (REDACTED)",
 })
local tweenInfo =
    TweenInfo.new(
    0.25, -- Duration (adjust as needed)
    Enum.EasingStyle.Linear,
    Enum.EasingDirection.InOut
)
local giftVar = nil

--funcs
function teleportMain()
    for i, v in pairs(workspace:GetChildren()) do
        if v.Name == "Mythic Gift" then
            local tween = game:GetService("TweenService"):Create(playerRoot, tweenInfo, {CFrame = (v.RootPart.CFrame)})
            tween:Play()
            tween.Completed:Wait()
            wait(0.25)
            fireproximityprompt(v.RootPart.Attachment.Open)
        elseif v.Name == "Legendary Gift" then
            local tween2 = game:GetService("TweenService"):Create(playerRoot, tweenInfo, {CFrame = (v.RootPart.CFrame)})
            tween2:Play()
            tween2.Completed:Wait()
            wait(0.25)
            fireproximityprompt(v.RootPart.Attachment.Open)
        elseif v.Name == "Epic Gift" then
            local tween3 = game:GetService("TweenService"):Create(playerRoot, tweenInfo, {CFrame = (v.RootPart.CFrame)})
            tween3:Play()
            tween3.Completed:Wait()
            wait(0.25)
            fireproximityprompt(v.RootPart.Attachment.Open)
        elseif  v.Name == "Rare Gift"  then
            local tween4 = game:GetService("TweenService"):Create(playerRoot, tweenInfo, {CFrame = (v.RootPart.CFrame)})
            tween4:Play()
            tween4.Completed:Wait()
            wait(0.25)
            fireproximityprompt(v.RootPart.Attachment.Open)
        end
    end
end

--ui
local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

local Button = Tab:CreateButton({
    Name = "Get Gifts",
    Info = "press once all gift have spawned", -- Speaks for itself, Remove if none.
    Interact = 'Button',
    Callback = function()
        teleportMain()
    end,
})
