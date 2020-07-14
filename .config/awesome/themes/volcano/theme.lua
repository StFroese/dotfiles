---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local dpi = xresources.apply_dpi

local gfs = require("gears.filesystem")
local themes_path = "~/.config/awesome/themes/"--gfs.get_themes_dir()

local theme = {}

---Colorscheme
theme.volcano_bg = "#191D20"
theme.volcano_bg_gr = "#1e2326"
theme.volcano_fg = "#DDD3C1"
theme.volcano_fg_o = "#E1CCA4"
theme.volcano_0 = "#242b3a"
theme.volcano_1 = "#424f6a"
theme.volcano_2 = "#af5200"
theme.volcano_3 = "#ff7700"
theme.volcano_4 = "#af2e2e"
theme.volcano_5 = "#ff4747"
--button #20b3c3

theme.font          = "JetBrains Mono 11"

theme.bg_normal     = theme.volcano_bg 
theme.bg_focus      = theme.volcano_bg
theme.bg_urgent     = theme.bg_normal
theme.bg_minimize   = theme.bg_normal
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = theme.volcano_fg
theme.fg_focus      = theme.volcano_3--volcano_fg_o
theme.fg_urgent     = theme.volcano_5
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
theme.menu_submenu_icon = themes_path.."volcano/submenu.png"
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path.."volcano/titlebar/close_focus.svg"
theme.titlebar_close_button_focus  = themes_path.."volcano/titlebar/close_focus.svg"


theme.titlebar_minimize_button_normal = themes_path.."volcano/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path.."volcano/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path.."volcano/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path.."volcano/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path.."volcano/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_focus_active  = themes_path.."volcano/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path.."volcano/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path.."volcano/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path.."volcano/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = themes_path.."volcano/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path.."volcano/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = themes_path.."volcano/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path.."volcano/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = themes_path.."volcano/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path.."volcano/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path.."volcano/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path.."volcano/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = themes_path.."volcano/titlebar/maximized_focus_active.png"

theme.wallpaper = themes_path.."volcano/wallpaper.jpg"

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."volcano/layouts/fairhw.png"
theme.layout_fairv = themes_path.."volcano/layouts/fairvw.png"
theme.layout_floating  = themes_path.."volcano/layouts/floatingw.png"
theme.layout_magnifier = themes_path.."volcano/layouts/magnifierw.png"
theme.layout_max = themes_path.."volcano/layouts/maxw.png"
theme.layout_fullscreen = themes_path.."volcano/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."volcano/layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."volcano/layouts/tileleftw.png"
theme.layout_tile = themes_path.."volcano/layouts/tilew.png"
theme.layout_tiletop = themes_path.."volcano/layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."volcano/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."volcano/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."volcano/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."volcano/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."volcano/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."volcano/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
