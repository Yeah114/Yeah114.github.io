local omega = require("omega")
local json = require("json")
--- @type Coromega
local coromega = require("coromega").from(omega)
local bot_name = coromega:bot_name()
local first_check_online = true
local plugin_name = "抽奖"
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
local messages = config["消息配置"]
-- local db_name = config["抽奖数据库名称"]
-- local db = omega.storage.get_kv_db(db_name) -- 获取数据库
local cumulative_draw_times_scoreboard = config["累计抽奖积分板"]
local all_prize_pool_data = config["奖池配置"]
local prize_pool_data = all_prize_pool_data[config["当前奖池"]]
local draw_times_scoreboard = config["存储保底抽数的积分板"]
local small_guaranteed_triggered_scoreboard = config["存储是否使用了小保底的积分板"]



-- 奖池的各种配置
-- local prize_pool_title = prize_pool_data["标题"]
local prize_pool_up = prize_pool_data["UP"]
local prize_pool_up_commands = prize_pool_data["UP指令"]
local coin_name = prize_pool_data["货币显示名"] or config["全局货币显示名"]
local coin_scoreboard = prize_pool_data["货币积分板"] or config["全局货币积分板"]
local one_draw_coin = prize_pool_data["每次抽奖所需的货币数量"] or config["全局每次抽奖所需的货币数量"]
local small_guarantee = prize_pool_data["小保底次数"] or config["全局小保底次数"]
local big_guarantee = prize_pool_data["大保底次数"] or config["全局大保底次数"]
local star5_probability_start = prize_pool_data["开始提升概率的抽数"] or config["全局开始提升概率的抽数"]
local target_probability = prize_pool_data["提升概率的奖项"] or config["全局提升概率的奖项"]
local star5_probability_increase = prize_pool_data["每抽提升概率百分比"] or config["全局每抽提升概率百分比"]
local probability_percentages = prize_pool_data["概率"] or config["全局概率"]
-- 非UP
local prize_pool = {}

-- 遍历原始表并填充新表
for star, _ in pairs(prize_pool_data["非UP"]) do
    prize_pool[star] = {}
end
-- 遍历原始表并填充新表
for star, items in pairs(prize_pool_data["非UP"]) do
    for item_name, _ in pairs(items) do
        table.insert(prize_pool[star], item_name)
    end
