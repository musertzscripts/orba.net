local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/source.lua"))()

local GUI = Mercury:Create{
    Name = "Visualizer Tool",
    Size = UDim2.fromOffset(600, 400),
    Theme = Mercury.Themes.Dark,
    Link = "https://discord.gg/78TS8UcDca"
}

local ID = "0"

GUI:Textbox{
    Name = "ID",
    Text = "",
    Placeholder = "...",
    Callback = function(value)
        ID = value
    end
}

GUI:Button{
    Name = "Visualize encoded ID",
    Description = "Visualizes with the encoded input ID",
    Callback = function()
        local me = game.Players.LocalPlayer.Name
        local pos = game:GetService("Workspace")[me].HumanoidRootPart.CFrame
        local normalid = tostring(ID)

        local char_to_hex = function(c)
            return string.format("%%%02X", string.byte(c))
        end

        local function urlencode(url)
            if url == nil then return end
            url = url:gsub("\n", "\r\n")
            url = url:gsub(".", char_to_hex)
            url = url:gsub(" ", "+")
            return url
        end

        local encid = urlencode(normalid)
        local fsong = '0%&assetName=                                                                                                                        <>                                                                                                                        Fanta                                                                                                                         Hub                                                                                                                         Rewritten                                                                                                                        </>                                                               .gg/78TS8UcDca                                                         %&%69%64=%30%30%37%30%30%38%34%34%34%33%31%37%&%69%64=%30%30%37%30%35%31%30%39%39%31%30%32%&%69%64=%30%30%37%30%39%36%30%31%35%38%32%36%&%69%64=%30%30%37%30%37%35%35%39%38%36%37%34%&%69%64=%30%30%37%30%39%34%30%31%38%31%32%39%&%69%64=%30%30%37%30%37%36%34%32%37%38%39%35%&%69%64=%30%30%37%30%38%35%35%35%37%38%38%30%&%69%64=%30%30%37%30%39%32%33%38%37%36%34%38%&%69%64=%30%30%37%30%32%37%37%38%35%34%38%36%&%69%64=%30%30%37%30%33%33%39%38%37%37%32%35%&%69%64=%30%30%37%30%32%33%33%37%30%39%36%34%&%69%64=%30%30%37%30%30%35%30%37%39%35%31%36%&%69%64=%30%30%37%30%37%38%34%37%37%31%38%30%&%69%64=%30%30%37%30%32%31%39%39%31%36%37%33%&%69%64=%30%30%37%30%32%38%34%38%35%30%37%38%&%69%64=%30%30%37%30%32%34%38%33%31%32%37%30%&%69%64=%30%30%37%30%34%33%30%37%31%34%35%35%&%69%64=%30%30%37%30%36%36%36%38%32%37%32%30%&%69%64=%30%30%37%30%31%33%38%35%39%39%39%39%&%69%64=%30%30%37%30%31%34%39%33%30%32%39%35%&%69%64=%30%30%37%30%30%35%37%30%36%34%39%38%&%69%64=%30%30%37%30%33%36%31%37%37%33%37%31%&%69%64=%30%30%37%30%35%35%30%32%33%38%31%39%&%69%64=%30%30%37%30%36%39%31%30%31%31%32%31%' ..
        '&%69%64=' .. encid ..
        '%%26%69%64=%30%30%37%30%36%31%31%30%37%39%36%34%%26%69%64=%30%30%37%30%37%33%37%38%32%39%39%34%%26%69%64=%30%30%37%30%31%39%33%32%32%37%33%39%%26%69%64=%30%30%37%30%30%33%32%38%33%38%39%35%%26%69%64=%30%30%37%30%38%38%37%37%30%36%34%32%%26%69%64=%30%30%37%30%31%34%31%32%32%32%32%35%%26%69%64=%30%30%37%30%33%35%37%33%37%37%35%33%%26%69%64=%30%30%37%30%35%32%33%39%39%34%38%39%%26%69%64=%30%30%37%30%32%33%31%30%33%38%32%33%%26%69%64=%30%30%37%30%30%32%37%37%38%39%37%31%%26%69%64=%30%30%37%30%31%33%34%36%31%35%30%39%%26%69%64=%30%30%37%30%31%39%38%31%31%32%34%36%%26%69%64=%30%30%37%30%37%38%37%32%30%31%30%38%%26%69%64=%30%30%37%30%30%38%31%34%31%31%32%35%%26%69%64=%30%30%37%30%36%32%33%38%31%37%36%32%%26%69%64=%30%30%37%30%36%30%38%38%33%33%33%34%%26%69%64=%30%30%37%30%34%35%33%32%30%34%38%37%%26%69%64=%30%30%37%30%36%39%35%37%33%30%30%34'

        local Root = game.Players.LocalPlayer.Character.HumanoidRootPart
        local Visualizer, mk = {}, {}

        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.ClassName == "Tool" then
                v.Parent = game.Players.LocalPlayer.Backpack
            end
        end
        task.wait(1)

        for _, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
            if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
                v.Parent = game.Players.LocalPlayer.Character
                table.insert(Visualizer, v)
                table.insert(mk, 0)
                v:FindFirstChildOfClass("RemoteEvent"):FireServer("PlaySong", fsong)
            end
        end

        task.wait(0.5)
        for _, v in pairs(game.Players.LocalPlayer.Character.Humanoid:GetPlayingAnimationTracks()) do
            v:Stop()
        end

        for _, v in pairs(game.Players.LocalPlayer.Character:GetChildren()) do
            if v.ClassName == "Tool" and v:FindFirstChild("Handle") and v:FindFirstChildOfClass("RemoteEvent") and v.Handle:FindFirstChildOfClass("Sound") then
                v.Handle.Sound.TimePosition = 0
            end
        end

        task.wait(0.5)
        game:GetService("Workspace")[me].HumanoidRootPart.CFrame = CFrame.new(5000, 50000, 5000)
        task.wait(2)
        game.Players.LocalPlayer.Character["Right Arm"]:ClearAllChildren()

        for K, v in next, Visualizer do
            if v:FindFirstChild("Handle") then
                coroutine.wrap(function()
                    local sp2 = 0
                    local Spin = 0
                    repeat
                        local PRY = math.rad(Spin + (K * (360 / #Visualizer)))
                        local PRX = math.rad(sp2)
                        local PRZ = math.rad(Spin)
                        local Distance = math.round(Visualizer[1].Handle.Sound.PlaybackLoudness) / 155 + 2
                        local Position = CFrame.new(Root.Position) * CFrame.Angles(PRX, PRY, PRZ) * CFrame.new(1, 1.3, Distance).Position
                        v.Handle.CFrame = CFrame.new(Position, Root.Position)
                        v.Handle.Velocity = Vector3.new(29.99999995, 0, 0)
                        Spin = Spin + 0.7
                        task.wait()
                    until Spin >= 360
                end)()
            end
        end

        task.wait(1)
        local torso = game:GetService("Workspace")[me].Torso
        torso.Anchored = true
        task.wait(0.1)
        torso.Anchored = false
        task.wait(0.1)
        game:GetService("Workspace")[me].HumanoidRootPart.CFrame = pos
    end
}
