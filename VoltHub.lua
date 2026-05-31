-- // VoltHub Game Selector

local CurrentPlaceId = game.PlaceId

local GameList = {

    ["Blox Fruits"] = {
        PlaceIds = {
            2753915549,   85211729168715,  -- Sea 1
            4442272183,   79091703265657,  -- Sea 2
            7449423635,   100117331123089, -- Sea 3
        },
        Script = "https://raw.githubusercontent.com/Dev-VoltHub/Bloxfruit/refs/heads/main/volt.lua"
    },

    ["Steal a Brainrot"] = {
        PlaceIds = {
            109983668079237,
            96342491571673,
        },
        Script = "https://raw.githubusercontent.com/Dev-VoltHub/StealBrainrot/refs/heads/main/Volt.lua"
    },

    ["99 Nights in the Florest"] = {
        PlaceIds = {
            79546208627805,
        },
        Script = "https://raw.githubusercontent.com/Dev-VoltHub/99NightsFlorest/refs/heads/main/volt.lua"
    },

}

-- // Loader

local function LoadGame(GameData)
    loadstring(game:HttpGet(GameData.Script))()
end

for GameName, GameData in pairs(GameList) do
    for _, PlaceId in pairs(GameData.PlaceIds) do
        if CurrentPlaceId == PlaceId then
            LoadGame(GameData)
            return
        end
    end
end

game:GetService("Players").LocalPlayer:Kick("Game Not Supported [❌]")
