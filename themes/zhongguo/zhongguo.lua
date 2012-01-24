----------------------------------
--   "Zhongguo" awesome theme   --
--       By Tony @ git-pull     --
--   based on Zenburn by anrxc  --
--     License:  GNU GPL v2     --
----------------------------------


-- {{{ Main
theme = {}
theme.themedir       = awful.util.getdir("config")
theme.themedir      = theme.themedir .. "/themes/zhongguo"
-- }}}

theme.wallpaper_cmd = { "" }



-- {{{ Styles
theme.font      = "Terminus 10"

-- {{{ Colors
theme.fg_normal = "#DCDCCC"
theme.fg_focus  = "#F0DFAF"
theme.fg_urgent = "#CC9393"
theme.bg_normal = "#3F3F3F"
theme.bg_focus  = "#1E2320"
theme.bg_urgent = theme.bg_normal
-- }}}

-- {{{ Borders
theme.border_width  = 1
theme.border_focus  = "#8E2323"
theme.border_normal = "#333333"

theme.border_marked = theme.fg_urgent
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = theme.bg_normal
theme.titlebar_bg_normal = theme.bg_normal
-- theme.titlebar_[normal|focus]
-- }}}

-- {{{ Widgets
theme.fg_widget        = "#AECF96"
theme.fg_center_widget = "#88A175"
theme.fg_end_widget    = "#FF5656"
theme.fg_off_widget    = "#494B4F"
theme.fg_netup_widget  = "#7F9F7F"
theme.fg_netdn_widget  = theme.fg_urgent
theme.bg_widget        = theme.bg_normal
theme.border_widget    = theme.bg_normal
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = theme.fg_urgent
-- theme.mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Tooltips
-- theme.tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- }}}

-- {{{ Taglist and Tasklist
-- theme.[taglist|tasklist]_[bg|fg]_[focus|urgent]
theme.taglist_bg_focus  = theme.bg_focus
theme.taglist_bg_normal = theme.bg_normal
theme.taglist_bg_urgent = theme.bg_normal
theme.taglist_fg_urgent = '#CC9393'
-- }}}

-- {{{ Menu
-- theme.menu_[bg|fg]_[normal|focus]
-- theme.menu_[height|width|border_color|border_width]
-- }}}
-- }}}


-- {{{ Icons
--
-- {{{ Taglist icons
theme.taglist_squares_sel   = theme.themedir .. "/icons/taglist/squarefz.png"
theme.taglist_squares_unsel = theme.themedir .. "/icons/taglist/squareza.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc icons
--theme.awesome_icon           = theme.themedir .. "/icons/awesome.png"
--theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
--theme.tasklist_floating_icon = "/usr/share/awesome/themes/default/tasklist/floatingw.png"
-- }}}

-- {{{ Layout icons
theme.layout_tile       = theme.themedir .. "/icons/layouts/tile.png"
theme.layout_tileleft   = theme.themedir .. "/icons/layouts/tileleft.png"
theme.layout_tilebottom = theme.themedir .. "/icons/layouts/tilebottom.png"
theme.layout_tiletop    = theme.themedir .. "/icons/layouts/tiletop.png"
theme.layout_fairv      = theme.themedir .. "/icons/layouts/fairv.png"
theme.layout_fairh      = theme.themedir .. "/icons/layouts/fairh.png"
theme.layout_spiral     = theme.themedir .. "/icons/layouts/spiral.png"
theme.layout_dwindle    = theme.themedir .. "/icons/layouts/dwindle.png"
theme.layout_max        = theme.themedir .. "/icons/layouts/max.png"
theme.layout_fullscreen = theme.themedir .. "/icons/layouts/fullscreen.png"
theme.layout_magnifier  = theme.themedir .. "/icons/layouts/magnifier.png"
theme.layout_floating   = theme.themedir .. "/icons/layouts/floating.png"
-- }}}

-- {{{ Widget icons
theme.widget_cpu    = theme.themedir .. "/icons/cpu.png"
theme.widget_bat    = theme.themedir .. "/icons/bat.png"
theme.widget_mem    = theme.themedir .. "/icons/mem.png"
theme.widget_fs     = theme.themedir .. "/icons/disk.png"
theme.widget_net    = theme.themedir .. "/icons/down.png"
theme.widget_netup  = theme.themedir .. "/icons/up.png"
theme.widget_wifi   = theme.themedir .. "/icons/wifi.png"
theme.widget_mail   = theme.themedir .. "/icons/mail.png"
theme.widget_vol    = theme.themedir .. "/icons/vol.png"
theme.widget_org    = theme.themedir .. "/icons/cal.png"
theme.widget_date   = theme.themedir .. "/icons/time.png"
theme.widget_crypto = theme.themedir .. "/icons/crypto.png"
theme.widget_sep    = theme.themedir .. "/icons/separator.png"
-- }}}

-- {{{ Titlebar icons
theme.titlebar_close_button_focus  = theme.themedir .. "/icons/titlebar/close_focus.png"
theme.titlebar_close_button_normal = theme.themedir .. "/icons/titlebar/close_normal.png"

theme.titlebar_ontop_button_focus_active    = theme.themedir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active   = theme.themedir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = theme.themedir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = theme.themedir .. "/icons/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active    = theme.themedir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active   = theme.themedir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = theme.themedir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = theme.themedir .. "/icons/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active    = theme.themedir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active   = theme.themedir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = theme.themedir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = theme.themedir .. "/icons/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active    = theme.themedir .. "/icons/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active   = theme.themedir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = theme.themedir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = theme.themedir .. "/icons/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme
