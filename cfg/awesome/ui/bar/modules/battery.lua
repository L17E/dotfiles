---@diagnostic disable: undefined-global
local wibox = require 'wibox'
local helpers = require 'helpers'
local awful = require 'awful'
local beautiful = require 'beautiful'

local battery_container = wibox.widget {
  markup = '100', 
  align = 'center',
  font = beautiful.font_name .. ' 12',
  widget = wibox.widget.textbox,
}

awesome.connect_signal('battery::percentage', function (battery) 
	battery_container.markup = battery
end)

return battery_container
