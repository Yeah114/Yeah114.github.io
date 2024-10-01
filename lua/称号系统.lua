local omega = require("omega")
local json = require("json")
--- @type Coromega
local coromega = require("coromega").from(omega)
local bot_name = coromega:bot_name()
local first_check_online = true
local plugin_name = "称号系统"
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
local config = coromega.config
local config_messages = coromega.config["显示配置"]
local config_data = coromega.config["数据配置"]
local config_menu = coromega.config["菜单配置"]
local config_command_block = coromega.config["命令方块配置"]
local command_block = {
    add_title_word = config_command_block["添加称号唤醒词"],
    name = config_command_block["命令方块名字"]
}
local menu = config_menu
local data = {
    adding_title_tag = config_data["正在添加称号的标签"] or "_正在添加称号",
    join_server_commands_sleep_time = config_data["进服指令等待多少秒后执行"] or 20,
    title_db_name = config_data["称号数据库名称"] or "称号数据", -- 数据库的名称
    player_db_name = config_data["玩家数据库名称"] or "玩家称号数据", -- 数据库的名称
    data_scoreboard = config_data["数据积分版名称"] or "数据", -- 存储数据的积分版名称
    title_number_name = config_data["称号数量名称"] or "称号数量", -- 积分版上面称号数量的名字
    command_block_coordinates = config_data["称号命令方块坐标"] or {x = 10000, y = 300, z = 10000} -- 称号命令方块存储的坐标
}
local messages = {
    add_title = {
        player_first_get_title = config_messages["添加称号"]["第一个获得称号"],
        player_get_title = config_messages["添加称号"]["获得称号"]
    },
    list_title = {
        no_title = config_messages["列出称号"]["没有称号"],
        title_tip = config_messages["列出称号"]["称号提示"],
        title_display = config_messages["列出称号"]["称号显示模版"],
        no_wear_title = config_messages["列出称号"]["目前没佩戴称号的提示"],
        wear_title = config_messages["列出称号"]["目前佩戴的称号提示"],
        fake_title_display = config_messages["列出称号"]["失效的称号显示模版"],
        display_title_tip = config_messages["列出称号"]["称号显示后的提示"]
    },
    wear_title = {
        no_title = config_messages["佩戴称号"]["没有称号"],
        title_tip = config_messages["佩戴称号"]["称号提示"],
        title_display = config_messages["佩戴称号"]["称号显示模版"],
        invalid_input = config_messages["佩戴称号"]["无效输入"],
        display_title_tip = config_messages["佩戴称号"]["称号显示后的提示"],
        wear_title_ok = config_messages["佩戴称号"]["佩戴称号成功提示"],
        no_wear_title = config_messages["佩戴称号"]["目前没佩戴称号的提示"],
        wear_title = config_messages["佩戴称号"]["目前佩戴的称号提示"],
        no_can_wear_title = config_messages["佩戴称号"]["没有可佩戴的称号"]
    },
    unwear_title = {
        no_title = config_messages["卸下称号"]["没有称号"],
        no_wear_title = config_messages["卸下称号"]["目前没佩戴称号的提示"],
        unwear_title_ok = config_messages["卸下称号"]["卸下称号成功提示"],
    },
    issue_title = {
        no_permission = config_messages["颁发称号"]["没有权限"],
        no_exist = config_messages["颁发称号"]["称号不存在"],
        issue = config_messages["颁发称号"]["颁发成功"],
        select = config_messages["颁发称号"]["选择提示"],
        please = config_messages["颁发称号"]["输入提示"],
        cancel = config_messages["颁发称号"]["取消选择"],
        invalid_input = config_messages["颁发称号"]["无效输入"],
        player_list = config_messages["颁发称号"]["玩家显示模版"],
        title_list = config_messages["颁发称号"]["称号显示模版"],
        no_title = config_messages["颁发称号"]["没有称号"],
        already_get = config_messages["颁发称号"]["重复获取"],
        player_get_title_tip = config_messages["颁发称号"]["获得称号后的提示"]
    },
    abolish_title = {
        no_permission = config_messages["废除称号"]["没有权限"],
        no_exist = config_messages["废除称号"]["称号不存在"],
        select = config_messages["废除称号"]["选择提示"],
        please = config_messages["废除称号"]["输入提示"],
        cancel = config_messages["废除称号"]["取消选择"],
        invalid_input = config_messages["废除称号"]["无效输入"],
        title_list = config_messages["废除称号"]["称号显示模版"],
        confirm = config_messages["废除称号"]["确认提示"],
        success = config_messages["废除称号"]["废除成功提示"]
    }
}
local title_db = omega.storage.get_kv_db(data.title_db_name) -- 获取数据库
local player_db = omega.storage.get_kv_db(data.player_db_name) -- 获取数据库

