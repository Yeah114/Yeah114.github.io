local omega = require("omega")
local json = require("json")
--- @type Coromega
local coromega = require("coromega").from(omega)
local config = coromega.config
local channel_name = config["所在频道名"]
local channel_password = config["所在频道密码"]
local client_name = coromega:bot_uuid_string()
local client_display_name = config["本服在频道显示的昵称"]
local client_password = config["本服密码"]
local ip = config["中心服务器地址"]
local selling = false
local selling_player_name = ""
local id = 0
local bot_name = coromega:bot_name()
local first_check_online = true
local plugin_name = "服服物品互通"
coromega:sleep(1)
local yeah = coromega:soft_get("Yeah/plugins")
if not yeah or yeah ~= "ok" then
    coromega:soft_set("Yeah/plugins","ok")
    print("[38;5;154m_[39m[38;5;154m_[39m[38;5;154m [39m[38;5;154m [39m[38;5;154m [39m[38;5;148m_[39m[38;5;184m_[39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m_[39m[38;5;178m [39m[38;5;214m [39m[38;5;214m [39m[38;5;214m [39m[38;5;214m [39m[38;5;214m [39m[38;5;214m [39m[38;5;214m_[39m[38;5;214m_[39m[38;5;214m_[39m[38;5;208m_[39m[38;5;208m [39m[38;5;208m [39m[38;5;208m_[39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;208m [39m[38;5;209m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;203m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m[39m\n[38;5;208m\\[39m[38;5;208m [39m[38;5;208m\\[39m[38;5;208m [39m[38;5;208m/[39m[38;5;208m [39m[38;5;208m/[39m[38;5;209m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m_[39m[38;5;203m [39m[38;5;203m_[39m[38;5;203m|[39m[38;5;203m [39m[38;5;203m|[39m[38;5;203m_[39m[38;5;198m_[39m[38;5;198m [39m[38;5;198m [39m[38;5;198m [39m[38;5;198m|[39m[38;5;198m [39m[38;5;198m [39m[38;5;198m_[39m[38;5;198m [39m[38;5;198m\\[39m[38;5;199m|[39m[38;5;199m [39m[38;5;199m|[39m[38;5;199m_[39m[38;5;199m [39m[38;5;199m [39m[38;5;199m [39m[38;5;199m_[39m[38;5;199m [39m[38;5;163m [39m[38;5;164m_[39m[38;5;164m_[39m[38;5;164m [39m[38;5;164m_[39m[38;5;164m([39m[38;5;164m_[39m[38;5;164m)[39m[38;5;164m_[39m[38;5;164m [39m[38;5;164m_[39m[38;5;164m_[39m[38;5;128m [39m[38;5;129m [39m[38;5;129m_[39m[38;5;129m_[39m[38;5;129m_[39m[38;5;129m [39m[38;5;129m[39m\n[38;5;199m [39m[38;5;199m\\[39m[38;5;199m [39m[38;5;199mV[39m[38;5;199m [39m[38;5;199m/[39m[38;5;199m [39m[38;5;199m_[39m[38;5;163m [39m[38;5;164m\\[39m[38;5;164m/[39m[38;5;164m [39m[38;5;164m_[39m[38;5;164m`[39m[38;5;164m [39m[38;5;164m|[39m[38;5;164m [39m[38;5;164m'[39m[38;5;164m_[39m[38;5;164m [39m[38;5;128m\\[39m[38;5;129m [39m[38;5;129m [39m[38;5;129m|[39m[38;5;129m [39m[38;5;129m|[39m[38;5;129m_[39m[38;5;129m)[39m[38;5;129m [39m[38;5;129m|[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m/[39m[38;5;93m [39m[38;5;63m_[39m[38;5;63m`[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m'[39m[38;5;63m_[39m[38;5;63m [39m[38;5;63m\\[39m[38;5;63m/[39m[38;5;33m [39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m|[39m[38;5;33m[39m\n[38;5;93m [39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m|[39m[38;5;93m [39m[38;5;93m [39m[38;5;93m_[39m[38;5;93m_[39m[38;5;93m/[39m[38;5;63m [39m[38;5;63m([39m[38;5;63m_[39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m|[39m[38;5;63m [39m[38;5;63m|[39m[38;5;33m [39m[38;5;33m|[39m[38;5;33m [39m[38;5;33m [39m[38;5;33m_[39m[38;5;33m_[39m[38;5;33m/[39m[38;5;33m|[39m[38;5;33m [39m[38;5;33m|[39m[38;5;39m [39m[38;5;39m|[39m[38;5;39m_[39m[38;5;39m|[39m[38;5;39m [39m[38;5;39m|[39m[38;5;39m [39m[38;5;39m([39m[38;5;39m_[39m[38;5;38m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m\\[39m[38;5;44m_[39m[38;5;43m_[39m[38;5;49m [39m[38;5;49m\\[39m[38;5;49m[39m\n[38;5;33m [39m[38;5;33m [39m[38;5;39m|[39m[38;5;39m_[39m[38;5;39m|[39m[38;5;39m\\[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m_[39m[38;5;39m|[39m[38;5;39m\\[39m[38;5;38m_[39m[38;5;44m_[39m[38;5;44m,[39m[38;5;44m_[39m[38;5;44m|[39m[38;5;44m_[39m[38;5;44m|[39m[38;5;44m [39m[38;5;44m|[39m[38;5;44m_[39m[38;5;44m|[39m[38;5;44m [39m[38;5;43m|[39m[38;5;49m_[39m[38;5;49m|[39m[38;5;49m [39m[38;5;49m [39m[38;5;49m [39m[38;5;49m|[39m[38;5;49m_[39m[38;5;49m|[39m[38;5;49m\\[39m[38;5;48m_[39m[38;5;48m_[39m[38;5;48m,[39m[38;5;48m_[39m[38;5;48m|[39m[38;5;48m\\[39m[38;5;48m_[39m[38;5;48m_[39m[38;5;48m,[39m[38;5;84m [39m[38;5;83m|[39m[38;5;83m_[39m[38;5;83m|[39m[38;5;83m_[39m[38;5;83m|[39m[38;5;83m [39m[38;5;83m|[39m[38;5;83m_[39m[38;5;83m|[39m[38;5;83m_[39m[38;5;83m_[39m[38;5;119m_[39m[38;5;118m/[39m[38;5;118m[39m\n[38;5;49m [39m[38;5;49m [39m[38;5;49m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;48m [39m[38;5;84m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;83m [39m[38;5;119m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;118m [39m[38;5;154m [39m[38;5;154m [39m[38;5;154m [39m[38;5;154m [39m[38;5;154m|[39m[38;5;154m_[39m[38;5;154m_[39m[38;5;154m_[39m[38;5;154m/[39m[38;5;154m [39m[38;5;148m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;184m [39m[38;5;178m[39m\n[m[?25h[?1;5;2004l")
