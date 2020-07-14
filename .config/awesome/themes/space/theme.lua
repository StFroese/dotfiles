---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = "~/.config/awesome/themes/"--gfs.get_themes_dir()

local theme = {}

theme.font          = "JetBrains Mono 11"
------- Colours Wallpaper -------
--Violet Bg #483c6c
--Darkest Violet #433765
--Mid Violet #675e8d
--Highlight Violet #726d9a
--Darkest Cyan #1fbcc3
--Darkest2 Cyan #00e0d3
--Mid Cyan #0cffe1
--White Cyan #fdfffd
--Darkest Red #da0f7a
--Mid Red #f0077c
--Highlight #ff217c
--Transition Red-Orange #fe5e78
--Darkest Orange #fea084
--Mid Orange #fed287
--Highlight Orange #fef082
--------------------------------

theme.darkV = "#433765"
theme.darkVBg = "#483c6c"
theme.midV = "#675e8d"
theme.highV = "#7260da"
theme.darkCy = "#1fbbc3"
theme.darkCy2 = "#00e0d3"
theme.midCy = "#0cffe1"
theme.highCy = "#fdfffd"
theme.darkR = "#da0f7a"
theme.midR = "#f0077c"
theme.highR = "#ff217c"
theme.transRO = "#fe5e78"
theme.darkO = "#fea084"
theme.midO = "#fed287"
theme.highO = "#fef082"

theme.bg_normal     = theme.midV .. "F2"
theme.bg_focus      = theme.darkCy .. "F2"
theme.bg_urgent     = theme.darkCy
theme.bg_minimize   = theme.darkCy
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = theme.highCy
theme.fg_focus      = theme.highCy
theme.fg_urgent     = theme.highCy
theme.fg_minimize   = theme.highCy

theme.useless_gap   = dpi(2)
theme.border_width  = dpi(0)
theme.border_normal = "#000000"
theme.border_focus  = "#000000"
theme.border_radius = dpi(0)


-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

theme.taglist_bg_focus = theme.highR
theme.taglist_bg_occupied = theme.transRO
theme.taglist_bg_empty = theme.transRO

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path.."space/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

----Titlebar
theme.titlebar_font= theme.font

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."space/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = themes_path.."space/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path.."space/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."space/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."space/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."space/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."space/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."space/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."space/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."space/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."space/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."space/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."space/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."space/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."space/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."space/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."space/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."space/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."space/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."space/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."space/wallpaper.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."space/layouts/fairhw.png"
theme.layout_fairv = themes_path.."space/layouts/fairvw.png"
theme.layout_floating  = themes_path.."space/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."space/layouts/magnifierw.png"
theme.layout_max = themes_path.."space/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."space/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."space/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."space/layouts/tileleftw.png"
theme.layout_tile = themes_path.."space/layouts/tilew.png"
theme.layout_tiletop = themes_path.."space/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."space/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."space/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."space/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."space/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."space/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."space/layouts/cornersew.png"


-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