-- 如果你需要调试请将下面一段解除注释，关于调试的方法请参考文档
-- local dbg = require('emmy_core')
-- dbg.tcpConnect('localhost', 9966)
-- print("waiting...")
-- for i=1,1000 do -- 调试器需要一些时间来建立连接并交换所有信息
--     -- 如果始终无法命中断点，你可以尝试将 1000 改的更大
--     print(".")
-- end
-- print("end")

-- 把scoreboard命令输出的结果简化成分数
local function output_to_score(output)
    local score = tonumber(ud2lua(output:user_data().OutputMessages)[1]["Parameters"][1])
    return score or 0
end

-- 分割字符串函数
local function split_complex_string(str)
    -- 初始化结果数组
    local parts = {}
    -- 初始化起始索引
    local start_idx = 1
    -- 引号内的标志
    local in_quotes = false
    -- 括号层级计数
    local brace_level = 0

    -- 遍历字符串中的每一个字符
    for i = 1, #str do
        -- 获取当前字符
        local char = str:sub(i, i)

        -- 如果是双引号，则切换in_quotes标志
        if char == '"' then
            in_quotes = not in_quotes
        elseif not in_quotes then
            -- 如果不在引号内，检查括号或空格
            if char == '[' then
                -- 遇到开括号，括号层级加一
                brace_level = brace_level + 1
            elseif char == ']' then
                -- 遇到闭括号，括号层级减一
                brace_level = brace_level - 1
            elseif char == ' ' and brace_level == 0 then
                -- 如果遇到空格且不在任何括号内，分割字符串
                table.insert(parts, str:sub(start_idx, i - 1))
                -- 更新起始索引为下一个字符
                start_idx = i + 1
            end
        end
    end

    -- 插入字符串的最后一部分
    if start_idx <= #str then
        table.insert(parts, str:sub(start_idx))
    end

    -- 返回分割后的字符串数组
    return parts
end

function generate_coordinates_by_x_z(x, z)
    if x > z then
        z = z + 1
    elseif x <= z and x > 1 then
        x = x - 1
    elseif x == 1 then
        x, z = z + 1, 1
    end
    return {x=x,z=z}
end

function generate_coordinates_by_id(n)
    local x, z = 2,1
    if n == 1 then
        x,z = 1,1
    elseif n ~= 2 then
        for i = 1, n - 2 do
            local x_z = generate_coordinates_by_x_z(x, z)
            x=x_z.x
            z=x_z.z
        end
    end
    return {x=x,z=z}
