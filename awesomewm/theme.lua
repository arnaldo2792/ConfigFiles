local theme_assets = require("beautiful.theme_assets")
local dpi = require("beautiful.xresources").apply_dpi
local wallpapers = os.getenv("HOME") .. "/Wallpapers/"

local theme = {}

theme.font          = "Roboto 8"

theme.bg_normal     = "#1e1f29"
theme.bg_focus      = "#535d6c"
theme.bg_urgent     = "#ff5555"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#f8f8f2"
theme.fg_focus      = "#f8f8f8"
theme.fg_urgent     = "#ffffff"

theme.useless_gap   = dpi(0)
theme.border_width  = dpi(1)
theme.border_normal = "#1e1f29"
theme.border_focus  = "#6272A4"

theme.wallpaper = wallpapers .. "mountains.jpg"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
