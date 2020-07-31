--------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = "~/.config/awesome/themes/"--gfs.get_themes_dir()

local theme = {}

---Colorscheme
theme.starset_bg = "#222533"
theme.starset_fg = "#D1D6F0"
theme.starset_3 = "#15BCAB"
theme.starset_5 = "#E1DE00"
--button #20b3c3

theme.font          = "JetBrains Mono 11"

theme.bg_normal     = theme.starset_bg 
theme.bg_focus      = theme.starset_bg
theme.bg_urgent     = theme.bg_normal
theme.bg_minimize   = theme.bg_normal
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = theme.starset_fg
theme.fg_focus      = theme.starset_3--starset_fg_o
theme.fg_urgent     = theme.starset_5
theme.fg_minimize   = theme.fg_normal

theme.useless_gap   = dpi(3)
theme.border_width  = dpi(0)
theme.screen_margin = dpi(3)
theme.border_normal = theme.bg_normal
theme.border_focus  = theme.bg_normal
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

-- Generate taglist squares:
theme.taglist_font = "Typicon 18"
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
theme.menu_submenu_icon = themes_path.."starset/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."starset/titlebar/close_focus.svg"
theme.titlebar_close_button_focus  = themes_path.."starset/titlebar/close_focus.svg"


theme.titlebar_minimize_button_normal = themes_path.."starset/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."starset/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."starset/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."starset/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."starset/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."starset/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."starset/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."starset/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."starset/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."starset/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."starset/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."starset/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."starset/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."starset/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."starset/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."starset/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."starset/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."starset/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."starset/wallpaper.png"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."starset/layouts/fairhw.png"
theme.layout_fairv = themes_path.."starset/layouts/fairvw.png"
theme.layout_floating  = themes_path.."starset/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."starset/layouts/magnifierw.png"
theme.layout_max = themes_path.."starset/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."starset/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."starset/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."starset/layouts/tileleftw.png"
theme.layout_tile = themes_path.."starset/layouts/tilew.png"
theme.layout_tiletop = themes_path.."starset/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."starset/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."starset/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."starset/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."starset/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."starset/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."starset/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
