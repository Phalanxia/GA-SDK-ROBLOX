--Services
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local GuiSercice = game:GetService("GuiService")

local GameAnalyticsFiltering = ReplicatedStorage:WaitForChild("GameAnalyticsFiltering")

local function getPlatform()
    if (GuiSercice:IsTenFootInterface()) then
        return "Console"
    elseif (UserInputService.TouchEnabled and not UserInputService.MouseEnabled) then
        return "Mobile"
    else
        return "Desktop"
    end
end

GameAnalyticsFiltering.OnClientInvoke = getPlatform