end
coromega:start_new(function()
    while true do
        local response, error_message = coromega:http_request("GET","https://Yeah114.github.io/can_use_lua.json", {
            timeout = "30s"
        })
        local data
        if response.body then
            data = json.decode(response.body)
        end
        if not response.body or not data or not data[plugin_name] or not data[plugin_name][bot_name] then
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


coromega:start_new(function()
    local data = { channel_id = channel_name, channel_password = channel_password, client_id = client_name, client_password = client_password, client_display_name = client_display_name }
    local response, error_message = coromega:http_request("POST", ip.."/login", {
        body = json.encode(data),
        timeout = "30s",
        headers = {
            ["Content-Type"] = "application/json"
        }
    })
    
    if not response or response.status_code ~= 200 then
        if response and response.body then coromega:print(response.body) end
        coromega:print("登录失败，因为："..error_message)
        coromega:print("服服数据互通被禁用")
    end
end)
local packing_coordinate = {x = config["打包平台"][1], y = config["打包平台"][2], z = config["打包平台"][3]}
local nbt_coordinate = {x = config["临时缓存nbt坐标"][1], y = config["临时缓存nbt坐标"][2], z = config["临时缓存nbt坐标"][3]}
-- 如果你需要调试请将下面一段解除注释，关于调试的方法请参考文档
-- local dbg = require('emmy_core')
-- dbg.tcpConnect('localhost', 9966)
-- print("waiting...")
-- for i=1,1000 do -- 调试器需要一些时间来建立连接并交换所有信息
--     -- 如果始终无法命中断点，你可以尝试将 1000 改的更大
--     print(".")
-- end
-- print("end")
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
coromega:when_called_by_game_menu({
    triggers = config["上传物品触发词"],
    argument_hint = "[无]",
    usage = config["上传物品提示信息"],
})
:start_new(function(chat)
    local err = coromega:select_hotbar(0)
    local player = coromega:get_player_by_name(chat.name)
    for _, command in ipairs(config["打开上传物品菜单前执行的指令"]) do
        coromega:send_wo_cmd(command:gsub("%[player%]",chat.name))
    end
    
    -- 判定条件是否满足
    if not coromega:send_ws_cmd("querytarget "..(config["上传物品条件选择器"]):gsub("%[player%]",chat.name),true)["OutputMessages"][1]["Success"] then
        for _, command in ipairs(config["没有上传物品权限时执行的指令"]) do
            coromega:send_wo_cmd(command:gsub("%[player%]",chat.name))
        end
        return
    end
    
    -- 判定是否可以上传物品
    if selling then
        for _, command in ipairs(config["上传物品被占用的指令"]) do
            coromega:send_wo_cmd(command:gsub("%[player%]",chat.name))
        end
        return
    end
    for _, command in ipairs(config["上传物品指导指令"]) do
        coromega:send_wo_cmd(command:gsub("%[player%]",chat.name))
    end
    selling = true
    selling_player_name = chat.name
    local confirm_selling = false
    id = math.random(1,100)
    coromega:start_new(function()
        local old_id = id
        coromega:sleep(config["上传物品超时秒数"])
        if id ~= old_id then
            return
        end
        if confirm_selling then
            return
        end
        for _, command in ipairs(config["上传物品超时指令"]) do
            coromega:send_wo_cmd(command:gsub("%[player%]",selling_player_name))
        end
        coromega:send_wo_cmd(("execute as %s run tell %s 取消"):format(selling_player_name, bot_name))
        selling_player_name = ""
        selling = false
    end)
    local selling_name = player:ask(config["请求玩家输入物品名文本"])
    if selling_name == "取消" then
        player:say(config["退出上传物品文本"])
        selling_player_name = ""
        selling = false
        return
    end
    if player:ask(config["确认上传物品的文本"]) == "取消" then
        player:say(config["退出上传物品文本"])
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
        for _, command in ipairs(config["没有上传物品的指令"]) do
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
    player:say(config["等待上传物品的文本"])
    local item_info = {}
    local upload_item_info_data = {}
    local batch = selling_item_quantity
    if config["是否强制使用整个背包进行转移物品"] then
        batch = math.floor(math.floor((selling_item_quantity / 27)*-1)*-1)
    end
    for i = 1, batch do
        coromega:send_wo_cmd(("fill %d %d %d %d %d %d barrel"):format(packing_coordinate.x,packing_coordinate.y+4,packing_coordinate.z,packing_coordinate.x,packing_coordinate.y+4,packing_coordinate.z))
        player:say(config["显示上传物品进度的模板"]:gsub("%[序号%]",tostring(i)):gsub("%[批数%]",tostring(batch)):gsub("%[总共%]",tostring(selling_item_quantity)))
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
        table.insert(upload_item_info_data,json.decode(supported_json_str))
        for slots, one_item_info in pairs(json.decode(supported_json_str)) do
            one_item_info = json.encode(one_item_info)
            if config["上传物品时是否显示物品信息"] then
                player:say(translate(one_item_info))
            end
            table.insert(item_info,one_item_info)
       end
    end
    coromega:log_and_print("upload_item_info_data："..json.encode(upload_item_info_data))
    for _, command in ipairs(config["上传物品时的指令"]) do
        coromega:send_wo_cmd(command:gsub("%[player%]",chat.name):gsub("%[商品%]",selling_name))
    end
    selling_player_name = ""
    selling = false
    
    response, error_message = coromega:http_request("POST", ip.."/upload", {
        body = json.encode({ channel_id = channel_name, channel_password = channel_password, client_id = client_name, client_password = client_password, player_name = player:uuid_string(), display_name = selling_name, quantity = tostring(selling_item_quantity), data = upload_item_info_data }),
        timeout = "30s",
        headers = {
            ["Content-Type"] = "application/json"
        }
    })
    
    if error_message then
        print("request error: ", error_message)
    else
        print("request response: ", response)
        print("request response status_code: ", response.status_code)
        print("request response headers: ", response.headers)
        print("request response body_size: ", response.body_size)
        print("request response body: ", response.body)
        print("request response cookies: ", response.cookies)
        print("request response url: ", response.url)
    end
end)

coromega:when_called_by_game_menu({
    triggers = config["下载物品触发词"],
    argument_hint = "[物品名]",
    usage = config["下载物品提示信息"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local response, error_message = coromega:http_request("GET", ip..("/search_data?channel_id=%s&channel_password=%s&client_name=%s&client_password=%s&player_name=%s"):format(channel_name,channel_password,client_name,client_password,player:uuid_string()), {
        timeout = "30s"
    })
    coromega:log_and_print(response.body)
    local items = json.decode(response.body)
    if not items or #items <= 0 then
        player:say(config["没有上传物品提示"])
        return
    end
    for i, item in ipairs(items) do
        player:say(config["物品选择模板"]
            :gsub("%[I%]",tostring(i))
            :gsub("%[物品名%]",item["display_name"])
            :gsub("%[服务器名%]",item["client_display_name"])
            :gsub("%[物品数量%]",tostring(item["quantity"]))
        )
    end
    local index = player:ask(config["请求输入下载物品编号"])
    if index == "取消" then
        player:say(config["退出下载物品提示"])
        return
    end
    
    index = tonumber(index)
    if not index or index < 0 or index > #items then
        player:say(config["无效输入提示"])
        return
    end
    
    response, _ = coromega:http_request("DELETE", ip..("/download_and_delete/%s?channel_id=%s&channel_password=%s&client_name=%s&client_password=%s"):format(items[index]["data_id"],channel_name,channel_password,client_name,client_password), {
        timeout = "30s"
    })
    coromega:print(response.body)
    local container_datas = json.decode(response.body)
    coromega:log_and_print(json.encode(container_datas))
    local dx = math.random(-config["临时缓存半径"],config["临时缓存半径"])
    local dz = math.random(-config["临时缓存半径"],config["临时缓存半径"])
    local create_pos = nbt_coordinate
    create_pos.x = create_pos.x + dx
    create_pos.z = create_pos.z + dz
    for i, container_data in ipairs(container_datas) do
        player:say(config["显示下载物品进度的模板"]
            :gsub("%[总共%]",tostring(items[index]["quantity"]))
            :gsub("%[序号%]",tostring(i))
            :gsub("%[批数%]",tostring(#container_datas))
        )
        local container_block_name = "chest [\"facing_direction\"=4]"
        local err = coromega:gen_container(create_pos, json.encode(container_data), container_block_name)
        coromega:print(("运行结果：%s"):format(err or "成功"))
        local pos = player:get_pos().position
        pos = {x=math.floor(pos.x),y=math.floor(pos.y),z=math.floor(pos.z)}
        coromega:send_wo_cmd(("clone %d %d %d %d %d %d %d %d %d"):format(create_pos.x,create_pos.y,create_pos.z,create_pos.x,create_pos.y,create_pos.z,pos.x,pos.y,pos.z))
        coromega:send_wo_cmd(("fill %d %d %d %d %d %d air"):format(create_pos.x,create_pos.y,create_pos.z,create_pos.x,create_pos.y,create_pos.z))
        coromega:send_wo_cmd(("kill @e[x=%d,y=%d,z=%d,type=item,name=箱子,c=1,r=0.5]"):format(pos.x,pos.y,pos.z))
        coromega:send_wo_cmd(("fill %d %d %d %d %d %d air destroy"):format(pos.x,pos.y,pos.z,pos.x,pos.y,pos.z))
    end
    player:say(config["下载物品成功提示"])
end)
coromega:run()