end
local prize_list = prize_pool
local up_prize = prize_pool_up
math.randomseed(os.time())
function gacha(draw_times, single_or_ten, no_sorted_prize_list, up_prize, small_guarantee, big_guarantee, star5_probability_start, star5_probability_increase, small_guaranteed_triggered, probability_percentages,target_probability)
    local drawn_prizes = {}
    local draw_count = single_or_ten
    local old_probability_percentages_5star = probability_percentages[target_probability]
    -- 创建一个用于排序的辅助表，存储键和值的元组
    local sorted_probability_percentages = {}
    -- 创建一个新表用于存放排序后的结果
    local prize_list = {}
    for key, value in pairs(probability_percentages) do
        table.insert(sorted_probability_percentages, {key = key, value = value})
    end
    
    -- 对辅助表进行排序，根据值(value)排序
    table.sort(sorted_probability_percentages, function(a, b)
        return a.value < b.value
    end)
    
    -- 创建一个用于存储排序后的键的表
    local sorted_probability_percentages_keys = {}
    for _, item in ipairs(sorted_probability_percentages) do
        table.insert(sorted_probability_percentages_keys, item.key)
    end
    -- 输出排序后的键
    for _, key in ipairs(sorted_probability_percentages_keys) do
        prize_list[key] = no_sorted_prize_list[key]
    end
    for i = 1, draw_count do
        local is_small_guaranteed_triggered = small_guaranteed_triggered

        if draw_times >= small_guarantee and not small_guaranteed_triggered then
            table.insert(drawn_prizes, {quality = sorted_probability_percentages_keys[1], prize = up_prize})
            is_small_guaranteed_triggered = true
            draw_times = 0
        elseif draw_times >= big_guarantee and small_guaranteed_triggered then
            table.insert(drawn_prizes, {quality = sorted_probability_percentages_keys[1], prize = up_prize})
            is_small_guaranteed_triggered = false
            draw_times = 0
        else
            local up_probability = 50
            
            
            local rand_num = math.random() * 100
            local cumulative_probability = 0.0

            for quality, prizes in pairs(prize_list) do
                local star5_probability = probability_percentages[sorted_probability_percentages_keys[1]]
                if draw_times >= star5_probability_start then
                    probability_percentages[target_probability] = star5_probability + (draw_times - star5_probability_start + 1) * star5_probability_increase
                else
                    probability_percentages[target_probability] = old_probability_percentages_5star
                end
                cumulative_probability = probability_percentages[quality]
                if rand_num <= cumulative_probability then
                    if quality == sorted_probability_percentages_keys[1] then
                        if math.random() * 100 <= up_probability or small_guaranteed_triggered then
                            table.insert(drawn_prizes, {quality = sorted_probability_percentages_keys[1], prize = up_prize})
                            draw_times = 0
                            probability_percentages[sorted_probability_percentages_keys[1]] = old_probability_percentages_5star
                            is_small_guaranteed_triggered = false
                            small_guaranteed_triggered = false
                        else
                            table.insert(drawn_prizes, {quality = sorted_probability_percentages_keys[1], prize = prizes[math.random(#prizes)]})
                            draw_times = 0
                            probability_percentages[sorted_probability_percentages_keys[1]] = old_probability_percentages_5star
                            is_small_guaranteed_triggered = true
                        end
                    else
                        table.insert(drawn_prizes, {quality = quality, prize = prizes[math.random(#prizes)]})
                    end
                    break
                end
            end
        end

        if single_or_ten == 10 and i == 1 then
            table.insert(drawn_prizes, {quality = "四星", prize = prize_list["四星"][math.random(#prize_list["四星"])]})
        end

        draw_times = draw_times + 1
        small_guaranteed_triggered = is_small_guaranteed_triggered
    end

    return {drawn_prizes, draw_times, small_guaranteed_triggered}
end

--local small_guarantee = 50
--local big_guarantee = 90
--local star5_probability_start = 70
--local star5_probability_increase = 100
--local probability_percentages = {["三星"] = 84, ["四星"] = 15, ["五星"] = 1}

-- 如果你需要调试请将下面一段解除注释，关于调试的方法请参考文档
-- local dbg = require('emmy_core')
-- dbg.tcpConnect('localhost', 9966)
-- print("waiting...")
-- for i=1,1000 do -- 调试器需要一些时间来建立连接并交换所有信息
--     -- 如果始终无法命中断点，你可以尝试将 1000 改的更大
--     print(".")
-- end
-- print("end")
coromega:send_wo_cmd(("scoreboard objectives add %s dummy"):format(cumulative_draw_times_scoreboard))
coromega:send_wo_cmd(("scoreboard objectives add %s dummy"):format(draw_times_scoreboard))
coromega:send_wo_cmd(("scoreboard objectives add %s dummy"):format(small_guaranteed_triggered_scoreboard))
coromega:when_called_by_game_menu({
    triggers = config["触发词"],
    argument_hint = "[10连抽]",
    usage = config["描述"],
})
:start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    local input = chat.msg
    coromega:print(input)
    local single_or_ten_raw = chat.msg[1]
    local single_or_ten
    if single_or_ten_raw == "10连" or single_or_ten_raw == "10连抽" or single_or_ten_raw == "十连" or single_or_ten_raw == "十连抽" then
        single_or_ten = 10
    else
        single_or_ten = tonumber(player:ask(messages["抽奖"]["询问"]))
        if not single_or_ten or (single_or_ten ~= 10 and single_or_ten ~= 1) then
            player:say(messages["抽奖"]["退出提示"])
            return
        end
    end
    while true do
        local coins = tonumber(coromega:send_ws_cmd(("scoreboard players test %s %s * *"):format(chat.name,coin_scoreboard),true)["OutputMessages"][1]["Parameters"][1]) or 0
        if coins < single_or_ten * one_draw_coin then
            player:say(messages["抽奖"]["货币不足"]:gsub("［货币显示名］",coin_name):gsub("［金额］",tostring(single_or_ten * one_draw_coin)))
            return
        end
        coromega:send_wo_cmd(("scoreboard players add %s %s %d"):format(chat.name,cumulative_draw_times_scoreboard,single_or_ten))
        coromega:send_wo_cmd(("scoreboard players remove %s %s %d"):format(chat.name,coin_scoreboard,single_or_ten * one_draw_coin))
        local small_guaranteed_triggered
        local draw_times = tonumber(coromega:send_ws_cmd(("scoreboard players test %s %s * *"):format(chat.name,draw_times_scoreboard),true)["OutputMessages"][1]["Parameters"][1]) or 0
        local small_guaranteed_triggered_score = tonumber(coromega:send_ws_cmd(("scoreboard players test %s %s * *"):format(chat.name,small_guaranteed_triggered_scoreboard),true)["OutputMessages"][1]["Parameters"][1]) or 0
        if small_guaranteed_triggered_score == 0 then
            small_guaranteed_triggered = false
        else
            small_guaranteed_triggered = true
        end
        local result = gacha(draw_times, single_or_ten, prize_list, up_prize, small_guarantee, big_guarantee, star5_probability_start, star5_probability_increase, small_guaranteed_triggered, probability_percentages,target_probability)
        for i, prize in ipairs(result[1]) do
    --        coromega:send_wo_cmd("/gamerule sendcommandfeedback false")
            player:say(messages["抽奖"]["展示模板"]:gsub("［品质颜色］",prize_pool_data["颜色"][prize.quality]):gsub("［品质］",prize.quality):gsub("［奖品］",prize.prize))
        end
        for i, prize in ipairs(result[1]) do
            if prize.prize == prize_pool_up then
                for _, up_command in ipairs(prize_pool_up_commands) do
                    coromega:send_wo_cmd(up_command:gsub("［玩家名字］",chat.name))
                end
            else
                for _, command in ipairs(prize_pool_data["非UP"][prize.quality][prize.prize]) do
                    coromega:send_wo_cmd(command:gsub("［玩家名字］",chat.name))
                end
            end
        end
        coromega:send_wo_cmd(("/scoreboard players set %s %s %d"):format(chat.name,draw_times_scoreboard,result[2]))
        if result[3] then small_guaranteed_triggered_score = 1 else small_guaranteed_triggered_score = 0 end
        coromega:send_wo_cmd(("/scoreboard players set %s %s %d"):format(chat.name,small_guaranteed_triggered_scoreboard,small_guaranteed_triggered_score))
        player:say(messages["抽奖"]["抽奖后提示"]:gsub("［金额］", tostring(single_or_ten * one_draw_coin)):gsub("［货币显示名］",coin_name):gsub("［剩余金额］",tostring(coins - (single_or_ten * one_draw_coin))))
        local is_continue = player:ask(messages["抽奖"]["继续提示"])
        if is_continue ~= "y" and is_continue ~= "Y" and is_continue ~= "是" then
            player:say(messages["抽奖"]["退出提示"])
            return
        end
    end
end)
coromega:run()