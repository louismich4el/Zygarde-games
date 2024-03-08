local function Equipknife()
  for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
    if v:FindFirstChild("Knife") then
      game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
    end
  end
end

local function Killall()
  for i, v in pairs(game:GetService("Players"):GetPlayers()) do
    Equipknife()
    wait(0.1)
    game:GetService("VirtualInputManager"):SendMouseButtonEvent(0,0,0, true, game, false, 0)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.Character.HumanoidRootPart.CFrame
    task.wait(0.10)
  end
end

local function Innocent()
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
  if v ~= game.Players.LocalPlayer and v.Character.Head:FindFirstChild("InnocentESP") == nil then
    local innocentbill = Instance.new("BillboardGui")
    innocentbill.Name = "InnocentESP"
    innocentbill.AlwaysOnTop = true
    innocentbill.Size = UDim2.new(0, 100, 0, 50)
    innocentbill.StudsOffset = Vector3.new(0, 3, 0)
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "TextLabel"
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = v.Name
    textLabel.TextTransparency = 0
    textLabel.Font = Enum.Font.Legacy
    textLabel.TextColor3 = Color3.new(0, 255, 0)
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextStrokeTransparency = 0
    textLabel.TextScaled = true
    textLabel.Parent = innocentbill
    
    if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("InnocentHighlight") == nil then
      local InnoHigh = Instance.new("Highlight")
      InnoHigh.Name = "InnocentHighlight"
      InnoHigh.FillColor = Color3.new(0, 255, 0)
      InnoHigh.DepthMode = "AlwaysOnTop"
      InnoHigh.FillTransparency = 0.5
      InnoHigh.OutlineColor = Color3.new(1, 1, 1)
      InnoHigh.OutlineTransparency = 0
      
      InnoHigh:Clone().Parent = v.Character
    innocentbill:Clone().Parent = v.Character.Head
    end
    end
  end
end

local function Sherrif()
      for i, v in pairs(game:GetService("Players"):GetPlayers()) do
  if v ~= game.Players.LocalPlayer and v.Character.Head:FindFirstChild("SherrifESP") == nil then
    if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") then
    local sherrifbill = Instance.new("BillboardGui")
    sherrifbill.Name = "SherrifESP"
    sherrifbill.AlwaysOnTop = true
    sherrifbill.Size = UDim2.new(0, 100, 0, 50)
    sherrifbill.StudsOffset = Vector3.new(0, 3, 0)
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "TextLabel"
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = v.Name
    textLabel.TextTransparency = 0
    textLabel.Font = Enum.Font.Legacy
    textLabel.TextColor3 = Color3.new(0, 0, 255)
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextStrokeTransparency = 0
    textLabel.TextScaled = true
    textLabel.Parent = sherrifbill

if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("SherrifHighlight") == nil then
    if v.Backpack:FindFirstChild("Gun") or v.Character:FindFirstChild("Gun") then
      local SherrifHigh = Instance.new("Highlight")
      SherrifHigh.Name = "SherrifHighlight"
      SherrifHigh.FillColor = Color3.new(0, 0, 255)
      SherrifHigh.DepthMode = "AlwaysOnTop"
      SherrifHigh.FillTransparency = 0.5
      SherrifHigh.OutlineColor = Color3.new(1, 1, 1)
      SherrifHigh.OutlineTransparency = 0
      
      SherrifHigh:Clone().Parent = v.Character
    sherrifbill:Clone().Parent = v.Character.Head
    end
end
    end
end
end
end

local function Murderer()
for i, v in pairs(game:GetService("Players"):GetPlayers()) do
  if v ~= game.Players.LocalPlayer and v.Character.Head:FindFirstChild("MurdererESP") == nil then
  if v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
    local murdererbill= Instance.new("BillboardGui")
    murdererbill.Name = "MurdererESP"
    murdererbill.AlwaysOnTop = true
    murdererbill.Size = UDim2.new(0, 100, 0, 50)
    murdererbill.StudsOffset = Vector3.new(0, 3, 0)
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "TextLabel"
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = v.Name
    textLabel.TextTransparency = 0
    textLabel.Font = Enum.Font.Legacy
    textLabel.TextColor3 = Color3.new(255, 0, 0)
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextStrokeTransparency = 0
    textLabel.TextScaled = true
    textLabel.Parent = murdererbill

