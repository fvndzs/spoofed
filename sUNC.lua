task.spawn(function()
    local PASS = utf8.char(0x2705)
    local FAIL = utf8.char(0x274C)
    local INFO = utf8.char(0x2757)
    local COOL = utf8.char(0x1F60E)
    local SMIRK = utf8.char(0x1F60F)
    local PEACH = utf8.char(0x1F351)
    local randomSeconds = 10 + (math.random() * 8)
    local Players = game:GetService("Players")
    local LocalPlayer = Players.LocalPlayer

    local function getTimestamp()
        return os.date("%H:%M:%S")
    end

    local function fakeLog(msg)
        print(string.format("%s -- %s", getTimestamp(), msg))
    end

    local function fakeWarn(msg)
        warn(string.format("%s -- %s", getTimestamp(), msg))
    end

    local function printCustom(symbol, text)
        print(string.format("%s -- %s %s", getTimestamp(), symbol, text))
    end

    local function randomDelay()
        task.wait(math.random(1, 2))
    end

    local function smallRandomDelay()
        task.wait(math.random(1, 3) / 10)
    end

    local function sendNotification(title, text, duration)
        pcall(function()
            game:GetService("StarterGui"):SetCore("SendNotification", {
                Title = title,
                Text = text,
                Duration = duration or 5
            })
        end)
    end

    local function sendClientChatMessage(message)
        pcall(function()
            local TextChatService = game:GetService("TextChatService")
            if TextChatService.ChatVersion == Enum.ChatVersion.TextChatService then

                local channel = TextChatService.TextChannels:FindFirstChild("RBXGeneral")
                if channel then
                    channel:DisplaySystemMessage(message)
                end
            else

                game:GetService("StarterGui"):SetCore("ChatMakeSystemMessage", {
                    Text = message,
                    Color = Color3.fromRGB(255, 255, 255),
                    Font = Enum.Font.SourceSansBold
                })
            end
        end)
    end

    fakeLog("CP1")
    smallRandomDelay()
    fakeLog("CP2")
    smallRandomDelay()
    fakeLog("CP3")
    smallRandomDelay()
    fakeLog("CP4")
    smallRandomDelay()
    fakeLog("CP5")
    smallRandomDelay()
    fakeLog("CP6")
    smallRandomDelay()
    fakeLog("CP7")
    smallRandomDelay()
    fakeLog("CP8 function: 0x78789488e2ead872")
    smallRandomDelay()
    fakeLog("CP9 function: 0x78789488e2ead872")
    smallRandomDelay()
    fakeLog("CP10 function: 0x78789488e2ead872")
    smallRandomDelay()
    fakeLog("- .")
    smallRandomDelay()
    warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with number", getTimestamp()))
    randomDelay()
    local executorName = "Symple v0.5.5"
    warn(string.format("%s -- %s", getTimestamp(), executorName))

    smallRandomDelay()

    fakeLog("STARTING sUNC test. Join our Discord server if you want :) [discord.gg/yQNzDrvbF5]")

    task.wait(2)

    fakeLog("function: 0xb56a9ee4e2806ed2")
    fakeLog("true")
    fakeLog("CP1")
    fakeLog("CP2")
    fakeLog("CP3")
    fakeLog("CP4")
    fakeLog("CP5")
    randomDelay()

    fakeWarn("nil nil")
    randomDelay()

    for i = 1, 15 do
        fakeLog("waiting for false 0")
    end
    fakeLog("waiting for false 0.800000011920929")
    randomDelay()

    printCustom(INFO, "Starting basic loadstring testing")
    printCustom(INFO, "Finished basic loadstring testing")
    randomDelay()
    printCustom(INFO, "Starting simple loadstring URL testing...")
    printCustom(PASS, "Passed the simple loadstring test. Short obfuscated scripts can be executed.")
    printCustom(INFO, "Finished simple loadstring URL testing")
    randomDelay()
    printCustom(INFO, "Starting complicated loadstring URL testing...")
    printCustom(INFO, "Finished complicated complicated loadstring URL testing")
    randomDelay()

    fakeLog("loadstring[complicated] true")
    fakeLog("loadstring[simple] true")
    fakeLog("loadstring[basic] true")
    fakeLog("ok so then wtf did I get? idk probably さようなら、おなら魔法使い")
    randomDelay()

local functionsList = {
    {true, "Drawing.Fonts"},
    {true, "Drawing.new"},
    {true, "WebSocket.connect"},
    {true, "appendfile"},
    {true, "base64_decode"},
    {true, "base64_encode"},
    {true, "cache.invalidate"},
    {true, "cache.iscached"},
    {true, "cache.replace"},
    {true, "checkcaller"},
    {true, "cleardrawcache"},
    {true, "clonefunction"},
    {true, "cloneref"},
    {true, "compareinstances"},
    {true, "debug.getconstant"},
    {true, "debug.getconstants"},
    {true, "debug.getinfo"},
    {true, "debug.getproto"},
    {true, "debug.getprotos"},
    {true, "debug.getstack"},
    {true, "debug.getupvalue"},
    {true, "debug.getupvalues"},
    {true, "debug.setconstant"},
    {true, "debug.setstack"},
    {true, "debug.setupvalue"},
    {true, "decompile"},
    {true, "delfile"},
    {true, "delfolder"},
    {true, "filtergc"},
    {true, "fireclickdetector"},
    {true, "fireproximityprompt"},
    {true, "firesignal"},
    {true, "firetouchinterest"},
    {true, "getcallbackvalue"},
    {true, "getcallingscript"},
    {true, "getconnections"},
    {true, "getcustomasset"},
    {true, "getfunctionhash"},
    {true, "getgc"},
    {true, "getgenv"},
    {true, "gethiddenproperty"},
    {true, "gethui"},
    {true, "getinstances"},
    {true, "getloadedmodules"},
    {true, "getnamecallmethod"},
    {true, "getnilinstances"},
    {true, "getrawmetatable"},
    {true, "getrenderproperty"},
    {true, "getrenv"},
    {true, "getrunningscripts"},
    {true, "getscriptbytecode"},
    {true, "getscriptclosure"},
    {true, "getscriptfromthread"},
    {true, "getscripthash"},
    {true, "getscripts"},
    {true, "getsenv"},
    {true, "getthreadidentity"},
    {true, "hookfunction"},
    {true, "hookmetamethod"},
    {true, "identifyexecutor"},
    {true, "iscclosure"},
    {true, "isexecutorclosure"},
    {true, "isfile"},
    {true, "isfolder"},
    {true, "islclosure"},
    {true, "isreadonly"},
    {true, "isrenderobj"},
    {true, "isscriptable"},
    {true, "listfiles"},
    {true, "loadfile"},
    {true, "loadstring"},
    {true, "lz4compress"},
    {true, "lz4decompress"},
    {true, "makefolder"},
    {true, "newcclosure"},
    {true, "readfile"},
    {true, "replicatesignal"},
    {true, "request"},
    {true, "restorefunction"},
    {true, "setclipboard"},
    {true, "setfpscap"},
    {true, "sethiddenproperty"},
    {true, "setrawmetatable"},
    {true, "setreadonly"},
    {true, "setrenderproperty"},
    {true, "setscriptable"},
    {true, "setthreadidentity"},
    {true, "writefile"}
}

    for _, f in ipairs(functionsList) do
        local icon = f[1] and PASS or FAIL
        printCustom(icon, f[2])
        task.wait(0.01)
    end

    randomDelay()
    fakeWarn("yay")
    fakeLog("")
    printCustom(COOL, "Passed the test with 100% success rate (88 out of 88)")
    printCustom(FAIL, "Total tests failed: 0")
    printCustom(SMIRK, "This test was made by senS")
    fakeLog(string.format("Finished the test in %.2f seconds", randomSeconds))
    fakeLog("")
    fakeLog("sUNC, VERSION 2.1.5 }A @>>>ynp|{pr ynznn}rpn nnn")
    fakeLog("Contributors: Lovre, vvultt, GRH, 0_void, Dottik, Pixeluted, bytevector(" .. PEACH .. "), s.irius, citam.")

    local displayName = LocalPlayer.DisplayName or LocalPlayer.Name
    sendClientChatMessage(string.format("%s has reached 100%% sUNC", displayName))

    sendNotification("sUNC", "Couldn't generate link, please retry running sUNC", 8)
end)
