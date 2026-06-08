local CurrentGameId = game.GameId
local SupportedGames = {
    [994732206]  = "https://raw.githubusercontent.com/Dev-VoltHub/Bloxfruit/refs/heads/main/volt.lua",             -- Blox Fruits
    [7709344486] = "https://raw.githubusercontent.com/Dev-VoltHub/StealBrainrot/refs/heads/main/Volt.lua",         -- Steal a Brainrot
    [7326934954] = "https://raw.githubusercontent.com/Dev-VoltHub/99NightsFlorest/refs/heads/main/volt.lua",       -- 99 Nights in the Forest
}

for GameId, Script in pairs(SupportedGames) do
    if CurrentGameId == GameId then
        loadstring(game:HttpGet(Script))()
        return
    end
end

game:GetService("Players").LocalPlayer:Kick("Unsupport Game")