end
coromega:when_player_change():start_new(function(player, action)
    if action == "online" then
        local all_titles = json.decode(player_db:get("所有称号"))
        local player_uuid = player:uuid_string()
        local player_name = player:name()
        local player_title_info = player_db:get(player_uuid)
        if player_title_info == "" then
            return
        end
        player_title_info = json.decode(player_title_info)
        if player_title_info["当前称号"] == "" or not all_titles[player_title_info["当前称号"]] then
            coromega:print("no")
            return
        end
        coromega:sleep(data.join_server_commands_sleep_time)
        local commands = json.decode(title_db:get(player_title_info["当前称号"])).join_server_commands
        coromega:print(json.encode(commands))
        for index,command in ipairs(commands) do
            coromega:print(tostring(index))
            coromega:sleep(command["延迟"])
            coromega:send_wo_cmd(("execute as %s at @s run %s"):format(player_name,command["指令"]))
        end
    end
end)
-- 定义一个函数，当接收到来自特定命名命令块的消息时执行
coromega:when_receive_msg_from_command_block_named(command_block.name):start_new(function(chat)
    -- 提取并分割原始消息参数
    local params = chat["raw_msg"]
    local parts = split_complex_string(params)
    
    -- 检查第一个参数是否为添加称号的命令
    local choose = parts[1]
    if choose == command_block.add_title_word then
        -- 提取称号名称
        local title_name = parts[3]
        
        -- 从数据库获取已存在的称号信息
        local already_title = title_db:get(title_name)
        local already_title_json = json.decode(already_title)
        
        -- 提取玩家获得称号的提示信息
        local player_get_title_tip = messages.add_title.player_get_title
        
        -- 初始化称号对象
        local title
        
        local player = coromega:get_player_by_name(parts[2])
        local player_name = player:uuid_string()
        -- 检查称号是否已存在
        if already_title == "" then
            -- 获取称号数量
            local all_title_id = tonumber(coromega:send_ws_cmd(("scoreboard players test %s %s * *"):format(data.title_number_name, data_scoreboard),true)["OutputMessages"][1]["Parameters"][1]) or 0
            local id = all_title_id+1
            local command_block_point
            if id < 3 then
                command_block_point = generate_coordinates_by_id(id)
            else
                local cb_x = tonumber(coromega:send_ws_cmd(('scoreboard players test "_称号_缓存_x" %s * *'):format(data_scoreboard),true)["OutputMessages"][1]["Parameters"][1]) or 0
                local cb_z = tonumber(coromega:send_ws_cmd(('scoreboard players test "_称号_缓存_z" %s * *'):format(data_scoreboard),true)["OutputMessages"][1]["Parameters"][1]) or 0
                command_block_point = generate_coordinates_by_x_z(cb_x,cb_z)
            end
            -- 初始化获得称号的玩家列表
            local get_player = { [player_name] = 1 }
            
            -- 创建新的称号对象
            title = {
                name = title_name, -- 称号名字
                first = player_name,
                total = 1,
                command_block_point = command_block_point,
                id = id,
                get_players = get_player,
                quality = parts[4], -- 称号品质
                describe = parts[5]:sub(2, -2), -- 称号的描述
                join_server_commands = json.decode(parts[6]), -- 称号入服会执行的命令
                game_commands = json.decode(parts[7]) -- 称号游戏内会执行的命令
            }
            
            -- 更新提示信息为首次获得称号
            player_get_title_tip = messages.add_title.player_first_get_title
            
            -- 更新数据
            coromega:send_wo_cmd(('scoreboard players set "_称号_缓存_x" %s %d'):format(data_scoreboard,command_block_point.x))
            coromega:send_wo_cmd(('scoreboard players set "_称号_缓存_z" %s %d'):format(data_scoreboard,command_block_point.z))
            coromega:send_wo_cmd(('scoreboard players set %s %s %d'):format(data.title_number_name,data_scoreboard,id))
        else
            -- 检查玩家是否已获得该称号
            if already_title_json.get_players and already_title_json.get_players[player_name] and already_title_json.get_players[player_name] > 0 then
                return
            end
            
            -- 更新玩家获得称号的状态
            already_title_json.get_players[player_name] = already_title_json.total + 1
            
            -- 更新称号对象
            title = {
                name = title_name, -- 称号名字
                id = already_title_json.id,
                first = already_title_json.first,
                total = already_title_json.total + 1,
                command_block_point = already_title_json.command_block_point,
                get_players = already_title_json.get_players,
                quality = parts[4] or already_title_json.quality, -- 称号品质
                describe = parts[5]:sub(2, -2) or already_title_json.describe, -- 称号的描述
                join_server_commands = json.decode(parts[6]) or already_title_json.join_server_commands, -- 称号入服会执行的命令
                game_commands = json.decode(parts[7]) or already_title_json.game_commands -- 称号游戏内会执行的命令
            }
        end
        -- 向所有玩家发送获得称号的提示信息
        omega.players.say_to("@a", player_get_title_tip:gsub("［玩家］", parts[2]):gsub("［称号］", title_name))
        
        -- 获取所有称号信息
        local all_titles = player_db:get("所有称号")
        if all_titles == "" then
            all_titles = {}
        else
            all_titles = json.decode(all_titles)
        end
        
        -- 更新所有称号信息
        all_titles[title.name] = true
        
        -- 获取玩家的称号信息
        local player_titles = player_db:get(player_name)
        if player_titles == "" then
            player_titles = {["当前称号"] = "", ["所有称号"] = {}}
        else
            player_titles = json.decode(player_titles)
        end
        
        -- 更新玩家的称号信息
        player_titles["所有称号"][title.name] = true
        
        -- 保存称号信息到数据库
        title_db:set(title.name, json.encode(title))
        player_db:set("所有称号", json.encode(all_titles))
        player_db:set(player_name, json.encode(player_titles))
        coromega:send_wo_cmd(('scoreboard objectives add "_称号_%s" dummy'):format(title.name))
        coromega:send_wo_cmd(('scoreboard players set @a "_称号_%s" 0'):format(title.name))
        coromega:send_wo_cmd(('tag %s remove %s'):format(parts[2],data.adding_title_tag))
        if json.encode(json.decode(parts[7])) == json.encode(title.game_commands) then
            return
        end
        for index,command in ipairs(title.game_commands) do
            local err = coromega:place_command_block(
                { x = data.command_block_coordinates.x + title.command_block_point.x, y = data.command_block_coordinates.y + index - 1, z = data.command_block_coordinates.z + title.command_block_point.z},
                "repeating_command_block",
                1,
                {
                    need_red_stone = false,
                    conditional = false,
                    command = ('execute as @a[scores={"_称号_%s"=1}] at @s run %s'):format(title.name,command["指令"]),
                    name = ("_称号_%s"):format(title.name),
                    tick_delay = command["延迟"],
                    track_output = false,
                    execute_on_first_tick = true
                }
            )
        end
    end
end)

