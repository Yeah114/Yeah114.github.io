local omega = require("omega")
local json = require("json")
--- @type Coromega
local coromega = require("coromega").from(omega)
local crypto = require("crypto")
local config = coromega.config
local selling = false
local selling_player_name = ""
local id = 0
local bot_name = coromega:bot_name()
local first_check_online = true
local plugin_name = "玩家小店"
coromega:sleep(1)
local yeah = coromega:soft_get("Yeah/plugins")
if not yeah or yeah ~= "ok" then
    coromega:soft_set("Yeah/plugins","ok")
    print("[38;5;154m_[39m[38;5;154m_[39m[38;5;154m [39m[38;5;154m [39m[38;5;154m [39m[38;5;148m_[39m[38;5;184m_[39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m_[39m[38;5;178m [39m[38;5;214m [39m[38;5;214m [39m[38;5;214m [39m[38;5;214m [39m[38;5;214m [39m[38;5;214m [39m[38;5;214m_[39m[38;5;214m_[39m[38;5;214m_[39m[38;5;208m_[39m[38;5;208m [39m[38;5;208m [39m[38;5;208m_[39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;209m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m[39m\n[38;5;208m\\[39m[38;5;208m [39m[38;5;208m\\[39m[38;5;208m [39m[38;5;208m/[39m[38;5;208m [39m[38;5;208m/[39m[38;5;209m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m_[39m[38;5;198m_[39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m|[39m[38;5;198m [39m[38;5;198m [39m[38;5;198m_[39m[38;5;198m [39m[38;5;198m\\[39m[38;5;199m|[39m[38;5;199m [39m[38;5;199m|[39m[38;5;199m_[39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m_[39m[38;5;199m [39m[38;5;163m [39m[38;5;164m_[39m[38;5;164m_[39m[38;5;164m [39m[38;5;164m_[39m[38;5;164m([39m[38;5;164m_[39m[38;5;164m)[39m[38;5;164m_[39m[38;5;164m [39m[38;5;164m_[39m[38;5;164m_[39m[38;5;128m [39m[38;5;129m [39m[38;5;129m_[39m[38;5;129m_[39m[38;5;129m_[39m[38;5;129m [39m[38;5;129m[39m\n[38;5;199m [39m[38;5;199m\\[39m[38;5;199m [39m[38;5;199mV[39m[38;5;199m [39m[38;5;199m/[39m[38;5;199m [39m[38;5;199m_[39m[38;5;163m [39m[38;5;164m\\[39m[38;5;164m/[39m[38;5;164m [39m[38;5;164m_[39m[38;5;164m`[39m[38;5;164m [39m[38;5;164m|[39m[38;5;164m [39m[38;5;164m'[39m[38;5;164m_[39m[38;5;164m [39m[38;5;128m\\[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m|[39m[38;5;129m [39m[38;5;129m|[39m[38;5;129m_[39m[38;5;129m)[39m[38;5;129m [39m[38;5;129m|[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m/[39m[38;5;93m [39m[38;5;63m_[39m[38;5;63m`[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m'[39m[38;5;63m_[39m[38;5;63m [39m[38;5;63m\\[39m[38;5;63m/[39m[38;5;33m [39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m|[39m[38;5;33m[39m\n[38;5;93m [39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m [39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m/[39m[38;5;63m [39m[38;5;63m([39m[38;5;63m_[39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m|[39m[38;5;33m [39m[38;5;33m|[39m[38;5;33m [39m[38;5;33m [39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m/[39m[38;5;33m|[39m[38;5;33m [39m[38;5;33m|[39m[38;5;39m [39m[38;5;39m|[39m[38;5;39m_[39m[38;5;39m|[39m[38;5;39m [39m[38;5;39m|[39m[38;5;39m [39m[38;5;39m([39m[38;5;39m_[39m[38;5;38m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m\\[39m[38;5;44m_[39m[38;5;43m_[39m[38;5;49m [39m[38;5;49m\\[39m[38;5;49m[39m\n[38;5;33m [39m[38;5;33m [39m[38;5;39m|[39m[38;5;39m_[39m[38;5;39m|[39m[38;5;39m\\[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m|[39m[38;5;39m\\[39m[38;5;38m_[39m[38;5;44m_[39m[38;5;44m,[39m[38;5;44m_[39m[38;5;44m|[39m[38;5;44m_[39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m_[39m[38;5;44m|[39m[38;5;44m [39m[38;5;43m|[39m[38;5;49m_[39m[38;5;49m|[39m[38;5;49m [39m[38;5;49m [39m[38;5;49m [39m[38;5;49m|[39m[38;5;49m_[39m[38;5;49m|[39m[38;5;49m\\[39m[38;5;48m_[39m[38;5;48m_[39m[38;5;48m,[39m[38;5;48m_[39m[38;5;48m|[39m[38;5;48m\\[39m[38;5;48m_[39m[38;5;48m_[39m[38;5;48m,[39m[38;5;84m [39m[38;5;83m|[39m[38;5;83m_[39m[38;5;83m|[39m[38;5;83m_[39m[38;5;83m|[39m[38;5;83m [39m[38;5;83m|[39m[38;5;83m_[39m[38;5;83m|[39m[38;5;83m_[39m[38;5;83m_[39m[38;5;119m_[39m[38;5;118m/[39m[38;5;118m[39m\n[38;5;49m [39m[38;5;49m [39m[38;5;49m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;84m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;119m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;154m [39m[38;5;154m [39m[38;5;154m [39m[38;5;154m [39m[38;5;154m|[39m[38;5;154m_[39m[38;5;154m_[39m[38;5;154m_[39m[38;5;154m/[39m[38;5;154m [39m[38;5;148m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;178m[39m\n[m[?25h[?1;5;2004l")
end
coromega:start_new(function()
    while true do
        local response, error_message = coromega:http_request("GET","https://Yeah114.github.io/can_use_lua.json", {})
        local data
        -- if error_message then
            -- coromega:error_out(error_message)
        -- end
        if response and response.body then
            data = json.decode(response.body)
        end
        if not response or not response.body or not data or not data[plugin_name] or not data[plugin_name][bot_name] then
            coromega:error_out("[38;5;208m [39m[38;5;208m_[39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m_[39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;209m [39m[38;5;209m_[39m[38;5;209m_[39m[38;5;209m_[39m[38;5;209m_[39m[38;5;209m [39m[38;5;209m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m[39m\n[38;5;203m|[39m[38;5;203m [39m[38;5;203m\\[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m\\[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m([39m[38;5;203m_[39m[38;5;203m)[39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m([39m[38;5;203m_[39m[38;5;203m)[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m[39m\n[38;5;203m|[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m\\[39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m/[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m\\[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m_[39m[38;5;203m)[39m[38;5;203m [39m[38;5;203m/[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m\\[39m[38;5;203m [39m[38;5;203m'[39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m'[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m`[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m\\[39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m/[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m/[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m/[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m\\[39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m'[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m\\[39m[38;5;203m [39m[38;5;203m[39m\n[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m\\[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m([39m[38;5;203m_[39m[38;5;203m)[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m/[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m/[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m\\[39m[38;5;203m_[39m[38;5;204m_[39m[38;5;204m [39m[38;5;204m\\[39m[38;5;204m_[39m[38;5;204m_[39m[38;5;204m [39m[38;5;204m\\[39m[38;5;198m [39m[38;5;198m|[39m[38;5;198m [39m[38;5;198m([39m[38;5;198m_[39m[38;5;198m)[39m[38;5;198m [39m[38;5;198m|[39m[38;5;198m [39m[38;5;198m|[39m[38;5;198m [39m[38;5;198m|[39m[38;5;198m [39m[38;5;198m|[39m[38;5;198m[39m\n[38;5;203m|[39m[38;5;203m_[39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m\\[39m[38;5;203m_[39m[38;5;203m|[39m[38;5;203m\\[39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m/[39m[38;5;203m [39m[38;5;204m [39m[38;5;204m|[39m[38;5;204m_[39m[38;5;204m|[39m[38;5;204m [39m[38;5;204m [39m[38;5;204m [39m[38;5;198m\\[39m[38;5;198m_[39m[38;5;198m_[39m[38;5;198m_[39m[38;5;198m|[39m[38;5;198m_[39m[38;5;198m|[39m[38;5;198m [39m[38;5;198m [39m[38;5;198m|[39m[38;5;198m_[39m[38;5;198m|[39m[38;5;198m [39m[38;5;198m|[39m[38;5;198m_[39m[38;5;198m|[39m[38;5;198m [39m[38;5;198m|[39m[38;5;198m_[39m[38;5;198m|[39m[38;5;198m_[39m[38;5;198m|[39m[38;5;198m_[39m[38;5;198m_[39m[38;5;198m_[39m[38;5;198m/[39m[38;5;198m_[39m[38;5;198m_[39m[38;5;198m_[39m[38;5;198m/[39m[38;5;198m_[39m[38;5;198m|[39m[38;5;198m\\[39m[38;5;198m_[39m[38;5;198m_[39m[38;5;198m_[39m[38;5;198m/[39m[38;5;198m|[39m[38;5;198m_[39m[38;5;198m|[39m[38;5;198m [39m[38;5;198m|[39m[38;5;198m_[39m[38;5;198m|[39m[38;5;198m[39m\n[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m[39m\n[m[?25h[?1;5;2004l")
            coromega:success_out("你通过可以进群：870300327，找群主获取使用权限")
            error("远程github插件验证不通过，您没有权限使用该插件")
        end
        if first_check_online then
            coromega:success_out("远程github插件验证通过，你可以正常使用该插件")
            first_check_online = false
        end
        coromega:sleep(1)
    end
end)
local packing_coordinate = {x = config["打包平台"][1], y = config["打包平台"][2], z = config["打包平台"][3]}
local store_db_name = config["商品数据库名称"] -- 数据库的名称
local store_db = omega.storage.get_kv_db(store_db_name) -- 获取数据库
local player_db_name = config["玩家数据库名称"] -- 数据库的名称
local player_db = omega.storage.get_kv_db(player_db_name) -- 获取数据库
local sell_db_name = config["售出数据库名称"] -- 数据库的名称
local sell_db  = omega.storage.get_kv_db(sell_db_name) -- 获取数据库
local overdue_db_name = config["超时数据库名称"] -- 数据库的名称
local overdue_db  = omega.storage.get_kv_db(overdue_db_name) -- 获取数据库
local comment_db_name = config["评论数据库名称"] -- 数据库的名称
local comment_db  = omega.storage.get_kv_db(comment_db_name) -- 获取数据库
if store_db:get("id") == "" then
    store_db:set("id","0")
