local omega = require("omega")
local json = require("json")
--- @type Coromega
local coromega = require("coromega").from(omega)
local bot_name = coromega:bot_name()
local first_check_online = true
local plugin_name = "投票踢人"
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


-- 如果你需要调试请将下面一段解除注释，关于调试的方法请参考文档
-- local dbg = require('emmy_core')
-- dbg.tcpConnect('localhost', 9966)
-- print("waiting...")
-- for i=1,1000 do -- 调试器需要一些时间来建立连接并交换所有信息
--     -- 如果始终无法命中断点，你可以尝试将 1000 改的更大
--     print(".")
-- end
-- print("end")
local say=omega.players.say_to
local config = coromega.config
local whitelist_selector = config["白名单选择器"]
local old_player_selector = config["可以使用投票踢人的选择器"]
local name = config["服主名字"]
local wait_time = config["服主进服后等待多少秒再显示投票信息"] or 20
local db_name = config["数据库名称"] or "投票踢人数据" -- 数据库的名称
local db = omega.storage.get_kv_db(db_name) -- 获取数据库
local messages = config["显示文本"]
local vote = {}
coromega:when_player_change():start_new(function(player, action)
    if action == "online" and player:name() == name then
        coromega:sleep(wait_time)
        local votes = {}
        local votes_time = {}
        db:iter(function(key, value)
            table.insert(votes_time,key)
            table.insert(votes,value)
            return true
        end)
        for index,one_vote in ipairs(votes) do
            coromega:sleep(0.5)
            player:say("投票发生"..votes_time[index].."\n"..one_vote)
            db:delete(votes_time[index])
        end
    end
end)
coromega:when_called_by_game_menu({
    triggers = config["发起投票触发词"],
    argument_hint = "[目标玩家]",
    usage = "对指定玩家发起投票进行踢出",
}):start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    if not coromega:send_ws_cmd("testfor "..old_player_selector:gsub("［玩家名字］",chat.name),true).OutputMessages[1].Success then
        player:say(messages.initiate.no_old_player)
        return
    end
    if json.encode(vote) ~= "[]" then
        player:say(messages.initiate.have_vote)
        return
    end
    
    local input = chat.msg
    local bot_name = coromega:bot_name()
    local target_player_name = input[1]
    local target_player = nil
    if not(not target_player_name or target_player_name == "" or target_player_name == chat.name or target_player_name == bot_name) then
        target_player = coromega:get_player_by_name(target_player_name)
        if target_player then
            if coromega:send_ws_cmd("testfor "..whitelist_selector:gsub("［玩家名字］",target_player_name),true).OutputMessages[1].Success then
                player:say(messages.initiate.no_whitelist)
                return
            end
        end
    end
    
    if not target_player then
        player:say(messages.initiate.invalid_input)
        local players = coromega:get_all_online_players() -- 获取所有在线玩家
        local display_players = {}
        local add=false
        for _, p in ipairs(players) do
            local pname=p:name()
            local white = coromega:send_ws_cmd("testfor "..whitelist_selector:gsub("［玩家名字］",pname),true)
            if p:name() ~= chat.name and p:name() ~= bot_name and not white.OutputMessages[1].Success then
                table.insert(display_players, p)
                add=true
            end
        end
        if not add then
            player:say(messages.initiate.no_player_list)
            return
        end
        -- 显示在线玩家列表，并让调用者选择
        for index, p in ipairs(display_players) do
            player:say(messages.initiate.player_list:gsub("［索引］", tostring(index)):gsub("［玩家］", tostring(p:name())))
        end
        local response = player:ask(messages.initiate.please)
        
        if response == "取消" then
            player:say(messages.initiate.cancel)
            return
        end
        
        local target = tonumber(response)
        if not target or target <= 0 or target > #display_players then
            player:say(messages.initiate.invalid_input)
            return
        end
        
        -- 根据用户输入选择目标玩家
        target_player = display_players[target]
        target_player_name = target_player:name()
        
    end
    
    vote = {
        ["投票时间"] = tostring(os.date("%Y年%m月%d日%H时%M分")),
        ["发起玩家"] = chat.name,
        ["目标玩家"] = target_player_name,
        ["反对玩家"] = {},
        ["赞同玩家"] = {},
        ["投票结果"] = "无"
    }
    coromega:print(json.encode(vote))
    omega.players.say_to("@a",messages.initiate.display:gsub("［玩家］",chat.name):gsub("［被投票玩家］",target_player_name))
    coromega:start_new(function()
        coromega:sleep(60)
        omega.players.say_to("@a",messages.initiate.display_time:gsub("［玩家］",vote["发起玩家"]):gsub("［被投票玩家］",vote["目标玩家"]):gsub("［时间］",tostring(120).."秒"))
        coromega:sleep(60)
        omega.players.say_to("@a",messages.initiate.display_time:gsub("［玩家］",vote["发起玩家"]):gsub("［被投票玩家］",vote["目标玩家"]):gsub("［时间］",tostring(60).."秒"))
        coromega:sleep(50)
        omega.players.say_to("@a",messages.initiate.display_time:gsub("［玩家］",vote["发起玩家"]):gsub("［被投票玩家］",vote["目标玩家"]):gsub("［时间］",tostring(10).."秒"))
        coromega:sleep(10)
        omega.players.say_to("@a",messages.initiate.over:gsub("［玩家］",vote["发起玩家"]):gsub("［被投票玩家］",vote["目标玩家"]))
        omega.players.say_to("@a",messages.initiate.ing)
        local approve = vote["赞同玩家"]
        local against = vote["反对玩家"]
        local info = messages.initiate.info:gsub("［投票时间］",vote["投票时间"]):gsub("［发起玩家］",vote["发起玩家"]):gsub("［目标玩家］",vote["目标玩家"]):gsub("［同意玩家］",json.encode(vote["赞同玩家"])):gsub("［反对玩家］",json.encode(vote["反对玩家"]))
        if #approve >= 2 and #approve > #against then
            info = info:gsub("［投票结果］","踢出")
            omega.players.say_to("@a",info)
            local result = coromega:call_other_plugin_api("/player/ban",
                { player_name = vote["目标玩家"], ban_time = config["封禁时长"], ban_reason = config["封禁提示"] })
            if result.ok then
                coromega:log_and_print(("调用成功: %s"):format(result.detail))
            else
                coromega:log_and_print(("调用失败: %s"):format(result.err))
            end
        
        else
            info = info:gsub("［投票结果］","§a保留")
            omega.players.say_to("@a",info)
        end
        db:set(vote["投票时间"],info)
        coromega:log_and_print(info)
        vote = {}
    end)
