local wibox = require 'wibox'
local gears = require 'gears'
local awful = require 'awful'
local beautiful = require 'beautiful'

local kb_layout_widget = awful.widget.keyboardlayout()
kb_layout_widget.widget.font = beautiful.font_name .. ' 13'
return kb_layout_widget
