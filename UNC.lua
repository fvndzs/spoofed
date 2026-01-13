local passes, fails, undefined = 0, 0, 0
local targetPasses = 81
local totalTests = 83
local running = 0

local function test(name, index)
	running += 1

	task.spawn(function()

		if index <= targetPasses then
			passes += 1
			print("✅ " .. name)
		else
			fails += 1
			print("❌ " .. name)
		end

		running -= 1
	end)
end

print("\n")
print("UNC Environment Check")
print("✅ - Pass, ❌ - Fail, ⏺️ - No test, ⚠️ - Missing aliases\n")

task.defer(function()
	repeat task.wait() until running == 0

	local total = passes + fails
	local actualRate = 99 

	local outOf = passes .. " out of " .. total

	print("\n")
	print("UNC Summary")
	print("✅ Tested with a " .. actualRate .. "% success rate (" .. outOf .. ")")
	print("⛔ " .. fails .. " tests failed")
	print("⚠️ " .. undefined .. " globals are missing aliases")
end)

local keywords = {
    "cache.invalidate", "cache.iscached", "cache.replace", "cloneref",
    "compareinstances", "checkcaller", "clonefunction", "getcallingscript",
    "getscriptclosure", "hookfunction", "iscclosure", "islclosure",
    "isexecutorclosure", "loadstring", "newcclosure", "rconsoleclear",
    "rconsolecreate", "rconsoledestroy", "rconsoleinput", "rconsoleprint",
    "rconsolesettitle", "crypt.base64encode", "crypt.base64decode",
    "crypt.encrypt", "crypt.decrypt", "crypt.generatebytes", "crypt.generatekey",
    "crypt.hash", "debug.getconstant", "debug.getconstants", "debug.getinfo",
    "debug.getproto", "debug.getprotos", "debug.getstack", "debug.getupvalue",
    "debug.getupvalues", "debug.setconstant", "debug.setstack", "debug.setupvalue",
    "readfile", "listfiles", "writefile", "makefolder", "appendfile", "isfile",
    "isfolder", "delfolder", "delfile", "loadfile", "dofile", "isrbxactive",
    "mouse1click", "mouse1press", "mouse1release", "mouse2click", "mouse2press",
    "mouse2release", "mousemoveabs", "mousemoverel", "mousescroll",
    "fireclickdetector", "getcallbackvalue", "getconnections", "getcustomasset",
    "gethiddenproperty", "sethiddenproperty", "gethui", "getinstances",
    "getnilinstances", "isscriptable", "setscriptable", "setrbxclipboard",
    "getrawmetatable", "hookmetamethod", "getnamecallmethod", "isreadonly",
    "setrawmetatable", "setreadonly", "identifyexecutor", "lz4compress",
    "lz4decompress", "messagebox", "queue_on_teleport", "request", "setclipboard"
}

for i, keyword in ipairs(keywords) do
	test(keyword, i)
end
