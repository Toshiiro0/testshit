local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Toshiiro0/new-ui/main/main"))()


local Window = Library:Create("shitro.")

local Tab1 = Window:Tab("Player",false)

Tab1:Label("Player Scripts")

game.StarterGui:SetCore("SendNotification", {
    Title = "shitro";
    Text = "You're Whitelisted";
    Icon = "RBXID OR BLANK";
    Duration = "DURATION IN SECONDS";
    callbakc = bindableFunction;
    Button1 = "Okay";
})

Tab1:Button("Speed Glitch (Q)",function(bool)
    loadstring(game:HttpGet("https://pastebin.com/raw/QW5Whap9"))()
end)

Tab1:Button("Realistic Speed Glitch (X)",function(bool)
    local Player = game:GetService("Players").LocalPlayer
    local Mouse = Player:GetMouse()
    local SpeedGlitch = false
    local Wallet = Player.Backpack:FindFirstChild("Wallet")

    local UniversalAnimation = Instance.new("Animation")

    function stopTracks()
        for _, v in next, game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):GetPlayingAnimationTracks() do
            if (v.Animation.AnimationId:match("rbxassetid")) then
                v:Stop()
            end
        end
    end

    function loadAnimation(id)
        if UniversalAnimation.AnimationId == id then
            stopTracks()
            UniversalAnimation.AnimationId = "1"
        else
            UniversalAnimation.AnimationId = id
            local animationTrack = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid"):LoadAnimation(UniversalAnimation)
            animationTrack:Play()
        end
    end

    Mouse.KeyDown:Connect(function(Key)
        if Key == "x" then
            SpeedGlitch = not SpeedGlitch
            if SpeedGlitch == true then
                stopTracks()
                loadAnimation("rbxassetid://3189777795")
                wait(1.5)
                Wallet.Parent = Player.Character
                wait(0.15)
                Player.Character:FindFirstChild("Wallet").Parent = Player.Backpack
                wait(0.05)
                repeat game:GetService("RunService").Heartbeat:wait()
                    keypress(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keypress(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x49)
                    game:GetService("RunService").Heartbeat:wait()
                    keyrelease(0x4F)
                    game:GetService("RunService").Heartbeat:wait()
                until SpeedGlitch == false
            end
        end
    end)
end)

Tab1:Slider("Fov Camera",80,200,function(text)
    workspace.CurrentCamera.FieldOfView = (text)
end)

local Tab2 = Window:Tab("Teleports",false)

Tab2:Label("Teleports")

Tab2:Button("Double Barrel",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1039.59985, 18.8513641, -256.449951, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Tab2:Button("Revolver",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-638.75, 18.8500004, -118.175011, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Tab2:Button("Shotgun",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-578.623657, 5.47212696, -725.131531, 0, 0, 1, 0, 1, -0, -1, 0, 0)
end)

Tab2:Button("Tactical Shotgun",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(470.877533, 45.1272316, -620.630676, 0.999999821, 0.000604254019, -2.60802135e-08, -0.000604254019, 0.999999821, -8.63220048e-05, -2.60802135e-08, 8.63220048e-05, 1)
end)

Tab2:Button("Smg",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-577.123413, 5.47666788, -718.031433, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)

Tab2:Button("RPG",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-794.814697, -42.5468521, -932.97998, 5.96046448e-08, 2.91038305e-11, 1, -0.000610388815, 0.999999821, 2.91038305e-11, -0.999999762, -0.000610388815, 5.96046448e-08)
end)

Tab2:Button("Armor",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-607.978455, 7.44964886, -788.494263, -1.1920929e-07, 0, 1.00000012, 0, 1, 0, -1.00000012, 0, -1.1920929e-07)
end)

Tab2:Button("PopCorn",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-995, 21.6998043, -153.100037, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end)

Tab2:Button("Casino 1v1",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-962.72345, 21.2549973, -186.814987, -0.0274876002, 2.91178949e-05, 0.999621451, -5.5798846e-06, 1, -2.92823333e-05, -0.999621451, -6.38268148e-06, -0.0274876002)
end)

Tab2:Button("Bank",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-402.123718, 21.75, -283.988617, 0.0159681588, -0.000121377925, -0.999872446, -2.60148026e-05, 1, -0.000121808866, 0.999872506, 2.79565484e-05, 0.0159681737)
end)

Tab2:Button("Main Food",function(value)
    getgenv().game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-338.352173, 23.6826477, -297.2146, -0.0060598203, -1.03402984e-08, -0.999981582, -1.61653102e-09, 1, -1.03306892e-08, 0.999981582, 1.55389912e-09, -0.0060598203)
end)