if v ~= game.Players.LocalPlayer and v.Character:FindFirstChild("MurdererHighlight") == nil then
    if v.Backpack:FindFirstChild("Knife") or v.Character:FindFirstChild("Knife") then
      local MurdererHigh = Instance.new("Highlight")
      MurdererHigh.Name = "MurdererHighlight"
      MurdererHigh.FillColor = Color3.new(255, 0, 0)
      MurdererHigh.DepthMode = "AlwaysOnTop"
      MurdererHigh.FillTransparency = 0.5
      MurdererHigh.OutlineColor = Color3.new(1, 1, 1)
      MurdererHigh.OutlineTransparency = 0
      
      MurdererHigh:Clone().Parent = v.Character
    murdererbill:Clone().Parent = v.Character.Head
    end
end
  end
  end
end
end

local function Gun()
for i, v in pairs(game:GetService("Workspace").GunDrop:GetChildren()) do
  if v:FindFirstChild("GunESP") == nil then
  nameLabel = Instance.new("BillboardGui")
  nameLabel.Name = "GunESP"
  nameLabel.AlwaysOnTop = true
  nameLabel.Size = UDim2.new(0, 20, 0, 50)
  nameLabel.StudsOffset = Vector3.new(0, 3, 0)
  
  local textLabel = Instance.new("TextLabel")
  textLabel.Name = "TextLabel"
  textLabel.BackgroundTransparency = 1
  textLabel.Size = UDim2.new(1, 0, 1, 0)
  textLabel.Text = "Gun"
  textLabel.TextTransparency = 0
  textLabel.Font = Enum.Font.Legacy
  textLabel.TextColor3 = Color3.new(1, 1, 1)
  textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
  textLabel.TextStrokeTransparency = 0
  textLabel.TextScaled = true
  textLabel.Parent = nameLabel

  nameLabel:Clone().Parent = v
  end
end
end

local function Coin()
for i, v in pairs(game:GetService("Workspace").Normal.CoinContainer:GetChildren()) do
  if v:FindFirstChild("CoinESP") == nil then
    nameLabel = Instance.new("BillboardGui")
    nameLabel.Name = "NameLabel"
    nameLabel.AlwaysOnTop = true
    nameLabel.Size = UDim2.new(0, 20, 0, 50)
    nameLabel.StudsOffset = Vector3.new(0, 3, 0)
    
    local textLabel = Instance.new("TextLabel")
    textLabel.Name = "TextLabel"
    textLabel.BackgroundTransparency = 1
    textLabel.Size = UDim2.new(1, 0, 1, 0)
    textLabel.Text = "Coin"
    textLabel.TextTransparency = 0
    textLabel.Font = Enum.Font.Legacy
    textLabel.TextColor3 = Color3.fromRGB(255, 251, 0)
    textLabel.TextStrokeColor3 = Color3.new(0, 0, 0)
    textLabel.TextStrokeTransparency = 0
    textLabel.TextScaled = true
    textLabel.Parent = nameLabel
    
    nameLabel:Clone().Parent = v
  end
end
end

local DrRayLibrary = loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/DrRay-UI-Library/main/DrRay.lua"))()

local window = DrRayLibrary:Load("Zygarde", "Default")

local tab = DrRayLibrary.newTab("Main", "ImageIdHere")

tab.newButton("Join our discord server!", "Press this button to copy the discord invite link", function()
    setclipboard("https://discord.com/invite/6EbeAjjKtm")
end)