coromega:when_called_by_game_menu({
    triggers = menu["列出称号"]["触发词"],
    argument_hint = "[无]",
    usage = "列出你的称号",
}):start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_title_data = player_db:get(player:uuid_string())
    if player_title_data == "" then
        player:say(messages.list_title.no_title)
        return
    end
    player_title_data = json.decode(player_title_data)
    all_player_titles = player_title_data["所有称号"]
    if not all_player_titles then
        player:say(messages.list_title.no_title)
        return
    end
    local all_titles = json.decode(player_db:get("所有称号"))
    local index = 1
    for player_title,_ in pairs(all_player_titles) do
        if all_titles[player_title] then
            local title_info = json.decode(title_db:get(player_title))
            player:say(messages.list_title.title_display:gsub("［索引］",tostring(index)):gsub("［称号名称］",player_title):gsub("［称号品质］",title_info.quality):gsub("［称号描述］",title_info.describe):gsub("［排名］",tostring(title_info.get_players[player:uuid_string()])))
        else
            player:say(messages.list_title.fake_title_display:gsub("［索引］",tostring(index)):gsub("［称号名称］",player_title))
        end
        index = index + 1
    end
    if player_title_data["当前称号"]=="" then
        player:say(messages.list_title.no_wear_title)
    else
        player:say(messages.list_title.wear_title:gsub("［称号名称］",player_title_data["当前称号"]))
    end
    
    player:say(messages.list_title.display_title_tip)
end)


