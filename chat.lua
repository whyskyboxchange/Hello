local messages = {
    "give me krnl key",
    "what latest krnl key",
    "someone can give krnl key",
    "skids",
    "is krnl update",
    ";kill all",
    "can some one give me synapse x",
    "syntax user ####",
    "cry about it",
    "i got bobux",
    "bruh",
    "bruh what",
    "funni",
    "skid",
    "we do a little trolling",
    "free exploits LLL",
    "bro u r skid LOL",
    "ur so cringe",
    "i smell skid",
    "dogo",
    "funni monki",
    "see he is cringe",
    "mizt align ####",
    "mizt skid",
    "so scared lol",
    "yeah skid exposed",
    "define math.angles",
    "hella skid",
    "scam",
    "send real code skid",
    "cringe kid",
    "susy",
    "sussy",
    "sussy baka",
    "im imposter",
    "bro what",
    "real hak",
    "define skid",
    "define print",
    "iy skid",
    "iy user",
    "i got synapse",
    "i got syn x",
    "hat aura",
    "-re",
    "-gh ###############################################################",
    "doggo",
    "dude can i have that netless",
    "net is patched",
    "lemme test my netless",
    "im using netless and velocity skid",
    ".speed 100",
    ".mode #",
    "lol",
    "ur using krnl rn",
    "real",
    "imagine flinging",
    "popbob",
    "popbob hack",
    "amogus",
    "among us",
    "amog us",
    "oop i forgot netless",
    "yep",
    ";fling",
    ";fly",
    ";unfly",
    "skid among us lol",
    "clown",
    "clown moment",
    "jitter",
    "jitter moment",
    "leg jitter",
    "torso jitter",
    "skidtax user",
    "what reanim is that",
    "idc",
    "i dont care",
    "gorge floyd",
    "kid",
    "ur like 12",
    "lol kid",
    ";annoy all",
    ":cmds"
}

_G.spamMessages = messages

local PlayersService = game:GetService("Players")
local sayMessageRequest = game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest
local localPlayer = PlayersService.LocalPlayer

local _math_random = math.random
local _string_upper = string.upper
local _FireServer = sayMessageRequest.FireServer
local _task_wait = task.wait

while true do
    local message = messages[_math_random(1, #messages)]
    
    if _math_random(1, 2) == 1 then
        message = _string_upper(message)
    end
    
    _FireServer(sayMessageRequest, message, "all")
    _task_wait(1.6 + _math_random())
end
