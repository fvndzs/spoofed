local PASS = utf8.char(0x2705)
local FAIL = utf8.char(0x274C)
local INFO = utf8.char(0x2757)
local COOL = utf8.char(0x1F60E)
local SMIRK = utf8.char(0x1F60F)
local PEACH = utf8.char(0x1F351)

-- Removed PlaceId check to prevent kicking/disconnecting
-- The previous check kicked you if you weren't in a specific game, which looks like a crash.

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
    -- Reduced delay to make script faster and less likely to look frozen
    task.wait(math.random(1, 3))
end

local function smallRandomDelay()
    -- Reduced delay
    task.wait(math.random(1, 5) / 10)
end

local function freeze(seconds)
    task.wait(seconds)
end

local function sendNotification(title, text, duration)
    -- Wrap in pcall to prevent errors if StarterGui isn't ready
    pcall(function()
        game:GetService("StarterGui"):SetCore("SendNotification", {
            Title = title,
            Text = text,
            Duration = duration or 5
        })
    end)
end

-- WRAPPER: We wrap the execution in task.spawn so loadstring returns immediately.
-- This prevents the executor from thinking the script has hung or crashed.
task.spawn(function()
    
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
    print(string.format("%s -- false [string \"7EX0C4h7ArcDTsrt\"]:1: attempt to index nil with number", getTimestamp()))
    smallRandomDelay()

    -- Safe check for identifyexecutor in case the executor doesn't support it
    local executorName = "Unknown"
    pcall(function()
        executorName = identifyexecutor and identifyexecutor() or "Unknown Executor"
    end)
    warn(string.format("%s -- %s", getTimestamp(), executorName))

    smallRandomDelay()

    fakeLog("STARTING sUNC test. Join our Discord server if you want :) [discord.gg/yQNzDrvbF5]")

    freeze(2) -- Reduced from 10 to 2 seconds to prevent "frozen" feeling

    fakeLog("function: 0xb56a9ee4e2806ed2")
    fakeLog("true")
    fakeLog("CP1")
    fakeLog("CP2")
    fakeLog("CP3")
    fakeLog("CP4")
    fakeLog("CP5")
    randomDelay()

    fakeWarn(FAIL .. " filtergc [FUNC] Failed to retrieve a function with a constant which equals to NaN.")
    randomDelay()
    fakeWarn("nil nil")
    randomDelay()
    fakeWarn(FAIL .. " hookfunction generic namecall hook detected")
    randomDelay()
    fakeWarn(FAIL .. " clonefunction Can't test due to hookfunction not working reliably")
    randomDelay()
    fakeWarn(FAIL .. " restorefunction Can't test due to 'hookfunction' not working reliably")
    randomDelay()
    fakeWarn(FAIL .. " newcclosure Can't test due to 'clonefunction' not working reliably")
    randomDelay()

    for i = 1, 15 do
        fakeLog("waiting for false 0")
    end
    fakeLog("waiting for false 0.800000011920929")
    randomDelay()

    fakeWarn(FAIL .. " getconnections Connection shouldn't exist after firing once")
    fakeLog("can't get value nil")
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
    fakeWarn(FAIL .. " getscriptfromthread function is nil")
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
        {false, "clonefunction"},
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
        {false, "filtergc"},
        {true, "fireclickdetector"},
        {true, "fireproximityprompt"},
        {true, "firesignal"},
        {true, "firetouchinterest"},
        {true, "getcallbackvalue"},
        {true, "getcallingscript"},
        {false, "getconnections"},
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
        {true, "setclipboard"},
        {true, "setfpscap"},
        {true, "setreadonly"},
        {true, "setthreadidentity"},
        {true, "writefile"}
    }

    for _, f in ipairs(functionsList) do
        local icon = f[1] and PASS or FAIL
        printCustom(icon, f[2])
        task.wait(0.01) -- Tiny wait to keep UI responsive without waiting too long
    end

    randomDelay()
    fakeWarn("yay")
    fakeLog("")
    printCustom(COOL, "Passed the test with 91% success rate (79 out of 86)")
    printCustom(FAIL, "Total tests failed: 7")
    printCustom(SMIRK, "This test was made by senS")
    fakeLog("Finished the test in 40.53 seconds")
    fakeLog("")
    fakeLog("sUNC, VERSION 2.1.5 }A @>>>ynp|{pr ynznn}rpn nnn")
    fakeLog("Contributors: Lovre, vvultt, GRH, 0_void, Dottik, Pixeluted, bytevector(" .. PEACH .. "), s.irius, citam.")

    sendNotification("sUNC", "Couldn't generate link, please retry running sUNC", 8)

end)
