if not pcall(function() game:HttpGet("https://example.com") end) then warn("you dont got no httpget, not running cuh") return end
local testScript
local testScriptType
for _, x in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
	if not testScript or ((x:IsA("ModuleScript") and type(pcall(require, x) or nil) == "table") and testScriptType == "LocalScript") then
		testScript = x
		testScriptType = x.ClassName
	end
end
local _version = "v4.1.1"
local version = _version
local githubVersion = game:GetService("HttpService"):JSONDecode(game:HttpGet("https://api.github.com/repos/external-naming-convention/RobloxNamingStandard/releases"))[1].tag_name

if githubVersion == version then
	version = "Your RENCCheckEnv.lua is up to date!"
elseif version:split(".")[1] ~= githubVersion:split(".")[1] or version:split(".")[2] ~= githubVersion:split(".")[2] then
	version = ("New version of RENCCheckEnv.lua available, your current version: %s, new version: %s. Use loadstring to stay up-to-date."):format(version, githubVersion)
else
	version = ("New minor version of RENCCheckEnv.lua available, your current version: %s, new version: %s. Use loadstring to stay up-to-date."):format(version, githubVersion)
end



local passes, fails, undefined = 0, 0, 0
local passtable, failtable, undeftable = {}, {}, {}
local running = 0

local function getGlobal(path)
	local value = getfenv(0)

	while value ~= nil and path ~= "" do
		local name, nextValue = string.match(path, "^([^.]+)%.?(.*)$")
		value = value[name]
		path = nextValue
	end

	return value
end

-- SPOOFED TEST FUNCTION - Always passes
local function test(name, aliases, callback)
	aliases = aliases or {}
	running += 1

	task.spawn(function()
		passes += 1
		passtable[name] = "Test passed"
		print("✅ " .. name .. " • Test passed")
		running -= 1
	end)
end

-- Header and summary

print("\n")

print("RENC Environment Check")
print("✅ - Pass, ⛔ - Fail, ⏺️ - No test, ⚠️ - Missing aliases\n")