tab.newButton("Anti afk", "Never get AFK-kicked again! With Anti afk you can easily grind, farm, chill and whatever you want!", function()
game:GetService("Players").LocalPlayer.Idled:connect(function()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
end)

tab.newButton("Kill All", "Kills everyone within a second (Has to be murderer)", function()
    Killall()
end)

tab.newToggle("Auto Grab Gun", "Auto grabs gun whenever the gun is dropped", true, function(toggleState)
    if toggleState then
      getgenv().Autograbgun = true
    else
        getgenv().Autograbgun = false
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
  if Autograbgun then
    local CurrentPOS = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").GunDrop.CFrame
    wait(0.5)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CurrentPOS
  end
end)

tab.newSlider("Walkspeed", "Walkspeed changer", 1000, false, function(num)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = tonumber(num)
end)

tab.newSlider("Jumppower", "Jumppower changer", 1000, false, function(num)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = tonumber(num)
end)

local tab = DrRayLibrary.newTab("Visuals", "ImageIdHere")

tab.newToggle("Murderer ESP", "Enables/disables murderer esp", true, function(toggleState)
    if toggleState then
        getgenv().MurdererESPName = true
    else
        getgenv().MurdererESPName = false
    end
end)
  
tab.newToggle("Sherrif ESP", "Enables/disables sherrif esp", true, function(toggleState)
    if toggleState then
        getgenv().SherrifESPName = true
    else
        getgenv().SherrifESPName = false
    end
end)

tab.newToggle("Innocent ESP", "Enables/disables innocent esp", true, function(toggleState)
    if toggleState then
        getgenv().InnocentESPName = true
    else
        getgenv().InnocentESPName= false
    end
end)
  
game:GetService("RunService").RenderStepped:Connect(function()
  if MurdererESPName then
    Murderer()
    else
      for i, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Character.Head:FindFirstChild("MurdererESP") ~= nil or v.Character:FindFirstChild("MurdererHighlight") ~= nil then
          v.Character.Head:FindFirstChild("MurdererESP"):Destroy()
          v.Character:FindFirstChild("MurdererHighlight"):Destroy()
          task.wait()
        end
      end
  end
end)
  
game:GetService("RunService").RenderStepped:Connect(function()
  if SherrifESPName then
    Sherrif()
    else
      for i, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Character.Head:FindFirstChild("SherrifESP") ~= nil or v.Character:FindFirstChild("SherrifHighlight") ~= nil then
          v.Character.Head:FindFirstChild("SherrifESP"):Destroy()
          v.Character:FindFirstChild("SherrifHighlight"):Destroy()
          task.wait()
        end
      end
  end
end)


game:GetService("RunService").RenderStepped:Connect(function()
  if InnocentESPName then
    Innocent()
    else
      for i, v in pairs(game:GetService("Players"):GetPlayers()) do
        if v.Character.Head:FindFirstChild("InnocentESP") ~= nil or v.Character:FindFirstChild("InnocentHighlight") then
          v.Character.Head:FindFirstChild("InnocentESP"):Destroy()
          v.Character:FindFirstChild("InnocentHighlight"):Destroy()
          task.wait()
        end
      end
  end
end)

tab.newToggle("Gun ESP", "Enables/disables gun esp", true, function(toggleState)
    if toggleState then
        getgenv().GunESPname = true
    else
        getgenv().GunESPname = false
    end
end)

tab.newToggle("Coin ESP", "Enables/disables coin esp", true, function(toggleState)
    if toggleState then
        getgenv().CoinESPname = true
    else
        getgenv().CoinESPname = false
    end
end)

game:GetService("RunService").RenderStepped:Connect(function()
  if GunESPname then
    Gun()
    else
      for i, v in pairs(game:GetService("Workspace").GunDrop:GetChildren()) do
        if v:FindFirstChild("GunESP") ~= nil then
          v:FindFirstChild("GunESP"):Destroy()
        end
      end
  end
end)

game:GetService("RunService").RenderStepped:Connect(function() wait(2)
  if CoinESPname then
    Coin()
    for i, v in pairs(game:GetService("Workspace").Normal.CoinContainer:GetChildren()) do
      if v:FindFirstChild("CoinESP") then
        v:FindFirstChild("CoinESP"):Destroy()
        task.wait()
      end
    end
  end
end)

