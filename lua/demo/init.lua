--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]

local ____modules = {}
local ____moduleCache = {}
local ____originalRequire = require
local function require(file, ...)
    if ____moduleCache[file] then
        return ____moduleCache[file].value
    end
    if ____modules[file] then
        local module = ____modules[file]
        ____moduleCache[file] = { value = (select("#", ...) > 0) and module(...) or module(file) }
        return ____moduleCache[file].value
    else
        if ____originalRequire then
            return ____originalRequire(file)
        else
            error("module '" .. file .. "' not found")
        end
    end
end
____modules = {
["init"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
local framePtr = nil
local excHandler = 0
local lastJSError = nil
local function HEX3Aanonymous_503316519()
    local function HEX3Aanonymous_503316520()
        print("Hello")
    end
    vim.api.nvim_buf_create_user_command(0, "Wazeee", HEX3Aanonymous_503316520, {})
end
____exports.setup = HEX3Aanonymous_503316519
return ____exports
 end,
["types.methods"] = function(...) 
--[[ Generated with https://github.com/TypeScriptToLua/TypeScriptToLua ]]
local ____exports = {}
____exports.Methods = Methods or ({})
____exports.Methods.CODE_ACTION = "textDocument/codeAction"
____exports.Methods.DEFINITION = "textDocument/definition"
____exports.Methods.EXECUTE_COMMAND = "workspace/executeCommand"
____exports.TypescriptMethods = TypescriptMethods or ({})
____exports.TypescriptMethods.RENAME = "_typescript.rename"
return ____exports
 end,
}
return require("init", ...)