coromega:when_called_by_game_menu({
    triggers = menu["佩戴称号"]["触发词"],
    argument_hint = "[称号名称]",
    usage = "佩戴你的称号",
}):start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_title_data = player_db:get(player:uuid_string())
    if player_title_data == "" then
        player:say(messages.wear_title.no_title)
        return
    end
    player_title_data = json.decode(player_title_data)
    all_player_titles = player_title_data["所有称号"]
    if not all_player_titles then
        player:say(messages.wear_title.no_title)
        return
    end
    local all_titles = json.decode(player_db:get("所有称号"))
    local target_title = chat.msg[1]
    if not chat.msg[1] or not all_player_titles[chat.msg[1]] then
        local index = 1
        local display_titles = {}
        player:say(messages.wear_title.invalid_input)
        for player_title,_ in pairs(all_player_titles) do
            if all_player_titles[player_title] and player_title ~= player_title_data["当前称号"] then
                table.insert(display_titles,player_title)
            end
        end
        if #display_titles == 0 then
            player:say(messages.wear_title.no_can_wear_title)
            return
        end
        if player_title_data["当前称号"]=="" then
            player:say(messages.wear_title.no_wear_title)
        else
            player:say(messages.wear_title.wear_title:gsub("［称号名称］",player_title_data["当前称号"]))
        end
        player:say(messages.wear_title.title_tip)
        for index,display_title in ipairs(display_titles) do
            local title_info = json.decode(title_db:get(display_title))
            player:say(messages.wear_title.title_display:gsub("［索引］",tostring(index)):gsub("［称号名称］",display_title):gsub("［称号品质］",title_info.quality):gsub("［称号描述］",title_info.describe):gsub("［排名］",tostring(title_info.get_players[player:uuid_string()])))
        end
        target_title = tonumber(player:ask(messages.wear_title.display_title_tip))
        if target_title <= 0 or target_title > #display_titles or not all_player_titles[display_titles[target_title]] then
            player:say(messages.wear_title.invalid_input)
            return
        end
        target_title = display_titles[target_title]
    end
    coromega:send_wo_cmd(('scoreboard players set %s "_称号_%s" 1'):format(chat.name,target_title))
    player_title_data["当前称号"] = target_title
    player_db:set(player:uuid_string(),json.encode(player_title_data))
    player:say(messages.wear_title.wear_title_ok)
end)

coromega:when_called_by_game_menu({
    triggers = menu["卸下称号"]["触发词"],
    argument_hint = "[无]",
    usage = "卸下你的称号",
}):start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local player_title_data = player_db:get(player:uuid_string())
    if player_title_data == "" then
        player:say(messages.unwear_title.no_title)
        return
    end
    player_title_data = json.decode(player_title_data)
    if player_title_data["当前称号"] == "" then
        player:say(messages.unwear_title.no_wear_title)
        return
    end
    coromega:send_wo_cmd(('scoreboard players set %s "_称号_%s" 0'):format(chat.name,player_title_data["当前称号"]))
    player:say(messages.unwear_title.unwear_title_ok)
    player_title_data["当前称号"] = ""
    player_db:set(player:uuid_string(),json.encode(player_title_data))
end)

coromega:when_called_by_game_menu({
    triggers = menu["颁发称号"]["触发词"],
    argument_hint = "[玩家名称] [称号名称]",
    usage = "颁发称号给某个玩家（需要OP权限）",
}):start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    if not player:is_op() then
        player:say(messages.issue_title.no_permission)
        return
    end
    local all_titles = json.decode(player_db:get("所有称号"))
    local target_player = chat.msg[1]
    local target_title = chat.msg[2]
    local target_player_name
    local target_player_uuid
    if not target_player or not coromega:get_player_by_name(target_player) then
        local display_players = {}
        local players = coromega:get_all_online_players() -- 获取所有在线玩家
        for _, p in ipairs(players) do
            table.insert(display_players, p)
        end
        player:say(messages.issue_title.select)
        -- 显示在线玩家列表，并让调用者选择
        for index, p in ipairs(display_players) do
            player:say(messages.issue_title.player_list:gsub("［索引］", tostring(index)):gsub("［名字］", tostring(p:name())))
        end

        local response = player:ask(messages.issue_title.please)
        if response == "取消" then
            player:say(messages.issue_title.cancel)
            return
        end

        local target = tonumber(response)
        if not target or target <= 0 or target > #display_players then
            player:say(messages.issue_title.invalid_input)
            return
        end

        -- 根据用户输入选择目标玩家
        target_player = display_players[target]
        target_player_name = target_player:name()
        target_player_uuid = target_player:uuid_string()
    else
        target_player = coromega:get_player_by_name(target_player)
        target_player_name = target_player:name()
        target_player_uuid = target_player:uuid_string()
    end
    
    local target_title_info
    if not target_title or not all_titles[target_title] then
        local display_titles = {}
        player:say(messages.issue_title.select)
        for t,_ in pairs(all_titles) do
            table.insert(display_titles, t)
        end
        if not display_titles or #display_titles == 0 then
            player:say(messages.issue_title.no_title)
            return
        end
        for index, title in ipairs(display_titles) do
            player:say(messages.issue_title.title_list:gsub("［索引］", tostring(index)):gsub("［称号名称］", title))
        end
        response = player:ask(messages.issue_title.please)
        if response == "取消" then
            player:say(messages.issue_title.cancel)
            return
        end

        target = tonumber(response)
        if not target or target <= 0 or target > #display_titles then
            player:say(messages.issue_title.invalid_input)
            return
        end
        
        target_title_info = json.decode(title_db:get(display_titles[target]))
    else
        target_title_info = json.decode(title_db:get(target_title))
    end
    if target_title_info.get_players and target_title_info.get_players[target_player_uuid] and target_title_info.get_players[target_player_uuid] > 0 then
        player:say(messages.issue_player.already_get)
        return
    end
    -- 向所有玩家发送获得称号的提示信息
    omega.players.say_to("@a", messages.issue_title.player_get_title_tip:gsub("［玩家］", target_player_name):gsub("［称号］", target_title_info.name))
    -- 获取玩家的称号信息
    local player_titles = player_db:get(target_player_uuid)
    if player_titles == "" then
        player_titles = {["当前称号"] = "", ["所有称号"] = {}}
    else
        player_titles = json.decode(player_titles)
    end
    -- 更新称号对象
    local title = {
        name = target_title_info.name, -- 称号名字
        id = target_title_info.id,
        first = target_title_info.first,
        total = target_title_info.total + 1,
        command_block_point = target_title_info.command_block_point,
        get_players = target_title_info.get_players,
        quality = target_title_info.quality, -- 称号品质
        describe = target_title_info.describe, -- 称号的描述
        join_server_commands = target_title_info.join_server_commands, -- 称号入服会执行的命令
        game_commands = target_title_info.game_commands -- 称号游戏内会执行的命令
    }
    title.get_players[target_player_uuid] = title.total
    -- 更新玩家的称号信息
    player_titles["所有称号"][target_title_info.name] = true
    title_db:set(title.name, json.encode(title))
    player_db:set(target_player_uuid, json.encode(player_titles))
