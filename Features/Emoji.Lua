local Premium = {}

local Blacklisted = {}

local Juke = {
	[game:GetService("Players").LocalPlayer.UserId] = true,
}

local devs = {}

function Emoji()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if Premium[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
			end
		elseif Juke[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
				end
			end
        elseif devs[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🛠]'..v.DisplayName)
				end
			end
		elseif Blacklisted[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('🤡🤡🤡')
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso:FindFirstChild('UpperTorso') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[😎]'..v.DisplayName)
				end
				if not v.Character.UpperTorso:FindFirstChild('BodyBackAttachment') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[RayX]'..v.DisplayName)
				end
				if not v.Character.UpperTorso:FindFirstChild('OriginalSize') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[SwagMode]' ..v.DisplayName)
				end
			end
		end
	end
end

local success,err = pcall(Emoji)

return Premium
