-- // VoltHub Game Selector

local CurrentPlaceId = game.PlaceId

local SupportedGames = {

    ----------------------------------------------------------------
    -- Blox Fruits
    -- Sea 1: [2753915549], [85211729168715]
    -- Sea 2: [4442272183], [79091703265657]
    -- Sea 3: [7449423635], [100117331123089]
    ----------------------------------------------------------------

    {
        PlaceIds = {
            2753915549,
            85211729168715,

            4442272183,
            79091703265657,

            7449423635,
            100117331123089,
        },

        Script = "https://raw.githubusercontent.com/Dev-VoltHub/Bloxfruit/refs/heads/main/volt.lua"
    },

    ----------------------------------------------------------------
    -- Steal a Brainrot
    -- [109983668079237], [96342491571673]
    ----------------------------------------------------------------

    {
        PlaceIds = {
            109983668079237,
            96342491571673,
        },

        Script = "https://raw.githubusercontent.com/Dev-VoltHub/StealBrainrot/refs/heads/main/Volt.lua"
    },
}

for _, GameData in pairs(SupportedGames) do
    for _, PlaceId in pairs(GameData.PlaceIds) do
        if CurrentPlaceId == PlaceId then
            loadstring(game:HttpGet(GameData.Script))()
            return
        end
    end
end

game:GetService("Players").LocalPlayer:Kick("Game Not Support [❌]")