end
-- 如果你需要调试请将下面一段解除注释，关于调试的方法请参考文档
-- local dbg = require('emmy_core')
-- dbg.tcpConnect('localhost', 9966)
-- print("waiting...")
-- for i=1,1000 do -- 调试器需要一些时间来建立连接并交换所有信息
--     -- 如果始终无法命中断点，你可以尝试将 1000 改的更大
--     print(".")
-- end
-- print("end")
local json = require("json")

-- 附魔ID翻译表
local enchantments = {
    ["0"] = "保护",
    ["1"] = "火焰保护",
    ["2"] = "摔落缓冲",
    ["3"] = "爆炸保护",
    ["4"] = "弹射物保护",
    ["5"] = "荆棘",
    ["6"] = "水下呼吸",
    ["7"] = "深海探索者",
    ["8"] = "水下速掘",
    ["9"] = "锋利",
    ["10"] = "亡灵杀手",
    ["11"] = "节肢杀手",
    ["12"] = "击退",
    ["13"] = "火焰附加",
    ["14"] = "抢夺",
    ["15"] = "效率",
    ["16"] = "精准采集",
    ["17"] = "耐久",
    ["18"] = "时运",
    ["19"] = "力量",
    ["20"] = "冲击",
    ["21"] = "火矢",
    ["22"] = "无限",
    ["23"] = "海之眷顾",
    ["24"] = "饵钓",
    ["25"] = "冰霜行者",
    ["26"] = "经验修补",
    ["27"] = "绑定诅咒",
    ["28"] = "消失诅咒",
    ["29"] = "穿刺",
    ["30"] = "激流",
    ["31"] = "忠诚",
    ["32"] = "引雷",
    ["33"] = "多重射击",
    ["34"] = "穿透",
    ["35"] = "快速装填",
    ["36"] = "灵魂疾行",
    ["37"] = "迅捷潜行"
}
local potions = {
    ["0"] = {"水瓶", 0},
    ["1"] = {"平凡的", 0},
    ["2"] = {"平凡的", 1},
    ["3"] = {"浓稠的", 0},
    ["4"] = {"粗制的", 0},
    ["5"] = {"夜视", 0},
    ["6"] = {"夜视", 1},
    ["7"] = {"隐身", 0},
    ["8"] = {"隐身", 1},
    ["9"] = {"跳跃", 0},
    ["10"] = {"跳跃", 1},
    ["11"] = {"跳跃", 2},
    ["12"] = {"抗火", 0},
    ["13"] = {"抗火", 1},
    ["14"] = {"迅捷", 0},
    ["15"] = {"迅捷", 1},
    ["16"] = {"迅捷", 2},
    ["17"] = {"迟缓", 0},
    ["18"] = {"迟缓", 1},
    ["42"] = {"迟缓", 2},
    ["19"] = {"水肺", 0},
    ["20"] = {"水肺", 1},
    ["21"] = {"瞬间治疗", 0},
    ["22"] = {"瞬间治疗", 2},
    ["23"] = {"瞬间伤害", 0},
    ["24"] = {"瞬间伤害", 2},
    ["25"] = {"剧毒", 0},
    ["26"] = {"剧毒", 1},
    ["27"] = {"剧毒", 2},
    ["28"] = {"再生", 0},
    ["29"] = {"再生", 1},
    ["30"] = {"再生", 2},
    ["31"] = {"力量", 0},
    ["32"] = {"力量", 1},
    ["33"] = {"力量", 2},
    ["34"] = {"虚弱", 0},
    ["35"] = {"虚弱", 1},
    ["36"] = {"衰变", 0},
    ["37"] = {"神龟", 0},
    ["38"] = {"神龟", 1},
    ["39"] = {"神龟", 2},
    ["40"] = {"缓降", 0},
    ["41"] = {"缓降", 1}
}
function generate_and_return_indexed_value(a, b, c)
    -- 确保第二个数字b是最大值，第三个数字c是总和
    local list = {}
    local quotient = math.floor(c / b) -- 计算商
    local remainder = c % b             -- 计算余数

    -- 根据商和余数填充列表
    for i = 1, quotient do
        table.insert(list, b)
    end
    if remainder > 0 then
        table.insert(list, remainder)
    end

    -- 确保a是有效的索引
    if a < 1 or a > #list then
        return 0
    end

    -- 返回列表中索引为a的值
    return list[a]
end

function get_potion_type(effect_id)
--    coromega:print(effect_id)
    local potion = potions[tostring(effect_id)]
--    coromega:print(json.encode(potion))
    if potion then
        return potion
    else
        return {"未知",0}
    end
end

-- 翻译物品名称
local function translate_item_name(name)
    return coromega:translate(name)
end
local indent_str = config["物品展示时的缩进"]

-- 翻译附魔信息
local function translate_enchants(enchants,indent,transverse)
    local translated_enchants = ""
    --coromega:print(transverse)
--    if transverse then
  --      translated_enchants = " "
    --end
    for id, level in pairs(enchants) do
        if transverse then
            translated_enchants = translated_enchants .. "§u" .. enchantments[id] .. "§blv." .. tonumber(level) .. " "
        else
            translated_enchants = translated_enchants .. "\n§u" .. string.rep(indent_str, indent + 1) .. enchantments[id] .. "§blv." .. tonumber(level)
        end
    end
    return translated_enchants
end
-- 递归翻译NBT信息
local function translate_nbt(nbt, indent, enchants_transverse)
    local result = ""
    local id = nbt.item.name
    if nbt.item.block_bedrock_state_string and nbt.item.block_bedrock_state_string ~= "[]" then
        local block_bedrock_state = json.decode(nbt.item.block_bedrock_state_string:gsub("%[","{"):gsub("%]","}"):gsub("=",":"))
        
        if block_bedrock_state["color"] then
            if block_bedrock_state["color"] == "silver" then block_bedrock_state["color"] = "light_gray" end
            nbt.item.name = block_bedrock_state["color"].."_"..nbt.item.name
        end
        
        if block_bedrock_state["wood_type"] then
            nbt.item.name = block_bedrock_state["wood_type"] .. "_" ..nbt.item.name
        end
        
        if block_bedrock_state["old_leaf_type"] then
            nbt.item.name = block_bedrock_state["old_leaf_type"] .. "_" .. nbt.item.name
        end
        
        if block_bedrock_state["double_plant_type"] then
            nbt.item.name = block_bedrock_state["double_plant_type"]
        end
        
        if block_bedrock_state["flower_type"] then
            if block_bedrock_state["flower_type"] == "orchid" then nbt.item.name = "blue_orchid" end
        end
    end
    
    if nbt.item.name == "minecraft:rabbit" then nbt.item.name = "生兔肉" end
    
    if nbt.item.name == "coral_block" then
        local coral_blocks = {
            "脑纹珊瑚块",
            "气泡珊瑚块",
            "火珊瑚块",
            "鹿角珊瑚块",
            "管珊瑚块",
            "失活的脑纹珊瑚块",
            "失活的气泡珊瑚块",
            "失活的火珊瑚块",
            "失活的鹿角珊瑚块",
            "失活的管珊瑚块"
        }
        
        nbt.item.name = coral_blocks[nbt.item.val]
    end
    
    if nbt.item.name == "monster_egg" then
        -- 定义包含中文台阶名称的字符串
        local step_string = "虫蚀石头/虫蚀圆石/虫蚀石砖/虫蚀苔石砖/虫蚀裂纹石砖/虫蚀雕纹石砖"
        
        -- 使用正则表达式分割字符串，并将每个台阶名称添加到列表中
        local step_list = {}
        for step in step_string:gmatch("[^/]+") do
            table.insert(step_list, step)
        end
        
        if nbt.item.val > 0 and nbt.item.val <= #step_list then
            nbt.item.name = step_list[nbt.item.val]
        else
            nbt.item.name = "未知虫蚀方块"
        end
    end
    
    if nbt.item.name == "stone_block_slab2" then
        -- 定义包含中文台阶名称的字符串
        local step_string = "红砂岩台阶/紫珀台阶/海晶石台阶/暗海晶石台阶/海晶石砖台阶/苔石台阶/平滑砂岩台阶/红色下界砖台阶"
        
        -- 使用正则表达式分割字符串，并将每个台阶名称添加到列表中
        local step_list = {}
        for step in step_string:gmatch("[^/]+") do
            table.insert(step_list, step)
        end
        
        if nbt.item.val > 0 and nbt.item.val <= #step_list then
            nbt.item.name = step_list[nbt.item.val]
        else
            nbt.item.name = "未知台阶"
        end
    end
    
    if nbt.item.name == "cobblestone_wall" then
        -- 定义包含中文台阶名称的字符串
        local step_string = "圆石墙/苔石墙/花岗岩墙/闪长岩墙/安山岩墙/砂岩墙/红砖墙/石砖墙/苔石砖墙/末地石砖墙/下界砖墙/海晶石墙/红砂岩墙/红色下界砖墙"
        
        -- 使用正则表达式分割字符串，并将每个台阶名称添加到列表中
        local step_list = {}
        for step in step_string:gmatch("[^/]+") do
            table.insert(step_list, step)
        end
        
        if nbt.item.val > 0 and nbt.item.val <= #step_list then
            nbt.item.name = step_list[nbt.item.val]
        else
            nbt.item.name = "未知墙"
        end
    end
    
    if nbt.item.name == "minecraft:potion" or nbt.item.name == "minecraft:splash_potion" or nbt.item.name == "minecraft:lingering_potion" then
        local potion_type = get_potion_type(tostring(nbt.item.val))
        if potion_type[2] == 1 then
            nbt.item.name = "延长的" .. potion_type[1] .. translate_item_name(nbt.item.name)
        elseif potion_type[2] == 2 then
            nbt.item.name = "加强的" .. potion_type[1] .. translate_item_name(nbt.item.name)
        else
            nbt.item.name = potion_type[1] .. translate_item_name(nbt.item.name)
        end
    end
    
    if nbt.item.name == "end_gateway" then nbt.item.name = "折跃门" end
    
    result = result .. string.rep(indent_str, indent) .. "§6" .. translate_item_name(nbt.item.name) .. "§b" .. tostring(nbt.count) .. "§6个"
    if not nbt.item.is_block and id ~= "minecraft:potion" and id ~= "minecraft:splash_potion" and id ~= "minecraft:lingering_potion" then result = result .. " §6使用§b".. tostring(nbt.item.val) .."§6次" end
    if nbt.item.enchants then result = result .. " §d附魔: " .. translate_enchants(nbt.item.enchants,indent,enchants_transverse) end
    if nbt.item.display_name then result = result .. "\n" .. string.rep(indent_str, indent) .. "§q被命名为: §b§o" .. nbt.item.display_name .. "§r" end
    result = result .. "\n"
    for key, value in pairs(nbt.item) do
        if type(value) == "table" then
            if key == "complex_block_data" then
                result = result .. string.rep(indent_str, indent) .. "§6物品列表:\n"
                for slot, item in pairs(value.container) do
                    result = result .. string.rep(indent_str, indent + 1) .. "§g格子: §b" .. tostring(slot+1) .. "§r\n"
                    result = result .. translate_nbt(item, indent + 2, enchants_transverse)
                    
                end
            end
        end
    end
    return result
