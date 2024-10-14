local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()
local HitboxSize = 1
local window = DrRayLibrary:Load("Zygarde ⭐PREMIUM⭐", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

tab.newButton("Join our discord server!", "Press this button to copy the discord invite link", function()
    setclipboard("https://discord.com/invite/6EbeAjjKtm")
end)

tab.newToggle("Hitbox Expander", "Enables/Disables Hitbox Expander", true, function(toggleState)
    if toggleState then
        getgenv().HitboxExpander = true
    else
        getgenv().HitboxExpander = false
for i,v in next, game:GetService('Players'):GetPlayers() do
               if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                pcall(function() 
            v.Character.HeadHB.Size = Vector3.new(1,1,1)
            v.Character.HeadHB.CanCollide = false
            v.Character.HumanoidRootPart.Size = Vector3.new(1,1,1)
            v.Character.HumanoidRootPart.CanCollide = false
            v.Character.LeftUpperLeg.Size = Vector3.new(1,1,1)
            v.Character.LeftUpperLeg.CanCollide = false
            v.Character.RightUpperLeg.Size = Vector3.new(1,1,1)
            v.Character.RightUpperLeg.CanCollide = false
                end)
               end
end
        end
end)

tab.newSlider("Hitbox Size Changer", "Changes your hitbox's size", 30, false, function(Value)
        HitboxSize = Value
end)

game:GetService('RunService').RenderStepped:connect(function()
        if getgenv().HitboxExpander == true then
           for i,v in next, game:GetService('Players'):GetPlayers() do
               if v.Name ~= game:GetService('Players').LocalPlayer.Name then
                pcall(function() 
            v.Character.HeadHB.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
            v.Character.HeadHB.CanCollide = false
            v.Character.HeadHB.Transparency = 75
            v.Character.HumanoidRootPart.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
            v.Character.HumanoidRootPart.CanCollide = false
            v.Character.HumanoidRootPart.Transparency = 75
            v.Character.LeftUpperLeg.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
            v.Character.LeftUpperLeg.CanCollide = false
            v.Character.LeftUpperLeg.Transparency = 75
            v.Character.RightUpperLeg.Size = Vector3.new(HitboxSize, HitboxSize, HitboxSize)
            v.Character.RightUpperLeg.CanCollide = false
            v.Character.RightUpperLeg.Transparency = 75
                end)
               end
         end
       end
end)

tab.newToggle("infinite Ammo", "Gives you infinite ammo", true, function(toggleState)
    if toggleState then
        getgenv().InfAmmo = true
        while wait() do
          if InfAmmo then
          game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount.Value = 999	game:GetService("Players").LocalPlayer.PlayerGui.GUI.Client.Variables.ammocount2.Value = 999
          end
        end
    else
        getgenv().InfAmmo = false
    end
end)

local tab = DrRayLibrary.newTab("Visual", "ImageIdHere")

tab.newToggle("Player ESP", "Enables/Disables Player ESP", true, function(toggleState)
    if toggleState then
        getgenv().ESP = true
    else
        getgenv().ESP = false
        for i, v in pairs(game:GetService("Workspace"):GetChildren()) do
          if v.Name == "NameESP" then
            v:Destroy()
          end
        end
    end
end)

while task.wait(1) do
  if ESP then
    for i, v in pairs(game:GetService("Players"):GetPlayers()) do
      nameLabel = Instance.new("BillboardGui")
      nameLabel.Name = "NameESP"
      nameLabel.AlwaysOnTop = true
      nameLabel.Size = UDim2.new(0, 100, 0, 50)
      nameLabel.StudsOffset = Vector3.new(0, 3, 0)
      nameLabel.Adornee = v.Character.Head
      nameLabel.Parent = game:GetService("Workspace")
      
      local textLabel = Instance.new("TextLabel")
      textLabel.Name = "TextLabel"
      textLabel.BackgroundTransparency = 1
      textLabel.Size = UDim2.new(1, 0, 1, 0)
      textLabel.Text = v.Name
      textLabel.TextTransparency = 0
      textLabel.Font = Enum.Font.Legacy
      textLabel.TextColor3 = v.TeamColor.Color
      textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
      textLabel.TextStrokeTransparency = 0
      textLabel.TextScaled = true
      textLabel.Parent = nameLabel
    end
  end
end

