-- // VoltHub Game Selector

local CurrentPlaceId = game.PlaceId

local SupportedGames = {

    -- Blox Fruits:
    -- [2753915549] = Sea 1
    -- [4442272183] = Sea 2
    -- [7449423635] = Sea 3

    [2753915549] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-VoltHub/Bloxfruit/refs/heads/main/volt.lua"))()
    end,

    [4442272183] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-VoltHub/Bloxfruit/refs/heads/main/volt.lua"))()
    end,

    [7449423635] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-VoltHub/Bloxfruit/refs/heads/main/volt.lua"))()
    end,


    -- Steal a Brainrot:
    -- [109983668079237] = Main Place
    -- [96342491571673] = Gameplay/SubPlace

    [109983668079237] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-VoltHub/StealBrainrot/refs/heads/main/Volt.lua"))()
    end,

    [96342491571673] = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Dev-VoltHub/StealBrainrot/refs/heads/main/Volt.lua"))()
    end,
}

local Execute = SupportedGames[CurrentPlaceId]

if Execute then
    Execute()
else
    game:GetService("Players").LocalPlayer:Kick("Game Not Support [❌]")
end