end
-- 输出翻译后的NBT信息
function translate(nbt)
    return translate_nbt(json.decode(nbt),0,config["展示物品时附魔信息是否横着"])
end
function seconds_to_dhms(seconds)
    local days = math.floor(seconds / (60 * 60 * 24))
    seconds = seconds % (60 * 60 * 24)
    
    local hours = math.floor(seconds / (60 * 60))
    seconds = seconds % (60 * 60)
    
    local minutes = math.floor(seconds / 60)
    seconds = seconds % 60
    
    return string.format("%d天%d时%d分%d秒", days, hours, minutes, seconds)
end
coromega:start_new(function()
    while true do
        coromega:sleep(config["检查物品到期间隔"])
        local now = os.time()
        local sell_items = {}
        local overdue_list = {}
        store_db:iter(function(key, value)
            if key~="id" then
                local sell_item = json.decode(value)
                if sell_item["售卖时间"]+sell_item["售卖时长"] < now then
                    table.insert(overdue_list,json.decode(value))
                end
            end
            return true
        end)
        for _, overdue_item in ipairs(overdue_list) do
            local seller = coromega:get_player_by_uuid_string(overdue_item["卖家UUID"])
            if seller and seller:is_online() then
                for _, command in ipairs(config["物品过期时的退钱指令"]) do
                    coromega:send_wo_cmd(command:gsub("%[player%]",tostring(seller:name())):gsub("%[价格%]",tostring(overdue_item["商品价格"])):gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[商品%]",overdue_item["商品名字"]))
                end
                coromega:send_wo_cmd(('execute at %s run structure load "%s" ~-2~~-2 0_degrees none true false'):format(tostring(seller:name()),overdue_item["结构名字"]))
                coromega:send_wo_cmd(('structure delete "%s"'):format(overdue_item["结构名字"]))
            else
                local overdue = json.decode(overdue_db:get(overdue_item["卖家UUID"]))
                table.insert(overdue["超时商品"],
                    {
                        ["商品名字"] = overdue_item["商品名字"],
                        ["实际收益"] = overdue_item["实际收益"],
                        ["商品价格"] = overdue_item["商品价格"],
                        ["结构名字"] = overdue_item["结构名字"]
                    }
                )
                overdue_db:set(overdue_item["卖家UUID"],json.encode(overdue))
            end
            store_db:delete(tostring(overdue_item["商品编号"]))
        end
    end
end)

coromega:when_player_change():start_new(function(player, action)
    if action == "online" then
        coromega:sleep(config["登录时延迟发送"])
                
        local uuid = player:uuid_string()
        local sells = sell_db:get(uuid)
        -- coromega:print(sells)
        if sells ~= "" then
            sells = json.decode(sells)
            if sells["售出商品"] and #sells["售出商品"] ~= 0 then
                -- coromega:print("卖")
                for _, sell in ipairs(sells["售出商品"]) do
                    for _, command in ipairs(config["成功售出时的加钱指令"]) do
                        coromega:send_wo_cmd(command:gsub("%[购买者%]",sell["购买者"]):gsub("%[出售者%]",tostring(player:name())):gsub("%[价格%]",tostring(sell["商品价格"])):gsub("%[所得税%]",tostring(sell["商品价格"]-sell["实际收益"])):gsub("%[实际收益%]",tostring(sell["实际收益"])):gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[商品%]",sell["商品名字"]))
                    end
                end
                sells["售出商品"] = {}
                sell_db:set(uuid,json.encode(sells))
            end
        end
        
        local overdues = overdue_db:get(uuid)
        -- coromega:print(overdues)
        if overdues ~= "" then
            overdues = json.decode(overdues)
            if overdues["超时商品"] and #overdues["超时商品"] ~= 0 then
                -- coromega:print("超时")
                for _, overdue_item in ipairs(overdues["超时商品"]) do
                    for _, command in ipairs(config["成功售出时的加钱指令"]) do
                        coromega:send_wo_cmd(command:gsub("%[player%]",tostring(player:name())):gsub("%[价格%]",tostring(overdue_item["商品价格"])):gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[商品%]",overdue_item["商品名字"]))
                    end
                    coromega:send_wo_cmd(('execute at %s run structure load "%s" ~-2~~-2 0_degrees none true false'):format(tostring(player:name()),overdue_item["结构名字"]))
                    coromega:send_wo_cmd(('structure delete "%s"'):format(overdue_item["结构名字"]))
                end
                overdues["超时商品"] = {}
                overdue_db:set(uuid,json.encode(overdues))
            end
        end
        local comments = comment_db:get(uuid)
        -- coromega:print(comments)
        if comments ~= "" then
            comments = json.decode(comments)
            if comments["评论消息"] and #comments["评论消息"] ~= 0 then
                -- coromega:print("评论")
                for _, comment in ipairs(comments["评论消息"]) do
                    player:say(config["收到评论模板"]:gsub("%[评论者%]",comment["评论者"]):gsub("%[评论内容%]",comment["评论内容"]))
                end
                comments["评论消息"] = {}
                comment_db:set(uuid,json.encode(comments))
            end
        end
    end
end)


coromega:when_called_by_game_menu({
    triggers = config["注册触发词"],
    argument_hint = "[无]",
    usage = config["注册提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    if player_db:get(player_uuid) ~= "" then
        player:say(config["重复注册时提示"])
        return
    end
    local currency = tonumber(coromega:send_ws_cmd(("scoreboard players test %s %s * *"):format(chat.name,config["货币"]["记分板名"]),true)["OutputMessages"][1]["Parameters"][1]) or 0
    if currency < config["注册小店所需费用"] then
        player:say(config["注册费用不足时提示"]:gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[货币数量%]",tostring(currency)):gsub("%[所需费用%]",tostring(config["注册小店所需费用"])))
        return
    end
    coromega:send_wo_cmd(("scoreboard players remove %s %s %d"):format(chat.name,config["货币"]["记分板名"],config["注册小店所需费用"]))
    local signature = player:ask(config["请求输入签名文本"])
    player_db:set(player_uuid,json.encode({["售卖商品数"] = 0,["黑名单"] = {},["优惠玩家"] = {},["个性签名"] = signature,["点赞数"] = 0,["点踩数"] = 0,["点赞玩家"] = {},["点踩玩家"] = {},["评论数"] = 0,["评论"] = {}}))
    sell_db:set(player_uuid,json.encode({["售出商品"] = {}}))
    overdue_db:set(player_uuid,json.encode({["超时商品"] = {}}))
    comment_db:set(player_uuid,json.encode({["评论消息"] = {}}))
    player:say(config["注册成功时提示"])
end)

coromega:when_called_by_game_menu({
    triggers = config["售卖触发词"],
    argument_hint = "[无]",
    usage = config["售卖提示信息"],
})
:start_new(function(chat)
    local err = coromega:select_hotbar(0)
    local player = coromega:get_player_by_name(chat.name)
    if player_db:get(player:uuid_string()) == "" then
        player:say(config["未注册小店时提示"])
        return
    end
    if sell_db:get(player:uuid_string()) == "" then sell_db:set(player:uuid_string(),json.encode({["售出商品"] = {}})) end
    if overdue_db:get(player:uuid_string()) == "" then overdue_db:set(player:uuid_string(),json.encode({["超时商品"] = {}})) end
    if comment_db:get(player:uuid_string()) == "" then comment_db:set(player:uuid_string(),json.encode({["评论消息"] = {}})) end
    local input = chat.msg
    for _, command in ipairs(config["打开售卖菜单前执行的指令"]) do
        coromega:send_wo_cmd(command:gsub("%[player%]",chat.name))
    end
    
    -- 判定条件是否满足
    if not coromega:send_ws_cmd("querytarget "..(config["售卖条件选择器"]):gsub("%[player%]",chat.name),true)["OutputMessages"][1]["Success"] then
        for _, command in ipairs(config["没有售卖权限时执行的指令"]) do
            coromega:send_wo_cmd(command:gsub("%[player%]",chat.name))
        end
        return
    end
    
    -- 判定是否可以售卖
    if selling then
        for _, command in ipairs(config["售卖被占用的指令"]) do
            coromega:send_wo_cmd(command:gsub("%[player%]",chat.name):gsub("%[占用玩家%]",selling_player_name))
        end
        return
    end
    for _, command in ipairs(config["售卖指导指令"]) do
        coromega:send_wo_cmd(command:gsub("%[player%]",chat.name))
    end
    selling = true
    selling_player_name = chat.name
    local confirm_selling = false
    id = math.random(1,100)
    coromega:start_new(function()
        local old_id = id
        coromega:sleep(config["售卖超时秒数"])
        if id ~= old_id then
            return
        end
        if confirm_selling then
            return
        end
        for _, command in ipairs(config["售卖超时指令"]) do
            coromega:send_wo_cmd(command:gsub("%[player%]",selling_player_name))
        end
        coromega:send_wo_cmd(("execute as %s run tell %s 取消"):format(selling_player_name, bot_name))
        selling_player_name = ""
        selling = false
    end)
    local selling_name = player:ask(config["请求玩家输入物品名文本"])
    if selling_name == "取消" then
        player:say(config["退出售卖文本"])
        selling_player_name = ""
        selling = false
        return
    end
    local selling_price = player:ask(config["请求玩家输入价格文本"])
    if selling_price == "取消" or not tonumber(selling_price) or tonumber(selling_price) <= 0 or tonumber(selling_price) % 1 ~= 0 then
        player:say(config["退出售卖文本"])
        selling_player_name = ""
        selling = false
        return
    end
    selling_price = math.floor(tonumber(selling_price))
    if player:ask(config["确认售出的文本"]) == "取消" then
        player:say(config["退出售卖文本"])
        selling_player_name = ""
        selling = false
        return
    end
    confirm_selling = true
    local pos = player:get_pos().position
    coromega:send_ws_cmd(('tp "%s" "%s"'):format(bot_name,chat.name),true)
    local selling_item_quantity = coromega:send_ws_cmd(("testfor @e[type=item,x=%d,y=%d,z=%d,r=3]"):format(pos.x,pos.y,pos.z),true)
    selling_item_quantity=selling_item_quantity["SuccessCount"]
    if selling_item_quantity == 0 then
        for _, command in ipairs(config["没有售卖物品的指令"]) do
            coromega:send_wo_cmd(command:gsub("%[player%]",chat.name))
        end
        selling_player_name = ""
        selling = false
        return
    end
    coromega:send_ws_cmd(("tp %s %d %d %d"):format(bot_name,packing_coordinate.x,packing_coordinate.y + 5,packing_coordinate.z),true)
    coromega:send_wo_cmd(("fill %d %d %d %d %d %d glass"):format(packing_coordinate.x - 2, packing_coordinate.y - 1, packing_coordinate.z - 2, packing_coordinate.x + 2, packing_coordinate.y - 1, packing_coordinate.z + 2))
    coromega:send_ws_cmd(("kill @e[type=item,x=%d,y=%d,z=%d,r=3]"):format(packing_coordinate.x,packing_coordinate.y,packing_coordinate.z),true)
    coromega:send_ws_cmd(config["物品转移器"]:gsub("%[player%]",chat.name):gsub("%[打包x%]",tostring(packing_coordinate.x)):gsub("%[打包y%]",tostring(packing_coordinate.y)):gsub("%[打包z%]",tostring(packing_coordinate.z)),true)
    player:say(config["等待售卖的文本"])
    local item_info = {}
    local structure_id = tonumber(store_db:get("id")) + 1
    store_db:set("id",tostring(structure_id))
    coromega:send_wo_cmd(('structure save "%s%d" %d %d %d %d %d %d true disk false'):format(config["结构方块前导名"], tostring(structure_id), packing_coordinate.x - 2, packing_coordinate.y, packing_coordinate.z - 2, packing_coordinate.x + 2, packing_coordinate.y, packing_coordinate.z + 2))
    local batch = selling_item_quantity
    if config["是否强制使用整个背包进行转移物品"] then
        batch = math.floor(math.floor((selling_item_quantity / 27)*-1)*-1)
    end
    for i = 1, batch do
        coromega:send_wo_cmd(("fill %d %d %d %d %d %d barrel"):format(packing_coordinate.x,packing_coordinate.y+4,packing_coordinate.z,packing_coordinate.x,packing_coordinate.y+4,packing_coordinate.z))
        player:say(config["显示售卖进度的模板"]:gsub("%[序号%]",tostring(i)):gsub("%[批数%]",tostring(batch)):gsub("%[总共%]",tostring(selling_item_quantity)))
        if config["是否强制使用整个背包进行转移物品"] then
            coromega:send_wo_cmd(("clear %s"):format(bot_name))
        else
            coromega:send_wo_cmd(("replaceitem entity %s slot.hotbar 0 air"):format(bot_name))
        end
        coromega:send_wo_cmd(("kill @e[type=item,x=%d,y=%d,z=%d,dy=2]"):format(packing_coordinate.x,packing_coordinate.y + 5,packing_coordinate.z))
        coromega:send_wo_cmd(("tp %s %d %d %d"):format(bot_name,packing_coordinate.x,packing_coordinate.y + 5,packing_coordinate.z))
        if config["是否强制使用整个背包进行转移物品"] then
            coromega:send_wo_cmd(('execute as "%s" at @s run tp @e[type=item,c=27,x=%d,y=%d,z=%d,r=3] ~~~'):format(bot_name,packing_coordinate.x,packing_coordinate.y,packing_coordinate.z))
        else
            coromega:send_wo_cmd(('execute as "%s" at @s run tp @e[type=item,c=1,x=%d,y=%d,z=%d,r=3] ~~~'):format(bot_name,packing_coordinate.x,packing_coordinate.y,packing_coordinate.z))
        end
        while true do
            coromega:sleep(0.1)
            if not coromega:send_ws_cmd("replaceitem entity @s slot.hotbar 0 keep air",true)["OutputMessages"][1]["Success"] then
                break
            end
        end
        
        local move_operations = {}
        if config["是否强制使用整个背包进行转移物品"] then
            local quantity = generate_and_return_indexed_value(i,27,selling_item_quantity)-1
            for q=0, quantity do
                move_operations[q]=q
            end
        else
            move_operations={
                [0] = 0    -- 0号快捷栏移动到容器第1格
            }
        end
        
        local err = coromega:move_item_to_container({x=packing_coordinate.x,y=packing_coordinate.y+4,z=packing_coordinate.z}, move_operations)
        local canvas = coromega:request_structure({x=packing_coordinate.x,y=packing_coordinate.y+4,z=packing_coordinate.z},{x=1,y=1,z=1},true)
        local block_runtime_id,nbt,found = canvas:block_with_nbt({x=packing_coordinate.x,y=packing_coordinate.y+4,z=packing_coordinate.z})
        local supported_json_str,aux_info,support_type=nbt:to_supported_json(block_runtime_id)
        for slots, one_item_info in pairs(json.decode(supported_json_str)) do
            one_item_info = json.encode(one_item_info)
            if config["售卖时是否显示物品信息"] then
                player:say(translate(one_item_info))
            end
            table.insert(item_info,one_item_info)
       end
    end
    local income_tax = math.floor(selling_price * config["所得税"])
    local actual_income = selling_price - income_tax
    for _, command in ipairs(config["放入玩家商店时的指令"]) do
        coromega:send_wo_cmd(command:gsub("%[player%]",chat.name):gsub("%[价格%]",tostring(selling_price)):gsub("%[货币名%]",config["货币"]["货币名"]):gsub("%[货币计分板名%]",config["货币"]["记分板名"]):gsub("%[所得税%]",tostring(income_tax)):gsub("%[实际收益%]",tostring(actual_income)):gsub("%[商品%]",selling_name))
    end
    local sell_data = {
        ["卖家UUID"] = player:uuid_string(),
        ["卖家名字"] = chat.name,
        ["商品价格"] = selling_price,
        ["售卖时间"] = os.time(),
        ["售卖时长"] = config["售卖物品超时秒数"],
        ["实际收益"] = actual_income,
        ["商品名字"] = selling_name,
        ["商品内容"] = item_info,
        ["商品编号"] = structure_id,
        ["结构名字"] = config["结构方块前导名"]..tostring(structure_id)
    }
    store_db:set(tostring(structure_id),json.encode(sell_data))
    selling_player_name = ""
    selling = false
    local player_info = json.decode(player_db:get(player:uuid_string()))
    player_info["售卖商品数"] = player_info["售卖商品数"] + 1
    player_db:set(player:uuid_string(),json.encode(player_info))
end)

coromega:when_called_by_game_menu({
    triggers = config["购买触发词"],
    argument_hint = "[无]",
    usage = config["购买提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()    
--    for index, commodity in ipairs(list) do
--        player:say(config["物品渲染格式"]:gsub("%[I%]",tostring(index)):gsub("%[商品%]",commodity["商品名字"]):gsub("%[出售者%]",commodity["卖家名字"]):gsub("%[价格%]",tostring(commodity["商品价格"])):gsub("%[货币名%]",config["货币"]["货币名"]):gsub("%[货币计分板名%]",config["货币"]["记分板名"]))
--    end
--    local choose = player:ask("请输入编号选择：")
    local items_per_page = config["每页最多显示商品数"]
    local page = 1
    local shop_commodity
    while true do
        local list = {}
        store_db:iter(function(key, value)
            -- print(value)
            if key~="id" and not json.decode(player_db:get(json.decode(value)["卖家UUID"]))["黑名单"][player_uuid] then
                table.insert(list,json.decode(value))
            end
            return true
        end)
        local max_pages = math.ceil(#list / items_per_page)
        player:say(config["物品清单开头"])
        local start_index = (page - 1) * items_per_page + 1
        local end_index = math.min(page * items_per_page, #list)
        
        for index = start_index, end_index do
            local commodity = list[index]
            local formatted_string = config["物品渲染格式"]
                :gsub("%[I%]", tostring(index))
                :gsub("%[商品%]", commodity["商品名字"])
                :gsub("%[出售者%]", commodity["卖家名字"])
                :gsub("%[价格%]", tostring(commodity["商品价格"]))
                :gsub("%[货币名%]", config["货币"]["货币名"])
                :gsub("%[货币计分板名%]", config["货币"]["记分板名"])
                :gsub("%[到期剩余%]", seconds_to_dhms((commodity["售卖时间"]+commodity["售卖时长"])-os.time()))
            local discount = json.decode(player_db:get(commodity["卖家UUID"]))["优惠玩家"][player:uuid_string()]
            local discount_price = commodity["商品价格"]
            if discount then
                discount_price = math.floor(commodity["商品价格"] - ((discount / 100) * commodity["商品价格"]))
                formatted_string = formatted_string .. " " .. config["优惠渲染格式"]
                :gsub("%[优惠后价格%]", tostring(discount_price))
                :gsub("%[货币名%]", config["货币"]["货币名"])
                :gsub("%[货币计分板名%]", config["货币"]["记分板名"])
                :gsub("%[优惠百分比%]", tostring(discount))
            end
            list[index]["商品价格"] = discount_price
            list[index]["实际收益"] = math.floor(discount_price - math.floor(discount_price * config["所得税"]))
            player:say(formatted_string)
        end
        if page < max_pages then player:say(config["还有下一页时末尾"]) else player:say(config["物品清单结尾提示"]) end
        local choice = player:ask(config["输入时的提示"])
        
        if choice == "l" and page > 1 then
            page = page - 1
        elseif choice == "n" and page < max_pages then
            page = page + 1
        elseif tonumber(choice) and tonumber(choice) >= 1 and tonumber(choice) <= #list then
            player:say(config["显示物品内容提示"])
            -- 使用Lua的string.gmatch函数分割文本
            for index, one_item_info in ipairs(list[tonumber(choice)]["商品内容"]) do
                player:say(config["物品显示模板"]:gsub("%[编号%]",tostring(index)))
                local text = translate(one_item_info,"container_slot_data")
                for line in string.gmatch(text, "([^\n]+)") do
                    player:say(line)
                end
            end
            local confirm = player:ask(config["询问是否购买"])
            if confirm == "y" or confirm == "是" then
                shop_commodity = list[tonumber(choice)]
                break
            end
        elseif choice == "取消" then
            player:say(config["退出购买文本"])
            return
        else
            player:say(config["无效输入提示"])
        end
    end
    
    if store_db:get(shop_commodity["商品编号"]) == "" then
        player:say(config["物品失效时提示"])
        return
    end
    local currency = tonumber(coromega:send_ws_cmd(("scoreboard players test %s %s * *"):format(chat.name,config["货币"]["记分板名"]),true)["OutputMessages"][1]["Parameters"][1]) or 0
    if currency < shop_commodity["商品价格"] then
        player:say(config["货币不足时提示"]:gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[货币数量%]",tostring(currency)))
        return
    end
    coromega:send_wo_cmd(("scoreboard players remove %s %s %d"):format(chat.name,config["货币"]["记分板名"],shop_commodity["商品价格"]))
    coromega:send_wo_cmd(('execute at %s run structure load "%s" ~-2~~-2 0_degrees none true false'):format(chat.name,shop_commodity["结构名字"]))
    player:say(config["成功购买时提示"]:gsub("%[商品%]",shop_commodity["商品名字"]):gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[剩余金额%]",tostring(currency-shop_commodity["商品价格"])))
    coromega:send_wo_cmd(('structure delete "%s"'):format(shop_commodity["结构名字"]))
    store_db:delete(tostring(shop_commodity["商品编号"]))
    local seller = coromega:get_player_by_uuid_string(shop_commodity["卖家UUID"])
    if seller and seller:is_online() then
        for _, command in ipairs(config["成功售出时的加钱指令"]) do
            coromega:send_wo_cmd(command:gsub("%[购买者%]",chat.name):gsub("%[出售者%]",tostring(seller:name())):gsub("%[价格%]",tostring(shop_commodity["商品价格"])):gsub("%[所得税%]",tostring(shop_commodity["商品价格"]-shop_commodity["实际收益"])):gsub("%[实际收益%]",tostring(shop_commodity["实际收益"])):gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[商品%]",shop_commodity["商品名字"]))
        end
        return
    end
    local sell = json.decode(sell_db:get(shop_commodity["卖家UUID"]))
    table.insert(sell["售出商品"],
        {
            ["购买者"] = chat.name,
            ["商品名字"] = shop_commodity["商品名字"],
            ["实际收益"] = shop_commodity["实际收益"],
            ["商品价格"] = shop_commodity["商品价格"]
        }
    )
    sell_db:set(shop_commodity["卖家UUID"],json.encode(sell))
end)

coromega:when_called_by_game_menu({
    triggers = config["搜索购买触发词"],
    argument_hint = "[无]",
    usage = config["搜索购买提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
--    for index, commodity in ipairs(list) do
--        player:say(config["物品渲染格式"]:gsub("%[I%]",tostring(index)):gsub("%[商品%]",commodity["商品名字"]):gsub("%[出售者%]",commodity["卖家名字"]):gsub("%[价格%]",tostring(commodity["商品价格"])):gsub("%[货币名%]",config["货币"]["货币名"]):gsub("%[货币计分板名%]",config["货币"]["记分板名"]))
--    end
--    local choose = player:ask("请输入编号选择：")
    local items_per_page = config["每页最多显示商品数"]
    local page = 1
    local shop_commodity
    local keyword = player:ask(config["输入搜索商品关键词文本"])
    while true do
        local list = {}
        store_db:iter(function(key, value)
            if key~="id" and not json.decode(player_db:get(json.decode(value)["卖家UUID"]))["黑名单"][player_uuid] and json.decode(value)["商品名字"]:lower():find(keyword:lower()) then
                local commodity_info=json.decode(value)
                if chat.msg[1] and chat.msg[1] ~= "" then
                    if commodity_info["卖家名字"] == chat.msg[1] then
                        table.insert(list,commodity_info)
                    end
                else
                    table.insert(list,commodity_info)
                end
            end
            return true
        end)
        if #list < 0 then
            player:say(config["搜索不到商品时提示"])
            return
        end
        local max_pages = math.ceil(#list / items_per_page)
        player:say(config["物品清单开头"])
        local start_index = (page - 1) * items_per_page + 1
        local end_index = math.min(page * items_per_page, #list)
        
        for index = start_index, end_index do
            local commodity = list[index]
            local formatted_string = config["物品渲染格式"]
                :gsub("%[I%]", tostring(index))
                :gsub("%[商品%]", commodity["商品名字"])
                :gsub("%[出售者%]", commodity["卖家名字"])
                :gsub("%[价格%]", tostring(commodity["商品价格"]))
                :gsub("%[货币名%]", config["货币"]["货币名"])
                :gsub("%[货币计分板名%]", config["货币"]["记分板名"])
                :gsub("%[到期剩余%]", seconds_to_dhms((commodity["售卖时间"]+commodity["售卖时长"])-os.time()))
            local discount = json.decode(player_db:get(commodity["卖家UUID"]))["优惠玩家"][player:uuid_string()]
            local discount_price = commodity["商品价格"]
            if discount then
                discount_price = math.floor(commodity["商品价格"] - ((discount / 100) * commodity["商品价格"]))
                formatted_string = formatted_string .. " " .. config["优惠渲染格式"]
                :gsub("%[优惠后价格%]", tostring(discount_price))
                :gsub("%[货币名%]", config["货币"]["货币名"])
                :gsub("%[货币计分板名%]", config["货币"]["记分板名"])
                :gsub("%[优惠百分比%]", tostring(discount))
            end
            list[index]["商品价格"] = discount_price
            list[index]["实际收益"] = math.floor(discount_price - math.floor(discount_price * config["所得税"]))
            player:say(formatted_string)
        end
        if page < max_pages then player:say(config["还有下一页时末尾"]) else player:say(config["物品清单结尾提示"]) end
        local choice = player:ask(config["输入时的提示"])
        
        if choice == "l" and page > 1 then
            page = page - 1
        elseif choice == "n" and page < max_pages then
            page = page + 1
        elseif tonumber(choice) and tonumber(choice) >= 1 and tonumber(choice) <= #list then
            player:say(config["显示物品内容提示"])
            -- 使用Lua的string.gmatch函数分割文本
            for index, one_item_info in ipairs(list[tonumber(choice)]["商品内容"]) do
                player:say(config["物品显示模板"]:gsub("%[编号%]",tostring(index)))
                local text = translate(one_item_info,"container_slot_data")
                for line in string.gmatch(text, "([^\n]+)") do
                    player:say(line)
                end
            end
            local confirm = player:ask(config["询问是否购买"])
            if confirm == "y" or confirm == "是" then
                shop_commodity = list[tonumber(choice)]
                break
            end
        elseif choice == "取消" then
            player:say(config["退出购买文本"])
            return
        else
            player:say(config["无效输入提示"])
        end
    end
    if store_db:get(shop_commodity["商品编号"]) == "" then
        player:say(config["物品失效时提示"])
        return
    end
    local currency = tonumber(coromega:send_ws_cmd(("scoreboard players test %s %s * *"):format(chat.name,config["货币"]["记分板名"]),true)["OutputMessages"][1]["Parameters"][1]) or 0
    if currency < shop_commodity["商品价格"] then
        player:say(config["货币不足时提示"]:gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[货币数量%]",tostring(currency)))
        return
    end
    coromega:send_wo_cmd(("scoreboard players remove %s %s %d"):format(chat.name,config["货币"]["记分板名"],shop_commodity["商品价格"]))
    coromega:send_wo_cmd(('execute at %s run structure load "%s" ~-2~~-2 0_degrees none true false'):format(chat.name,shop_commodity["结构名字"]))
    player:say(config["成功购买时提示"]:gsub("%[商品%]",shop_commodity["商品名字"]):gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[剩余金额%]",tostring(currency-shop_commodity["商品价格"])))
    coromega:send_wo_cmd(('structure delete "%s"'):format(shop_commodity["结构名字"]))
    store_db:delete(tostring(shop_commodity["商品编号"]))
    local seller = coromega:get_player_by_uuid_string(shop_commodity["卖家UUID"])
    if seller and seller:is_online() then
        for _, command in ipairs(config["成功售出时的加钱指令"]) do
            coromega:send_wo_cmd(command:gsub("%[购买者%]",chat.name):gsub("%[出售者%]",tostring(seller:name())):gsub("%[价格%]",tostring(shop_commodity["商品价格"])):gsub("%[所得税%]",tostring(shop_commodity["商品价格"]-shop_commodity["实际收益"])):gsub("%[实际收益%]",tostring(shop_commodity["实际收益"])):gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[商品%]",shop_commodity["商品名字"]))
        end
        return
    end
    local sell = json.decode(sell_db:get(shop_commodity["卖家UUID"]))
    table.insert(sell["售出商品"],
        {
            ["购买者"] = chat.name,
            ["商品名字"] = shop_commodity["商品名字"],
            ["实际收益"] = shop_commodity["实际收益"],
            ["商品价格"] = shop_commodity["商品价格"]
        }
    )
    sell_db:set(shop_commodity["卖家UUID"],json.encode(sell))
end)

coromega:when_called_by_game_menu({
    triggers = config["小店购买触发词"],
    argument_hint = "[无]",
    usage = config["小店购买提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
--    for index, commodity in ipairs(list) do
--        player:say(config["物品渲染格式"]:gsub("%[I%]",tostring(index)):gsub("%[商品%]",commodity["商品名字"]):gsub("%[出售者%]",commodity["卖家名字"]):gsub("%[价格%]",tostring(commodity["商品价格"])):gsub("%[货币名%]",config["货币"]["货币名"]):gsub("%[货币计分板名%]",config["货币"]["记分板名"]))
--    end
--    local choose = player:ask("请输入编号选择：")
    local items_per_page = config["每页最多显示商品数"]
    local page = 1
    local shop_commodity
    local storekeeper = chat.msg[1]
    if not chat.msg[1] or chat.msg[1] == "" then
        storekeeper = player:ask(config["输入店主名字文本"])
    end
    while true do
        local list = {}
        store_db:iter(function(key, value)
            if key~="id" and not json.decode(player_db:get(json.decode(value)["卖家UUID"]))["黑名单"][player_uuid] then
                local commodity_info=json.decode(value)
                if commodity_info["卖家名字"] == storekeeper then
                    table.insert(list,commodity_info)
                end
            end
            return true
        end)
        if #list < 0 then
            player:say(config["店主没有售卖物品时提示"])
            return
        end
        local max_pages = math.ceil(#list / items_per_page)
        player:say(config["物品清单开头"])
        local start_index = (page - 1) * items_per_page + 1
        local end_index = math.min(page * items_per_page, #list)
        
        for index = start_index, end_index do
            local commodity = list[index]
            local formatted_string = config["物品渲染格式"]
                :gsub("%[I%]", tostring(index))
                :gsub("%[商品%]", commodity["商品名字"])
                :gsub("%[出售者%]", commodity["卖家名字"])
                :gsub("%[价格%]", tostring(commodity["商品价格"]))
                :gsub("%[货币名%]", config["货币"]["货币名"])
                :gsub("%[货币计分板名%]", config["货币"]["记分板名"])
                :gsub("%[到期剩余%]", seconds_to_dhms((commodity["售卖时间"]+commodity["售卖时长"])-os.time()))
            local discount = json.decode(player_db:get(commodity["卖家UUID"]))["优惠玩家"][player:uuid_string()]
            local discount_price = commodity["商品价格"]
            if discount then
                discount_price = math.floor(commodity["商品价格"] - ((discount / 100) * commodity["商品价格"]))
                formatted_string = formatted_string .. " " .. config["优惠渲染格式"]
                :gsub("%[优惠后价格%]", tostring(discount_price))
                :gsub("%[货币名%]", config["货币"]["货币名"])
                :gsub("%[货币计分板名%]", config["货币"]["记分板名"])
                :gsub("%[优惠百分比%]", tostring(discount))
            end
            list[index]["商品价格"] = discount_price
            list[index]["实际收益"] = math.floor(discount_price - math.floor(discount_price * config["所得税"]))
            player:say(formatted_string)
        end
        if page < max_pages then player:say(config["还有下一页时末尾"]) else player:say(config["物品清单结尾提示"]) end
        local choice = player:ask(config["输入时的提示"])
        
        if choice == "l" and page > 1 then
            page = page - 1
        elseif choice == "n" and page < max_pages then
            page = page + 1
        elseif tonumber(choice) and tonumber(choice) >= 1 and tonumber(choice) <= #list then
            player:say(config["显示物品内容提示"])
            -- 使用Lua的string.gmatch函数分割文本
            for index, one_item_info in ipairs(list[tonumber(choice)]["商品内容"]) do
                player:say(config["物品显示模板"]:gsub("%[编号%]",tostring(index)))
                local text = translate(one_item_info,"container_slot_data")
                for line in string.gmatch(text, "([^\n]+)") do
                    player:say(line)
                end
            end
            local confirm = player:ask(config["询问是否购买"])
            if confirm == "y" or confirm == "是" then
                shop_commodity = list[tonumber(choice)]
                break
            end
        elseif choice == "取消" then
            player:say(config["退出购买文本"])
            return
        else
            player:say(config["无效输入提示"])
        end
    end
    
    if store_db:get(shop_commodity["商品编号"]) == "" then
        player:say(config["物品失效时提示"])
        return
    end
    local currency = tonumber(coromega:send_ws_cmd(("scoreboard players test %s %s * *"):format(chat.name,config["货币"]["记分板名"]),true)["OutputMessages"][1]["Parameters"][1]) or 0
    if currency < shop_commodity["商品价格"] then
        player:say(config["货币不足时提示"]:gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[货币数量%]",tostring(currency)))
        return
    end
    coromega:send_wo_cmd(("scoreboard players remove %s %s %d"):format(chat.name,config["货币"]["记分板名"],shop_commodity["商品价格"]))
    coromega:send_wo_cmd(('execute at %s run structure load "%s" ~-2~~-2 0_degrees none true false'):format(chat.name,shop_commodity["结构名字"]))
    player:say(config["成功购买时提示"]:gsub("%[商品%]",shop_commodity["商品名字"]):gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[剩余金额%]",tostring(currency-shop_commodity["商品价格"])))
    coromega:send_wo_cmd(('structure delete "%s"'):format(shop_commodity["结构名字"]))
    store_db:delete(tostring(shop_commodity["商品编号"]))
    local seller = coromega:get_player_by_uuid_string(shop_commodity["卖家UUID"])
    if seller and seller:is_online() then
        for _, command in ipairs(config["成功售出时的加钱指令"]) do
            coromega:send_wo_cmd(command:gsub("%[购买者%]",chat.name):gsub("%[出售者%]",tostring(seller:name())):gsub("%[价格%]",tostring(shop_commodity["商品价格"])):gsub("%[所得税%]",tostring(shop_commodity["商品价格"]-shop_commodity["实际收益"])):gsub("%[实际收益%]",tostring(shop_commodity["实际收益"])):gsub("%[货币名%]", config["货币"]["货币名"]):gsub("%[货币计分板名%]", config["货币"]["记分板名"]):gsub("%[商品%]",shop_commodity["商品名字"]))
        end
        return
    end
    local sell = json.decode(sell_db:get(shop_commodity["卖家UUID"]))
    table.insert(sell["售出商品"],
        {
            ["购买者"] = chat.name,
            ["商品名字"] = shop_commodity["商品名字"],
            ["实际收益"] = shop_commodity["实际收益"],
            ["商品价格"] = shop_commodity["商品价格"]
        }
    )
    sell_db:set(shop_commodity["卖家UUID"],json.encode(sell))
end)

coromega:when_called_by_game_menu({
    triggers = config["拉黑触发词"],
    argument_hint = "[无]",
    usage = config["拉黑提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    if player_db:get(player_uuid) == "" then
        player:say(config["未注册小店时提示"])
        return
    end
    if sell_db:get(player:uuid_string()) == "" then sell_db:set(player:uuid_string(),json.encode({["售出商品"] = {}})) end
    if overdue_db:get(player:uuid_string()) == "" then overdue_db:set(player:uuid_string(),json.encode({["超时商品"] = {}})) end
    if comment_db:get(player:uuid_string()) == "" then comment_db:set(player:uuid_string(),json.encode({["评论消息"] = {}})) end
    local player_data = json.decode(player_db:get(player_uuid))
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid
    local keyword = player:ask(config["拉黑提示输入关键词"])
    local results = {}
    for k, v in pairs(players_data) do
        if v.current_name:lower():find(keyword:lower()) then
            table.insert(results, {key = k, name = v.current_name})
        end
    end
    
    local page = 1
    local items_per_page = config["拉黑每页最多显示玩家数"]
    local total_pages = math.ceil(#results / items_per_page)
    local target_player_uuid
    if #results > 0 then
        player:say(config["拉黑搜索到后提示"])
    else
        player:say(config["拉黑搜索不到提示"])
        return
    end
    
    while true do
        for i = (page - 1) * items_per_page + 1, math.min(page * items_per_page, #results) do
            player:say(config["拉黑玩家展示模板"]:gsub("%[I%]",tostring(i)):gsub("%[玩家名字%]",results[i].name))
        end
        player:say(config["拉黑玩家列表末尾提示"]:gsub("%[页码%]",tostring(page)):gsub("%[页数%]",tostring(total_pages)))
        local input = player:ask(config["拉黑请求输入文本"])
        
        if input == "l" and page > 1 then
            page = page - 1
        elseif input == "n" and page < total_pages then
            page = page + 1
        elseif input == "取消" then
            return
        else
            local index = tonumber(input)
            if index and index >= 1 and index <= #results then
                target_player_uuid = results[index].key
                break
            else
                player:say(config["无效输入提示"])
            end
        end
    end
    
    if player_data["黑名单"][target_player_uuid] then
        player:say(config["拉黑重复拉黑提示"])
        return
    end
    player:say(config["拉黑成功提示"])
    player_data["黑名单"][target_player_uuid] = true
    player_db:set(player_uuid,json.encode(player_data))
end)

coromega:when_called_by_game_menu({
    triggers = config["解除拉黑触发词"],
    argument_hint = "[无]",
    usage = config["解除拉黑提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    if player_db:get(player_uuid) == "" then
        player:say(config["未注册小店时提示"])
        return
    end
    if sell_db:get(player:uuid_string()) == "" then sell_db:set(player:uuid_string(),json.encode({["售出商品"] = {}})) end
    if overdue_db:get(player:uuid_string()) == "" then overdue_db:set(player:uuid_string(),json.encode({["超时商品"] = {}})) end
    if comment_db:get(player:uuid_string()) == "" then comment_db:set(player:uuid_string(),json.encode({["评论消息"] = {}})) end
    local player_data = json.decode(player_db:get(player_uuid))
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid
    local results = {}
    local items_per_page = config["拉黑每页最多显示玩家数"]
    local page = 1
    for u, _ in pairs(player_data["黑名单"]) do
        table.insert(results,{uuid = u, name = players_data[u]["current_name"]})
    end
    if #results > 0 then
        player:say(config["解除拉黑头文本"])
    else
        player:say(config["没有拉黑任何人提示"])
        return
    end
    local total_pages = math.ceil(#results / items_per_page)
    while true do
        for i = (page - 1) * items_per_page + 1, math.min(page * items_per_page, #results) do
            player:say(config["解除拉黑玩家展示模板"]:gsub("%[I%]",tostring(i)):gsub("%[玩家名字%]",results[i].name))
        end
        player:say(config["解除拉黑玩家列表末尾提示"]:gsub("%[页码%]",tostring(page)):gsub("%[页数%]",tostring(total_pages)))
        local input = player:ask(config["解除拉黑请求输入文本"])
        
        if input == "l" and page > 1 then
            page = page - 1
        elseif input == "n" and page < total_pages then
            page = page + 1
        elseif input == "取消" then
            return
        else
            local index = tonumber(input)
            if index and index >= 1 and index <= #results then
                target_player_uuid = results[index].uuid
                break
            else
                player:say(config["无效输入提示"])
            end
        end
    end
    
    player:say(config["解除拉黑成功提示"])
    player_data["黑名单"][target_player_uuid] = nil
    player_db:set(player_uuid,json.encode(player_data))
end)

coromega:when_called_by_game_menu({
    triggers = config["小店点赞触发词"],
    argument_hint = "[无]",
    usage = config["小店点赞提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid = ""
    local target_player_name = chat.msg[1]
    for uuid, player_data in pairs(players_data) do
        if target_player_name == player_data["current_name"] then
            target_player_uuid = uuid
            break
        end
    end
    local player_store_data = player_db:get(target_player_uuid)
    if not player_store_data or player_store_data == "" then
        player:say(config["小店不存在提示"])
        return
    end
    player_store_data = json.decode(player_store_data)
    if player_store_data["点踩玩家"][player_uuid] then
        player_store_data["点踩玩家"][player_uuid] = nil
        player_store_data["点踩数"] = player_store_data["点踩数"] - 1
    end
    player_store_data["点赞玩家"][player_uuid] = true
    player_store_data["点赞数"] = player_store_data["点赞数"] + 1
    player_db:set(target_player_uuid,json.encode(player_store_data))
    player:say(config["收到点赞提示"])
end)

coromega:when_called_by_game_menu({
    triggers = config["小店点踩触发词"],
    argument_hint = "[无]",
    usage = config["小店点踩提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid = ""
    local target_player_name = chat.msg[1]
    for uuid, player_data in pairs(players_data) do
        if target_player_name == player_data["current_name"] then
            target_player_uuid = uuid
            break
        end
    end
    local player_store_data = player_db:get(target_player_uuid)
    if not player_store_data or player_store_data == "" then
        player:say(config["小店不存在提示"])
        return
    end
    player_store_data = json.decode(player_store_data)
    if player_store_data["点赞玩家"][player_uuid] then
        player_store_data["点赞玩家"][player_uuid] = nil
        player_store_data["点赞数"] = player_store_data["点赞数"] - 1
    end
    player_store_data["点踩玩家"][player_uuid] = true
    player_store_data["点踩数"] = player_store_data["点踩数"] + 1
    player_db:set(target_player_uuid,json.encode(player_store_data))
    player:say(config["收到点踩提示"])
end)

coromega:when_called_by_game_menu({
    triggers = config["小店取消点赞触发词"],
    argument_hint = "[无]",
    usage = config["小店取消点赞提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid = ""
    local target_player_name = chat.msg[1]
    for uuid, player_data in pairs(players_data) do
        if target_player_name == player_data["current_name"] then
            target_player_uuid = uuid
            break
        end
    end
    local player_store_data = player_db:get(target_player_uuid)
    if not player_store_data or player_store_data == "" then
        player:say(config["小店不存在提示"])
        return
    end
    player_store_data = json.decode(player_store_data)
    player_store_data["点赞玩家"][player_uuid] = nil
    player_store_data["点赞数"] = player_store_data["点赞数"] - 1
    player_db:set(target_player_uuid,json.encode(player_store_data))
    player:say(config["取消点赞提示"])
end)

coromega:when_called_by_game_menu({
    triggers = config["小店取消点踩触发词"],
    argument_hint = "[无]",
    usage = config["小店取消点踩提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid = ""
    local target_player_name = chat.msg[1]
    for uuid, player_data in pairs(players_data) do
        if target_player_name == player_data["current_name"] then
            target_player_uuid = uuid
            break
        end
    end
    local player_store_data = player_db:get(target_player_uuid)
    if not player_store_data or player_store_data == "" then
        player:say(config["小店不存在提示"])
        return
    end
    player_store_data = json.decode(player_store_data)
    player_store_data["点踩玩家"][player_uuid] = nil
    player_store_data["点踩数"] = player_store_data["点踩数"] - 1
    player_db:set(target_player_uuid,json.encode(player_store_data))
    player:say(config["取消点踩提示"])
end)

coromega:when_called_by_game_menu({
    triggers = config["小店评论触发词"],
    argument_hint = "[无]",
    usage = config["小店评论提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid = ""
    local target_player_name = chat.msg[1]
    for uuid, player_data in pairs(players_data) do
        if target_player_name == player_data["current_name"] then
            target_player_uuid = uuid
            break
        end
    end
    local player_store_data = player_db:get(target_player_uuid)
    if not player_store_data or player_store_data == "" then
        player:say(config["小店不存在提示"])
        return
    end
    player_store_data = json.decode(player_store_data)
    if not player_store_data["评论"][player_uuid] then player_store_data["评论数"] = player_store_data["评论数"] + 1 end
    player_store_data["评论"][player_uuid] = player:ask(config["提示输入评论"])
    player_db:set(target_player_uuid,json.encode(player_store_data))
    player:say(config["发送评论提示"])
    local storekeeper = coromega:get_player_by_uuid_string(target_player_uuid)
    if storekeeper and storekeeper:is_online() then
        storekeeper:say(config["收到评论模板"]:gsub("%[评论者%]",tostring(player:name())):gsub("%[评论内容%]",player_store_data["评论"][player_uuid]))
        return
    end
    local comment_data = json.decode(comment_db:get(target_player_uuid))
    table.insert(comment_data["评论消息"],{["评论者"] = tostring(player:name()),["评论内容"] = player_store_data["评论"][player_uuid]})
    comment_db:set(target_player_uuid,json.encode(comment_data))
end)

coromega:when_called_by_game_menu({
    triggers = config["小店删除评论触发词"],
    argument_hint = "[无]",
    usage = config["小店删除评论提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid = ""
    local target_player_name = chat.msg[1]
    for uuid, player_data in pairs(players_data) do
        if target_player_name == player_data["current_name"] then
            target_player_uuid = uuid
            break
        end
    end
    local player_store_data = player_db:get(target_player_uuid)
    if not player_store_data or player_store_data == "" then
        player:say(config["小店不存在提示"])
        return
    end
    player_store_data = json.decode(player_store_data)
    if not player_store_data["评论"][player_uuid] then
        player:say(config["没有评论提示"])
        return
    end
    player_store_data["评论"][player_uuid] = nil
    player_store_data["评论数"] = player_store_data["评论数"] - 1
    player_db:set(target_player_uuid,json.encode(player_store_data))
    player:say(config["删除评论提示"])
end)

coromega:when_called_by_game_menu({
    triggers = config["小店信息触发词"],
    argument_hint = "[无]",
    usage = config["小店信息提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid = ""
    local target_player_name = chat.msg[1]
    if not chat.msg[1] or chat.msg[1] == "" then target_player_name = chat.name end
    for uuid, player_data in pairs(players_data) do
        if target_player_name == player_data["current_name"] then
            target_player_uuid = uuid
            break
        end
    end
    local player_store_data = player_db:get(target_player_uuid)
    if not player_store_data or player_store_data == "" then
        player:say(config["小店不存在提示"])
        return
    end
    player_store_data = json.decode(player_store_data)
    player:say(config["小店信息模板"]:gsub("%[店主名字%]",target_player_name):gsub("%[签名%]",player_store_data["个性签名"]):gsub("%[售卖商品数%]",tostring(player_store_data["售卖商品数"])):gsub("%[点赞数%]",tostring(player_store_data["点赞数"])):gsub("%[点踩数%]",tostring(player_store_data["点踩数"])):gsub("%[评论数%]",tostring(player_store_data["评论数"])))
end)

coromega:when_called_by_game_menu({
    triggers = config["小店查看评论触发词"],
    argument_hint = "[无]",
    usage = config["小店查看评论提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid = ""
    local target_player_name = chat.msg[1]
    for uuid, player_data in pairs(players_data) do
        if target_player_name == player_data["current_name"] then
            target_player_uuid = uuid
            break
        end
    end
    local player_store_data = player_db:get(target_player_uuid)
    if not player_store_data or player_store_data == "" then
        player:say(config["小店不存在提示"])
        return
    end
    player_store_data = json.decode(player_store_data)
    local results = {}
    for k, v in pairs(player_store_data["评论"]) do
        table.insert(results, {uuid = k, comment = v, name = players_data[k]["current_name"]})
    end
    
    local page = 1
    local items_per_page = config["评论每页最多显示玩家数"]
    local total_pages = math.ceil(#results / items_per_page)
    local target_player_uuid
    if #results > 0 then
        player:say(config["查看评论头文本"])
    else
        player:say(config["没有任何评论提示"])
        return
    end
    while true do
        for i = (page - 1) * items_per_page + 1, math.min(page * items_per_page, #results) do
            player:say(config["评论玩家展示模板"]:gsub("%[评论内容%]",tostring(results[i].comment)):gsub("%[玩家名字%]",results[i].name))
        end
        player:say(config["查看评论末尾提示"]:gsub("%[页码%]",tostring(page)):gsub("%[页数%]",tostring(total_pages)))
        local input = player:ask(config["查看评论请求输入文本"])
        
        if input == "l" and page > 1 then
            page = page - 1
        elseif input == "n" and page < total_pages then
            page = page + 1
        elseif input == "取消" then
            player:say(config["退出查看评论提示"])
            return
        else
            player:say(config["无效输入提示"])
        end
    end
end)


coromega:when_called_by_game_menu({
    triggers = config["小店添加优惠玩家触发词"],
    argument_hint = "[无]",
    usage = config["小店添加优惠玩家提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    if player_db:get(player_uuid) == "" then
        player:say(config["未注册小店时提示"])
        return
    end
    if sell_db:get(player:uuid_string()) == "" then sell_db:set(player:uuid_string(),json.encode({["售出商品"] = {}})) end
    if overdue_db:get(player:uuid_string()) == "" then overdue_db:set(player:uuid_string(),json.encode({["超时商品"] = {}})) end
    if comment_db:get(player:uuid_string()) == "" then comment_db:set(player:uuid_string(),json.encode({["评论消息"] = {}})) end
    local player_data = json.decode(player_db:get(player_uuid))
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid
    local keyword = player:ask(config["优惠提示输入关键词"])
    local results = {}
    for k, v in pairs(players_data) do
        if v.current_name:lower():find(keyword:lower()) then
            table.insert(results, {key = k, name = v.current_name})
        end
    end
    
    local page = 1
    local items_per_page = config["优惠每页最多显示玩家数"]
    local total_pages = math.ceil(#results / items_per_page)
    local target_player_uuid
    if #results > 0 then
        player:say(config["优惠搜索到后提示"])
    else
        player:say(config["优惠搜索不到提示"])
        return
    end
    
    while true do
        for i = (page - 1) * items_per_page + 1, math.min(page * items_per_page, #results) do
            player:say(config["优惠玩家展示模板"]:gsub("%[I%]",tostring(i)):gsub("%[玩家名字%]",results[i].name))
        end
        player:say(config["优惠玩家列表末尾提示"]:gsub("%[页码%]",tostring(page)):gsub("%[页数%]",tostring(total_pages)))
        local input = player:ask(config["优惠请求输入文本"])
        
        if input == "l" and page > 1 then
            page = page - 1
        elseif input == "n" and page < total_pages then
            page = page + 1
        elseif input == "取消" then
            return
        else
            local index = tonumber(input)
            if index and index >= 1 and index <= #results then
                target_player_uuid = results[index].key
                break
            else
                player:say(config["无效输入提示"])
            end
        end
    end
    local discount = player:ask(config["输入优惠百分比提示"])
    if not tonumber(discount) or tonumber(discount) % 1 ~= 0 or tonumber(discount)>100 then
        player:say(config["无效输入提示"])
        return
    end
    player:say(config["优惠成功提示"])
    player_data["优惠玩家"][target_player_uuid] = tonumber(discount)
    player_db:set(player_uuid,json.encode(player_data))
end)

coromega:when_called_by_game_menu({
    triggers = config["小店删除优惠玩家触发词"],
    argument_hint = "[无]",
    usage = config["小店删除优惠玩家拉黑提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    if player_db:get(player_uuid) == "" then
        player:say(config["未注册小店时提示"])
        return
    end
    if sell_db:get(player:uuid_string()) == "" then sell_db:set(player:uuid_string(),json.encode({["售出商品"] = {}})) end
    if overdue_db:get(player:uuid_string()) == "" then overdue_db:set(player:uuid_string(),json.encode({["超时商品"] = {}})) end
    if comment_db:get(player:uuid_string()) == "" then comment_db:set(player:uuid_string(),json.encode({["评论消息"] = {}})) end
    local player_data = json.decode(player_db:get(player_uuid))
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid
    local results = {}
    local items_per_page = config["删除优惠每页最多显示玩家数"]
    local page = 1
    for u, discount in pairs(player_data["优惠玩家"]) do
        table.insert(results,{uuid = u, name = players_data[u]["current_name"], discount = discount})
    end
    if #results > 0 then
        player:say(config["删除优惠头文本"])
    else
        player:say(config["没有优惠任何人提示"])
        return
    end
    local total_pages = math.ceil(#results / items_per_page)
    while true do
        for i = (page - 1) * items_per_page + 1, math.min(page * items_per_page, #results) do
            player:say(config["删除优惠玩家展示模板"]:gsub("%[I%]",tostring(i)):gsub("%[玩家名字%]",results[i].name):gsub("%[优惠百分比%]",tostring(results[i].discount)))
        end
        player:say(config["删除优惠玩家列表末尾提示"]:gsub("%[页码%]",tostring(page)):gsub("%[页数%]",tostring(total_pages)))
        local input = player:ask(config["删除优惠请求输入文本"])
        
        if input == "l" and page > 1 then
            page = page - 1
        elseif input == "n" and page < total_pages then
            page = page + 1
        elseif input == "取消" then
            return
        else
            local index = tonumber(input)
            if index and index >= 1 and index <= #results then
                target_player_uuid = results[index].uuid
                break
            else
                player:say(config["无效输入提示"])
            end
        end
    end
    
    player:say(config["删除优惠成功提示"])
    player_data["优惠玩家"][target_player_uuid] = nil
    player_db:set(player_uuid,json.encode(player_data))
end)

coromega:when_called_by_game_menu({
    triggers = config["小店搜索触发词"],
    argument_hint = "[无]",
    usage = config["小店搜索提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    if sell_db:get(player:uuid_string()) == "" then sell_db:set(player:uuid_string(),json.encode({["售出商品"] = {}})) end
    if overdue_db:get(player:uuid_string()) == "" then overdue_db:set(player:uuid_string(),json.encode({["超时商品"] = {}})) end
    if comment_db:get(player:uuid_string()) == "" then comment_db:set(player:uuid_string(),json.encode({["评论消息"] = {}})) end
    local player_data = json.decode(player_db:get(player_uuid))
    local players_data = coromega:load_data(coromega:data_path_of(config["改名历史.json在data文件夹中的文件名"]))
    local target_player_uuid
    local keyword = player:ask(config["输入店主名字关键词"])
    local results = {}
    for k, v in pairs(players_data) do
        if v.current_name:lower():find(keyword:lower()) and player_db:get(k) ~= "" then
            table.insert(results, {uuid = k, name = v.current_name})
        end
    end
    
    local page = 1
    local items_per_page = config["小店搜索每页最多显示店主数"]
    local total_pages = math.ceil(#results / items_per_page)
    local target_player_uuid
    local target_player_name
    
    if #results > 0 then
        player:say(config["小店搜索到后提示"])
    else
        player:say(config["小店搜索不到提示"])
        return
    end
    
    while true do
        for i = (page - 1) * items_per_page + 1, math.min(page * items_per_page, #results) do
            player:say(config["小店搜索店主展示模板"]:gsub("%[I%]",tostring(i)):gsub("%[店主名字%]",results[i].name))
        end
        player:say(config["小店搜索店主列表末尾提示"]:gsub("%[页码%]",tostring(page)):gsub("%[页数%]",tostring(total_pages)))
        local input = player:ask(config["小店搜索请求输入文本"])
        
        if input == "l" and page > 1 then
            page = page - 1
        elseif input == "n" and page < total_pages then
            page = page + 1
        elseif input == "取消" then
            return
        else
            local index = tonumber(input)
            if index and index >= 1 and index <= #results then
                target_player_uuid = results[index].uuid
                target_player_name = results[index].name
                break
            else
                player:say(config["无效输入提示"])
            end
        end
    end
    local operate = player:ask(config["小店搜索请求输入操作文本"])
    if operate == "i" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s %s"):format(chat.name,bot_name,config["小店信息触发词"][1],target_player_name))
    elseif operate == "k" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s %s"):format(chat.name,bot_name,config["小店查看评论触发词"][1],target_player_name))
    elseif operate == "u" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s %s"):format(chat.name,bot_name,config["小店点赞触发词"][1],target_player_name))
    elseif operate == "e" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s %s"):format(chat.name,bot_name,config["小店点踩触发词"][1],target_player_name))
    elseif operate == "m" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s %s"):format(chat.name,bot_name,config["小店评论触发词"][1],target_player_name))
    elseif operate == "r" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s %s"):format(chat.name,bot_name,config["小店删除评论触发词"][1],target_player_name))
    elseif operate == "s" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s %s"):format(chat.name,bot_name,config["小店购买触发词"][1],target_player_name))
    elseif operate == "取消" then
        player:say(config["退出操作文本"])
    else
        player:say(config["无效输入提示"])
    end
end)

coromega:when_called_by_game_menu({
    triggers = config["小店下架商品触发词"],
    argument_hint = "[无]",
    usage = config["小店下架商品提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_uuid = player:uuid_string()
    if player_db:get(player_uuid) == "" then
        player:say(config["未注册小店时提示"])
        return
    end
    if sell_db:get(player:uuid_string()) == "" then sell_db:set(player:uuid_string(),json.encode({["售出商品"] = {}})) end
    if overdue_db:get(player:uuid_string()) == "" then overdue_db:set(player:uuid_string(),json.encode({["超时商品"] = {}})) end
    if comment_db:get(player:uuid_string()) == "" then comment_db:set(player:uuid_string(),json.encode({["评论消息"] = {}})) end
    local player_data = json.decode(player_db:get(player_uuid))
    local items_per_page = config["每页最多显示商品数"]
    local page = 1
    local off_commodity
    local storekeeper = chat.name
    while true do
        local list = {}
        store_db:iter(function(key, value)
            if key~="id" and not json.decode(player_db:get(json.decode(value)["卖家UUID"]))["黑名单"][player_uuid] then
                local commodity_info=json.decode(value)
                if commodity_info["卖家名字"] == storekeeper then
                    table.insert(list,commodity_info)
                end
            end
            return true
        end)
        if #list < 0 then
            player:say(config["没有售卖物品时提示"])
            return
        end
        local max_pages = math.ceil(#list / items_per_page)
        player:say(config["物品清单开头"])
        local start_index = (page - 1) * items_per_page + 1
        local end_index = math.min(page * items_per_page, #list)
        
        for index = start_index, end_index do
            local commodity = list[index]
            local formatted_string = config["物品渲染格式"]
                :gsub("%[I%]", tostring(index))
                :gsub("%[商品%]", commodity["商品名字"])
                :gsub("%[出售者%]", commodity["卖家名字"])
                :gsub("%[价格%]", tostring(commodity["商品价格"]))
                :gsub("%[货币名%]", config["货币"]["货币名"])
                :gsub("%[货币计分板名%]", config["货币"]["记分板名"])
                :gsub("%[到期剩余%]", seconds_to_dhms((commodity["售卖时间"]+commodity["售卖时长"])-os.time()))
            player:say(formatted_string)
        end
        if page < max_pages then player:say(config["还有下一页时末尾"]) else player:say(config["物品清单结尾提示"]) end
        local choice = player:ask(config["输入时的提示"])
        
        if choice == "l" and page > 1 then
            page = page - 1
        elseif choice == "n" and page < max_pages then
            page = page + 1
        elseif tonumber(choice) and tonumber(choice) >= 1 and tonumber(choice) <= #list then
            player:say(config["显示物品内容提示"])
            -- 使用Lua的string.gmatch函数分割文本
            for index, one_item_info in ipairs(list[tonumber(choice)]["商品内容"]) do
                player:say(config["物品显示模板"]:gsub("%[编号%]",tostring(index)))
                local text = translate(one_item_info,"container_slot_data")
                for line in string.gmatch(text, "([^\n]+)") do
                    player:say(line)
                end
            end
            local confirm = player:ask(config["询问是否下架"])
            if confirm == "y" or confirm == "是" then
                off_commodity = list[tonumber(choice)]
                break
            end
        elseif choice == "取消" then
            player:say(config["退出下架文本"])
            return
        else
            player:say(config["无效输入提示"])
        end
    end
    coromega:send_wo_cmd(("scoreboard players add %s %s %d"):format(chat.name,config["货币"]["记分板名"],off_commodity["商品价格"]))
    coromega:send_wo_cmd(('execute at %s run structure load "%s" ~-2~~-2 0_degrees none true false'):format(chat.name,off_commodity["结构名字"]))
    coromega:send_wo_cmd(("scoreboard players remove %s %s %d"):format(chat.name,config["货币"]["记分板名"],off_commodity["商品价格"]))
    store_db:delete(tostring(off_commodity["商品编号"]))
    player:say(config["下架成功提示"])
end)

coromega:when_called_by_game_menu({
    triggers = config["小店购买菜单触发词"],
    argument_hint = "[无]",
    usage = config["小店购买菜单提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local operate = player:ask(config["小店购买菜单请求输入操作文本"])
    if operate == "s" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s"):format(chat.name,bot_name,config["购买触发词"][1]))
    elseif operate == "m" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s"):format(chat.name,bot_name,config["小店购买触发词"][1]))
    elseif operate == "g" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s"):format(chat.name,bot_name,config["搜索购买触发词"][1]))
    else
        player:say(config["无效输入提示"])
    end
end)

coromega:when_called_by_game_menu({
    triggers = config["店主操作菜单触发词"],
    argument_hint = "[无]",
    usage = config["店主操作菜单提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local operate = player:ask(config["店主操作菜单请求输入操作文本"])
    if operate == "s" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s"):format(chat.name,bot_name,config["售卖触发词"][1]))
    elseif operate == "n" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s"):format(chat.name,bot_name,config["下架触发词"][1]))
    elseif operate == "j" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s"):format(chat.name,bot_name,config["拉黑触发词"][1]))
    elseif operate == "r" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s"):format(chat.name,bot_name,config["解除拉黑触发词"][1]))
    elseif operate == "d" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s"):format(chat.name,bot_name,config["小店添加优惠玩家触发词"][1]))
    elseif operate == "o" then
        coromega:send_wo_cmd(("execute as %s run tell %s %s"):format(chat.name,bot_name,config["小店删除优惠玩家触发词"][1]))
    else
        player:say(config["无效输入提示"])
    end
end)

coromega:run()