end)

coromega:when_called_by_game_menu({
    triggers = menu["废除称号"]["触发词"],
    argument_hint = "[称号名称]",
    usage = "废除某个称号（需要OP权限）",
}):start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    if not player:is_op() then
        player:say(messages.abolish_title.no_permission)
        return
    end
    local target_title = chat[1]
    local all_titles = json.decode(player_db:get("所有称号"))
    if not target_title or not all_titles[target_title] then
        local display_titles = {}
        player:say(messages.abolish_title.select)
        for t,_ in pairs(all_titles) do
            table.insert(display_titles, t)
        end
        if not display_titles or #display_titles == 0 then
            player:say(messages.abolish_title.no_title)
            return
        end
        for index, title in ipairs(display_titles) do
            player:say(messages.abolish_title.title_list:gsub("［索引］", tostring(index)):gsub("［称号名称］", title))
        end
        response = player:ask(messages.abolish_title.please)
        if response == "取消" then
            player:say(messages.abolish_title.cancel)
            return
        end

        target = tonumber(response)
        if not target or target <= 0 or target > #display_titles then
            player:say(messages.abolish_title.invalid_input)
            return
        end
        target_title = display_titles[target]
    end
    local target_title_info = json.decode(title_db:get(target_title))
    local confirm = player:ask(messages.abolish_title.confirm):lower()
    if not (confirm=="y" or confirm=="是") then
        player:say(messages.abolish_title.cancal)
        return
    end
    all_titles[target_title] = nil
    player_db:set("所有称号",json.encode(all_titles))
    title_db:delete(target_title)
    coromega:send_wo_cmd(('scoreboard objectives remove "_称号_%s"'):format(target_title_info.name))
    coromega:send_wo_cmd(('fill %d %d %d %d %d %d air'):format(data.command_block_coordinates.x + target_title_info.command_block_point.x,data.command_block_coordinates.y,data.command_block_coordinates.z + target_title_info.command_block_point.z,data.command_block_coordinates.x + target_title_info.command_block_point.x,data.command_block_coordinates.y + #target_title_info.game_commands,data.command_block_coordinates.z + target_title_info.command_block_point.z))
    player:say(messages.abolish_title.success)
end)

coromega:run()