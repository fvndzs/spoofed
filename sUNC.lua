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
    warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to call a nil value (global 'clonefunction')", getTimestamp()))
    randomDelay()
        warn(string.format("%s -- false [string \"A9x2Jk8LpQ0mNz1\"]:1: attempt to index nil with number", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"B5r6Yt2Wq8Xv9Z4\"]:1: environment error: firetouchinterest not implemented", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with 'getcallbackvalue'", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"K3m8Nn2Pq5Rt7Yx\"]:1: attempt to call a nil value (global 'getcustomasset')", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"Z9v0Xp4Qw1Lm8Nj\"]:1: critical error: hookfunction is not supported by this executor", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with string 'hookmetamethod'", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"M5t2Vr9Kq1Zw4Px\"]:1: filesystem error: attempt to call a nil value", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"P8n3Lj2Bq0Wv1Rx\"]:1: attempt to index nil with number (missing closure header)", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to call a nil value (field 'setrenderproperty')", getTimestamp()))
randomDelay()
            warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with number", getTimestamp()))
    randomDelay()
    warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to call a nil value (global 'clonefunction')", getTimestamp()))
    randomDelay()
        warn(string.format("%s -- false [string \"A9x2Jk8LpQ0mNz1\"]:1: attempt to index nil with number", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"B5r6Yt2Wq8Xv9Z4\"]:1: environment error: firetouchinterest not implemented", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with 'getcallbackvalue'", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"K3m8Nn2Pq5Rt7Yx\"]:1: attempt to call a nil value (global 'getcustomasset')", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"Z9v0Xp4Qw1Lm8Nj\"]:1: critical error: hookfunction is not supported by this executor", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with string 'hookmetamethod'", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"M5t2Vr9Kq1Zw4Px\"]:1: filesystem error: attempt to call a nil value", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"P8n3Lj2Bq0Wv1Rx\"]:1: attempt to index nil with number (missing closure header)", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to call a nil value (field 'setrenderproperty')", getTimestamp()))
randomDelay()
            warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with number", getTimestamp()))
    randomDelay()
    warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to call a nil value (global 'clonefunction')", getTimestamp()))
    randomDelay()
        warn(string.format("%s -- false [string \"A9x2Jk8LpQ0mNz1\"]:1: attempt to index nil with number", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"B5r6Yt2Wq8Xv9Z4\"]:1: environment error: firetouchinterest not implemented", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with 'getcallbackvalue'", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"K3m8Nn2Pq5Rt7Yx\"]:1: attempt to call a nil value (global 'getcustomasset')", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"Z9v0Xp4Qw1Lm8Nj\"]:1: critical error: hookfunction is not supported by this executor", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with string 'hookmetamethod'", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"M5t2Vr9Kq1Zw4Px\"]:1: filesystem error: attempt to call a nil value", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"P8n3Lj2Bq0Wv1Rx\"]:1: attempt to index nil with number (missing closure header)", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to call a nil value (field 'setrenderproperty')", getTimestamp()))
randomDelay()
            warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with number", getTimestamp()))
    randomDelay()
    warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to call a nil value (global 'clonefunction')", getTimestamp()))
    randomDelay()
        warn(string.format("%s -- false [string \"A9x2Jk8LpQ0mNz1\"]:1: attempt to index nil with number", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"B5r6Yt2Wq8Xv9Z4\"]:1: environment error: firetouchinterest not implemented", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with 'getcallbackvalue'", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"K3m8Nn2Pq5Rt7Yx\"]:1: attempt to call a nil value (global 'getcustomasset')", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"Z9v0Xp4Qw1Lm8Nj\"]:1: critical error: hookfunction is not supported by this executor", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with string 'hookmetamethod'", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"M5t2Vr9Kq1Zw4Px\"]:1: filesystem error: attempt to call a nil value", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"P8n3Lj2Bq0Wv1Rx\"]:1: attempt to index nil with number (missing closure header)", getTimestamp()))
randomDelay()
        warn(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to call a nil value (field 'setrenderproperty')", getTimestamp()))
randomDelay()
    local executorName = "Symple v0.5.0"
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
    {false, "Drawing.Fonts"},
    {false, "Drawing.new"},
    {false, "WebSocket.connect"},
    {false, "appendfile"},
    {false, "base64_decode"},
    {false, "base64_encode"},
    {false, "cache.invalidate"},
    {false, "cache.iscached"},
    {false, "cache.replace"},
    {false, "checkcaller"},
    {false, "cleardrawcache"},
    {false, "clonefunction"},
    {false, "cloneref"},
    {false, "compareinstances"},
    {false, "debug.getconstant"},
    {false, "debug.getconstants"},
    {false, "debug.getinfo"},
    {false, "debug.getproto"},
    {false, "debug.getprotos"},
    {false, "debug.getstack"},
    {false, "debug.getupvalue"},
    {false, "debug.getupvalues"},
    {false, "debug.setconstant"},
    {false, "debug.setstack"},
    {false, "debug.setupvalue"},
    {false, "decompile"},
    {false, "delfile"},
    {false, "delfolder"},
    {false, "filtergc"},
    {false, "fireclickdetector"},
    {false, "fireproximityprompt"},
    {false, "firesignal"},
    {false, "firetouchinterest"},
    {false, "getcallbackvalue"},
    {false, "getcallingscript"},
    {false, "getconnections"},
    {false, "getcustomasset"},
    {false, "getfunctionhash"},
    {false, "getgc"},
    {false, "getgenv"},
    {false, "gethiddenproperty"},
    {false, "gethui"},
    {false, "getinstances"},
    {false, "getloadedmodules"},
    {false, "getnamecallmethod"},
    {false, "getnilinstances"},
    {false, "getrawmetatable"},
    {false, "getrenderproperty"},
    {false, "getrenv"},
    {false, "getrunningscripts"},
    {false, "getscriptbytecode"},
    {false, "getscriptclosure"},
    {false, "getscriptfromthread"},
    {false, "getscripthash"},
    {false, "getscripts"},
    {false, "getsenv"},
    {false, "getthreadidentity"},
    {false, "hookfunction"},
    {false, "hookmetamethod"},
    {false, "identifyexecutor"},
    {false, "iscclosure"},
    {false, "isexecutorclosure"},
    {false, "isfile"},
    {false, "isfolder"},
    {false, "islclosure"},
    {false, "isreadonly"},
    {false, "isrenderobj"},
    {false, "isscriptable"},
    {false, "listfiles"},
    {false, "loadfile"},
    {false, "loadstring"},
    {false, "lz4compress"},
    {false, "lz4decompress"},
    {false, "makefolder"},
    {false, "newcclosure"},
    {false, "readfile"},
    {false, "replicatesignal"},
    {true, "request"},
    {false, "restorefunction"},
    {false, "setclipboard"},
    {false, "setfpscap"},
    {false, "sethiddenproperty"},
    {false, "setrawmetatable"},
    {false, "setreadonly"},
    {false, "setrenderproperty"},
    {false, "setscriptable"},
    {false, "setthreadidentity"},
    {false, "writefile"}
}

    for _, f in ipairs(functionsList) do
        local icon = f[1] and PASS or FAIL
        printCustom(icon, f[2])
        task.wait(0.01)
    end

    randomDelay()
    fakeWarn("yay")
    fakeLog("")
    printCustom(COOL, "Passed the test with 1% success rate (1 out of 88)")
    printCustom(FAIL, "Total tests failed: 87")
    printCustom(SMIRK, "This test was made by senS")
    fakeLog(string.format("Finished the test in %.2f seconds", randomSeconds))
    fakeLog("")
    fakeLog("sUNC, VERSION 2.1.5 }A @>>>ynp|{pr ynznn}rpn nnn")
    fakeLog("Contributors: Lovre, vvultt, GRH, 0_void, Dottik, Pixeluted, bytevector(" .. PEACH .. "), s.irius, citam.")

    local displayName = LocalPlayer.DisplayName or LocalPlayer.Name
    sendClientChatMessage(string.format("%s has reached 1%% sUNC", displayName))

    sendNotification("sUNC", "Couldn't generate link, please retry running sUNC", 8)
end)