local Tab3 = Window:Tab("Keybind",false)

Tab3:Label("Keybind")

Tab3:Keybind("Toggle",Enum.KeyCode.Semicolon,function()
    Library:Toggle()
end)

local Tab3 = Window:Tab("Credits",false)

Tab3:Label("rice#1943")

local L_5_ = L_4_:NewTab("Aimlock")
local L_6_ = L_5_:NewSection("15x")
L_6_:NewButton(
    "Aimlock",
    "Beam niggas down",
    function()
	getgenv().AimPart = "HumanoidRootPart"
	getgenv().AimlockKey = "q"
	getgenv().AimRadius = 30
	getgenv().ThirdPerson = true
	getgenv().FirstPerson = true
	getgenv().TeamCheck = false
	getgenv().PredictMovement = true
	getgenv().PredictionVelocity = 9
	local L_27_, L_28_, L_29_, L_30_ =
            game:GetService "Players",
            game:GetService "UserInputService",
            game:GetService "RunService",
            game:GetService "StarterGui"
	local L_31_, L_32_, L_33_, L_34_, L_35_, L_36_, L_37_ =
            L_27_.LocalPlayer,
            L_27_.LocalPlayer:GetMouse(),
            workspace.CurrentCamera,
            CFrame.new,
            Ray.new,
            Vector3.new,
            Vector2.new
	local L_38_, L_39_, L_40_ = true, false, false
	local L_41_
	getgenv().CiazwareUniversalAimbotLoaded = true
	getgenv().WorldToViewportPoint = function(L_42_arg0)
		return L_33_:WorldToViewportPoint(L_42_arg0)
	end
	getgenv().WorldToScreenPoint = function(L_43_arg0)
		return L_33_.WorldToScreenPoint(L_33_, L_43_arg0)
	end
	getgenv().GetObscuringObjects = function(L_44_arg0)
		if L_44_arg0 and L_44_arg0:FindFirstChild(getgenv().AimPart) and L_31_ and L_31_.Character:FindFirstChild("Head") then
			local L_45_ = workspace:FindPartOnRay(L_35_(L_44_arg0[getgenv().AimPart].Position, L_31_.Character.Head.Position))
			if L_45_ then
				return L_45_:IsDescendantOf(L_44_arg0)
			end
		end
	end
	getgenv().GetNearestTarget = function()
		local L_46_ = {}
		local L_47_ = {}
		local L_48_ = {}
		for L_50_forvar0, L_51_forvar1 in pairs(L_27_:GetPlayers()) do
			if L_51_forvar1 ~= L_31_ then
				table.insert(L_46_, L_51_forvar1)
			end
		end
		for L_52_forvar0, L_53_forvar1 in pairs(L_46_) do
			if L_53_forvar1.Character ~= nil then
				local L_54_ = L_53_forvar1.Character:FindFirstChild("Head")
				if getgenv().TeamCheck == true and L_53_forvar1.Team ~= L_31_.Team then
					local L_55_ =
                            (L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
					local L_56_ =
                            Ray.new(
                            game.Workspace.CurrentCamera.CFrame.p,
                            (L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_55_
                        )
					local L_57_, L_58_ = game.Workspace:FindPartOnRay(L_56_, game.Workspace)
					local L_59_ = math.floor((L_58_ - L_54_.Position).magnitude)
					L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
					L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_55_
					L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
					L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_59_
					table.insert(L_48_, L_59_)
				elseif getgenv().TeamCheck == false and L_53_forvar1.Team == L_31_.Team then
					local L_60_ =
                            (L_53_forvar1.Character:FindFirstChild("Head").Position - game.Workspace.CurrentCamera.CFrame.p).magnitude
					local L_61_ =
                            Ray.new(
                            game.Workspace.CurrentCamera.CFrame.p,
                            (L_32_.Hit.p - game.Workspace.CurrentCamera.CFrame.p).unit * L_60_
                        )
					local L_62_, L_63_ = game.Workspace:FindPartOnRay(L_61_, game.Workspace)
					local L_64_ = math.floor((L_63_ - L_54_.Position).magnitude)
					L_47_[L_53_forvar1.Name .. L_52_forvar0] = {}
					L_47_[L_53_forvar1.Name .. L_52_forvar0].dist = L_60_
					L_47_[L_53_forvar1.Name .. L_52_forvar0].plr = L_53_forvar1
					L_47_[L_53_forvar1.Name .. L_52_forvar0].diff = L_64_
					table.insert(L_48_, L_64_)
				end
			end
		end
		if unpack(L_48_) == nil then
			return nil
		end
		local L_49_ = math.floor(math.min(unpack(L_48_)))
		if L_49_ > getgenv().AimRadius then
			return nil
		end
		for L_65_forvar0, L_66_forvar1 in pairs(L_47_) do
			if L_66_forvar1.diff == L_49_ then
				return L_66_forvar1.plr
			end
		end
		return nil
	end
	L_32_.KeyDown:Connect(
            function(L_67_arg0)
		if L_67_arg0 == AimlockKey and L_41_ == nil then
			pcall(
                        function()
				if L_39_ ~= true then
					L_39_ = true
				end
				local L_68_
				L_68_ = GetNearestTarget()
				if L_68_ ~= nil then
					L_41_ = L_68_
				end
			end
                    )
		elseif L_67_arg0 == AimlockKey and L_41_ ~= nil then
			if L_41_ ~= nil then
				L_41_ = nil
			end
			if L_39_ ~= false then
				L_39_ = false
			end
		end
	end
        )
	L_29_.RenderStepped:Connect(
            function()
		if getgenv().ThirdPerson == true and getgenv().FirstPerson == true then
			if
                        (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 or
                            (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1
                     then
				L_40_ = true
			else
				L_40_ = false
			end
		elseif getgenv().ThirdPerson == true and getgenv().FirstPerson == false then
			if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude > 1 then
				L_40_ = true
			else
				L_40_ = false
			end
		elseif getgenv().ThirdPerson == false and getgenv().FirstPerson == true then
			if (L_33_.Focus.p - L_33_.CoordinateFrame.p).Magnitude <= 1 then
				L_40_ = true
			else
				L_40_ = false
			end
		end
		if L_38_ == true and L_39_ == true then
			if L_41_ and L_41_.Character and L_41_.Character:FindFirstChild(getgenv().AimPart) then
				if getgenv().FirstPerson == true then
					if L_40_ == true then
						if getgenv().PredictMovement == true then
							L_33_.CFrame =
                                        L_34_(
                                        L_33_.CFrame.p,
                                        L_41_.Character[getgenv().AimPart].Position +
                                            L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                    )
						elseif getgenv().PredictMovement == false then
							L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
						end
					end
				elseif getgenv().ThirdPerson == true then
					if L_40_ == true then
						if getgenv().PredictMovement == true then
							L_33_.CFrame =
                                        L_34_(
                                        L_33_.CFrame.p,
                                        L_41_.Character[getgenv().AimPart].Position +
                                            L_41_.Character[getgenv().AimPart].Velocity / PredictionVelocity
                                    )
						elseif getgenv().PredictMovement == false then
							L_33_.CFrame = L_34_(L_33_.CFrame.p, L_41_.Character[getgenv().AimPart].Position)
						end
					end
				end
			end
		end
	end
        )
end
)
L_6_:NewTextBox(
    "Aimlock Key",
    "Aimlock Key should be lowercase.",
    function(L_69_arg0)
	getgenv().AimlockKey = L_69_arg0
end
)
L_6_:NewTextBox(
    "Aimlock Prediction",
    "Customize your aimlock prediction",
    function(L_70_arg0)
	PredictionVelocity = L_70_arg0
end
)
L_6_:NewDropdown(
    "AimPart",
    "Yes",
    {
	"Head",
	"UpperTorso",
	"HumanoidRootPart",
	"LowerTorso"
},
    function(L_71_arg0)
	getgenv().AimPart = L_71_arg0
end
)
local L_7_ = L_4_:NewTab("Silent Aim")
local L_8_ = L_7_:NewSection("15x")
L_8_:NewButton(
    "Silent Aim",
    "Silent Aim Toggle Key is T.",
    function()
	loadstring(game:HttpGet("https://raw.githubusercontent.com/tayodevelup/imsoniac/main/silentaim", true))()
end
)
L_8_:NewTextBox(
    "Silent Aim Prediction",
    "0.157 for low ping 0.178 high ping",
    function(L_72_arg0)
	DaHoodSettings.Prediction = L_72_arg0
end
)
L_8_:NewDropdown(
    "Silent Aim Part",
    "yes bro flash is cool",
    {
	"Head",
	"UpperTorso",
	"HumanoidRootPart",
	"LowerTorso"
},
    function(L_73_arg0)
	Aiming.TargetPart = L_73_arg0
end
)
L_8_:NewTextBox(
    "Silent Aim Fov",
    "yes bro i am cool (flash)",
    function(L_74_arg0)
	Aiming.FOV = L_74_arg0
end
)
L_8_:NewToggle(
    "Silent Aim Show Fov",
    "yea",
    function(L_75_arg0)
	Aiming.ShowFOV = L_75_arg0
end
)
