local gears = require 'gears'
local awful = require 'awful'

local cmd = "upower -i $(upower -e | grep BAT) | grep 'percentage' | awk '{print $2}' | sed 's/%//g'"

gears.timer {
    timeout = 60,
    call_now = true,
    autostart = true,
    callback = function ()
        awful.spawn.easy_async_with_shell(cmd, function (battery)d
            awesome.emit_signal('battery::percentage', tonumber(battery))
        end)
    end
}