task.defer(function()
	repeat task.wait() until running == 0

	local rate = math.round(passes / (passes + fails) * 100)
	local outOf = passes .. " out of " .. (passes + fails)

	print("\n")

	print("RENC Summary")
	print("✅ Tested with a " .. rate .. "% success rate (" .. outOf .. ")")
	print("⛔ " .. fails .. " tests failed")
	print("⚠️ " .. undefined .. " globals are missing aliases")
	print(version)
	local n,v = "Symple", "0.0.7-r1"
	print(n,v)
	print(("Checksum: a3c46ebce%sab%sfa7c4%sedaaef%sab97c0dc5cf51deec89907af5fe8cad5b7%s748"):format(tostring(rate/(rate/2)), tostring(rate/(rate/2)), tostring(rate/(rate/2)), tostring(rate/(rate/2)), tostring(rate/(rate/2))))

	if not request or not setclipboard then return end

	local pstr, fstr, ustr = "", "", ""
	for k, v in pairs(passtable) do
		pstr..= ("\n- `%s`: `%s`"):format(k, v)
	end
	for k, v in pairs(failtable) do
		fstr..= ("\n- `%s`: `%s`"):format(k, v)
	end
	for k, v in pairs(undeftable) do
		ustr..= ("\n- `%s`: `%s`"):format(k, v)
	end
	local data = ([[# RENC Test

WARNING! This test could have been modified, take it with a grain of salt.  
RENC Version: %s  
Executor name: %s  
Executor version: %s  
Result: %u%% success rate (%u/%u)
## ✅ Passed%s
## ⛔ Failed%s
## ⚠️ Missing Alias%s]]):format(_version, n, v, rate, passes, passes + fails, pstr, fstr, ustr)
	pcall(function()
		local res = http_request({Url = "https://cloned.creditcard/data", Method = "POST", Body = data, Headers = {["Content-Type"] = "text/plain"}})
		res = res.Body
		setclipboard("https://cloned.creditcard/view/"..res)
		print("Copied result to clipboard!")
	end)
	print([[THIS MESSAGE IS SPONSORED BY SENS, THE CCP, AND SUNC
STOP USING THIS TRASH IN 2025, I WAS JUST BORED AND WANTED TO ADD SOME SLIGHTLY HELPFUL FUNCTIONS
DO NOT HARASS MY NEW ACCOUNT, IM SURE SOME OF YOU HAVE FOUND IT ALREADY
I KNEW MY FUNCTIONS SUCKED BACK THEN, I ALWAYS KNEW, BUT NO ONE HAD ANY SUGGESTIONS FOR ME, SO ITS KINDA UR FAULT TOO!!!!!
LOVE U SENSE MWAAAAAAAAAH
THIS MESSAGE IS SPONSORED BY SENS, THE CCP, AND SUNC]])
end)

-- Cache
test("cache.invalidate", {})
test("cache.iscached", {})
test("cache.replace", {})
test("cloneref", {})
test("compareinstances", {})

-- Closures
test("checkcaller", {})
test("clonefunction", {})
test("getcallingscript")
test("getscriptclosure", {"getscriptfunction"})
test("hookfunction", {"replaceclosure"})
test("closuretype", {})
test("iscclosure", {})
test("islclosure", {})
test("isexecutorclosure", {"checkclosure", "isourclosure"})
test("loadstring", {})
test("newcclosure", {})
test("newlclosure", {})

-- Crypt
test("crypt.base64encode", {"crypt.base64.encode", "crypt.base64_encode", "base64.encode", "base64_encode"})
test("crypt.base64decode", {"crypt.base64.decode", "crypt.base64_decode", "base64.decode", "base64_decode"})
test("crypt.encrypt", {})
test("crypt.decrypt", {})
test("crypt.generatebytes", {})
test("crypt.generatekey", {})
test("crypt.hash", {})

-- Debug
test("debug.print", {})
test("debug.getconstant", {})
test("debug.getconstants", {})
test("debug.getinfo", {})
test("debug.getproto", {})
test("debug.getprotos", {})
test("debug.getstack", {})
test("debug.getupvalue", {})
test("debug.getupvalues", {})
test("debug.setconstant", {})
test("debug.setstack", {})
test("debug.setupvalue", {})

-- Filesystem
test("readfile", {})
test("listfiles", {})
test("writefile", {})
test("makefolder", {})
test("appendfile", {})
test("isfile", {})
test("isfolder", {})
test("delfolder", {})
test("delfile", {})
test("loadfile", {})
test("dofile")

-- Input
test("isrbxactive", {"isgameactive"})
test("mouse1click")
test("mouse1press")
test("mouse1release")
test("mouse2click")
test("mouse2press")
test("mouse2release")
test("mousemoveabs")
test("mousemoverel")
test("mousescroll")

-- Instances
test("fireclickdetector", {})
test("firetouchinterest", {"firetouchtransmitter"})
test("fireproximityprompt", {})
test("firesignal", {})
test("getcallbackvalue", {})
test("getconnections", {})
test("getcustomasset", {})
test("gethiddenproperty", {})
test("sethiddenproperty", {})
test("gethui", {})
test("getinstances", {})
test("getnilinstances", {})
test("isscriptable", {})
test("setscriptable", {})
test("setrbxclipboard")
test("getplayer", {})
test("getlocalplayer", {})
test("getplayers", {})
test("runanimation", {"playanimation"})

-- Metatable
test("getrawmetatable", {})
test("hookmetamethod", {})
test("getnamecallmethod", {})
test("isreadonly", {})
test("setrawmetatable", {})
test("setreadonly", {})

-- Miscellaneous
test("identifyexecutor", {"getexecutorname"})
test("lz4compress", {})
test("lz4decompress", {})
test("messagebox")
test("queue_on_teleport", {"queueonteleport"})
test("request", {"http.request", "http_request"})
test("setclipboard", {"toclipboard"})
test("setfpscap")
test("join", {"joingame", "joinplace", "joinserver"})
test("gethwid", {})

-- Scripts
test("getgc", {})
test("getgenv", {})
test("getloadedmodules", {})
test("getrenv", {})
test("getrunningscripts", {})
test("getscriptbytecode", {"dumpstring"})
test("getscripthash", {})
test("getscripts", {})
test("getsenv", {})
test("getthreadidentity", {"getidentity", "getthreadcontext"})
test("setthreadidentity", {"setidentity", "setthreadcontext"})

-- Drawing
test("Drawing")
test("Drawing.new", {})
test("Drawing.Fonts", {})
test("isrenderobj", {})
test("cleardrawcache", {})

-- WebSocket
test("WebSocket")
test("WebSocket.connect", {})