end)

coromega:when_called_by_terminal_menu({
    triggers = config["列出投票触发词"],
    argument_hint = "[无]",
    usage = "列出投票",
}):start_new(function(input)
    if json.encode(vote) == "[]" then
        coromega:print(messages.list.no_vote)
        return
    end
end)

coromega:when_called_by_game_menu({
    triggers = config["赞同投票触发词"],
    argument_hint = "[无]",
    usage = "赞同投票踢人",
}):start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    if json.encode(vote) == "[]" then
        player:say(messages.approve.no_vote)
        return
    end
    for _, value in pairs(vote["赞同玩家"]) do
        if value == chat.name then
            player:say(messages.approve.repeated)
            return
        end
    end
    
    for _, value in pairs(vote["反对玩家"]) do
        if value == chat.name then
            player:say(messages.approve.repeated)
            return
        end
    end
    table.insert(vote["赞同玩家"],chat.name)
    omega.players.say_to("@a",messages.approve.approve:gsub("［玩家］",chat.name):gsub("［发起玩家］",vote["发起玩家"]):gsub("［被投票玩家］",vote["目标玩家"]))
    omega.players.say_to("@a",messages.now:gsub("［赞同］",tostring(#vote["赞同玩家"])):gsub("［反对］",tostring(#vote["反对玩家"])))
end)

coromega:when_called_by_game_menu({
    triggers = config["反对投票触发词"],
    argument_hint = "[无]",
    usage = "反对投票踢人",
}):start_new(function(chat)
    local player = coromega:get_player_by_name(chat.name)
    if json.encode(vote) == "[]" then
        player:say(messages.against.no_vote)
        return
    end
    for _, value in pairs(vote["赞同玩家"]) do
        if value == chat.name then
            player:say(messages.against.repeated)
            return
        end
    end
    
    for _, value in pairs(vote["反对玩家"]) do
        if value == chat.name then
            player:say(messages.against.repeated)
            return
        end
    end
    table.insert(vote["反对玩家"],chat.name)
    omega.players.say_to("@a",messages.against.against:gsub("［玩家］",chat.name):gsub("［发起玩家］",vote["发起玩家"]):gsub("［被投票玩家］",vote["目标玩家"]))
    omega.players.say_to("@a",messages.now:gsub("［赞同］",tostring(#vote["赞同玩家"])):gsub("［反对］",tostring(#vote["反对玩家"])))
end)
coromega:run()
