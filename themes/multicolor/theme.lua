--[[

     Multicolor Awesome WM theme 2.0
     github.com/lcpz

--]]

local gears = require("gears")
local lain  = require("lain")
local sht   = require("sht")
local awful = require("awful")
local wibox = require("wibox")
local vicious = require("vicious")
local naughty  = require("naughty")

--local os    = { getenv = os.getenv, setlocale = os.setlocale }

local dpi   = require("beautiful.xresources").apply_dpi
local os = os
local my_table = awful.util.table or gears.table -- 4.{0,1} compatibility

function setwallpaper(s)
    return os.getenv("HOME") .. "/Downloads/Lime\ Light/WallpaperFusion-lime-light-5760x1080-M" .. s.index .. ".jpg"
end

local theme                                     = {}
theme.confdir                                   = os.getenv("HOME") .. "/.config/awesome/themes/multicolor"
theme.wallpaper                                 = setwallpaper
theme.font                                      = "xos4 Terminus 8"
theme.menu_bg_normal                            = "#000000"
theme.menu_bg_focus                             = "#000000"
theme.bg_normal                                 = "#000000"
theme.bg_focus                                  = "#000000"
theme.bg_urgent                                 = "#000000"
theme.fg_normal                                 = "#aaaaaa"
theme.fg_focus                                  = "#ff8c00"
theme.fg_urgent                                 = "#af1d18"
theme.fg_minimize                               = "#ffffff"
theme.border_width                              = dpi(1)
theme.border_normal                             = "#1c2022"
theme.border_focus                              = "#606060"
theme.border_marked                             = "#3ca4d8"
theme.menu_border_width                         = 0
theme.menu_width                                = dpi(130)
theme.menu_submenu_icon                         = theme.confdir .. "/icons/submenu.png"
theme.menu_fg_normal                            = "#aaaaaa"
theme.menu_fg_focus                             = "#ff8c00"
theme.menu_bg_normal                            = "#050505dd"
theme.menu_bg_focus                             = "#050505dd"
theme.widget_temp                               = theme.confdir .. "/icons/temp.png"
theme.widget_uptime                             = theme.confdir .. "/icons/ac.png"
theme.widget_cpu                                = theme.confdir .. "/icons/cpu.png"
theme.widget_gpu                                = theme.confdir .. "/icons/gpu.png"
theme.widget_fs                                 = theme.confdir .. "/icons/fs.png"
theme.widget_mem                                = theme.confdir .. "/icons/mem.png"
theme.widget_note                               = theme.confdir .. "/icons/note.png"
theme.widget_note_on                            = theme.confdir .. "/icons/note_on.png"
theme.widget_netdown                            = theme.confdir .. "/icons/net_down.png"
theme.widget_netup                              = theme.confdir .. "/icons/net_up.png"
theme.widget_mail                               = theme.confdir .. "/icons/mail.png"
theme.widget_batt                               = theme.confdir .. "/icons/bat.png"
theme.widget_clock                              = theme.confdir .. "/icons/clock.png"
theme.widget_vol                                = theme.confdir .. "/icons/spkr.png"
theme.taglist_squares_sel                       = theme.confdir .. "/icons/square_a.png"
theme.taglist_squares_unsel                     = theme.confdir .. "/icons/square_b.png"
theme.tasklist_plain_task_name                  = true
theme.tasklist_disable_icon                     = true
theme.useless_gap                               = 0
theme.layout_tile                               = theme.confdir .. "/icons/tile.png"
theme.layout_tilegaps                           = theme.confdir .. "/icons/tilegaps.png"
theme.layout_tileleft                           = theme.confdir .. "/icons/tileleft.png"
theme.layout_tilebottom                         = theme.confdir .. "/icons/tilebottom.png"
theme.layout_tiletop                            = theme.confdir .. "/icons/tiletop.png"
theme.layout_fairv                              = theme.confdir .. "/icons/fairv.png"
theme.layout_fairh                              = theme.confdir .. "/icons/fairh.png"
theme.layout_spiral                             = theme.confdir .. "/icons/spiral.png"
theme.layout_dwindle                            = theme.confdir .. "/icons/dwindle.png"
theme.layout_max                                = theme.confdir .. "/icons/max.png"
theme.layout_fullscreen                         = theme.confdir .. "/icons/fullscreen.png"
theme.layout_magnifier                          = theme.confdir .. "/icons/magnifier.png"
theme.layout_floating                           = theme.confdir .. "/icons/floating.png"
theme.titlebar_bg_focus                         = "#ffffff"
theme.titlebar_fg_focus                         = "#000000"
theme.titlebar_close_button_normal              = theme.confdir .. "/icons/titlebar/close_normal.png"
theme.titlebar_close_button_focus               = theme.confdir .. "/icons/titlebar/close_focus.png"
theme.titlebar_minimize_button_normal           = theme.confdir .. "/icons/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus            = theme.confdir .. "/icons/titlebar/minimize_focus.png"
theme.titlebar_ontop_button_normal_inactive     = theme.confdir .. "/icons/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive      = theme.confdir .. "/icons/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active       = theme.confdir .. "/icons/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active        = theme.confdir .. "/icons/titlebar/ontop_focus_active.png"
theme.titlebar_sticky_button_normal_inactive    = theme.confdir .. "/icons/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive     = theme.confdir .. "/icons/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active      = theme.confdir .. "/icons/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active       = theme.confdir .. "/icons/titlebar/sticky_focus_active.png"
theme.titlebar_floating_button_normal_inactive  = theme.confdir .. "/icons/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive   = theme.confdir .. "/icons/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active    = theme.confdir .. "/icons/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active     = theme.confdir .. "/icons/titlebar/floating_focus_active.png"
theme.titlebar_maximized_button_normal_inactive = theme.confdir .. "/icons/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.confdir .. "/icons/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active   = theme.confdir .. "/icons/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active    = theme.confdir .. "/icons/titlebar/maximized_focus_active.png"
theme.tooltip_fg = theme.fg_normal
theme.tooltip_bg = theme.bg_normal

local markup = lain.util.markup

-- Textclock
os.setlocale(os.getenv("LANG")) -- to localize the clock
local clockicon = wibox.widget.imagebox(theme.widget_clock)
local mytextclock = wibox.widget.textclock(markup("#7788af", "%A %d %B ") .. markup("#ab7367", ">") .. markup("#de5e1e", " %H:%M "))
mytextclock.font = theme.font

-- Calendar
theme.cal = lain.widget.cal({
    followtag = true,
    attach_to = { mytextclock },
    notification_preset = {
        font = "xos4 Terminus 10",
        fg   = theme.fg_normal,
        bg   = theme.bg_normal
    }
})

-- / fs
--[[ commented because it needs Gio/Glib >= 2.54
local fsicon = wibox.widget.imagebox(theme.widget_fs)
theme.fs = lain.widget.fs({
<<<<<<< HEAD
    followtag = true,
    options = "--exclude-type=tmpfs",
=======
>>>>>>> b3ffda4d441e259f141736efcf690c712c8c7082
    notification_preset = { font = "xos4 Terminus 10", fg = theme.fg_normal },
    settings  = function()
        widget:set_markup(markup.fontfg(theme.font, "#80d9d8", string.format("%.1f", fs_now["/"].used) .. "% "))
    end
})
--]]

-- CPU (all cores)
local cpuicon = wibox.widget.imagebox(theme.widget_cpu)
local cpu = lain.widget.cpu({
    settings = function()
        local m = ""
        for i = 1, #cpu_now do 
            m = m .. cpu_now[i].usage .. "% " 
        end
        widget:set_markup(markup.fontfg(theme.font, "#e33a6e", m))
    end
})

-- Coretemp
local tempicon = wibox.widget.imagebox(theme.widget_temp)
local cputemp = lain.widget.temp({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#f1af5f", "CPU " .. coretemp_now .. "°C "))
    end
})

-- APC
local apcicon = wibox.widget.imagebox(theme.widget_batt)
local apc = sht.widget.apc({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, theme.fg_normal, apc_now.perc .. " % " .. apc_now.time_left .. " M "))
    end
})

-- Pulse volume
local volicon = wibox.widget.imagebox(theme.widget_vol)
theme.volume = sht.widget.pulseaudio({
    colors = {
        background = theme.fg_normal,
        mute       = "#EB8F8F",
        unmute     = "#7493d2"
    }
})

-- Net
local netip = wibox.widget.textbox()
local netdownicon = wibox.widget.imagebox(theme.widget_netdown)
local netdowninfo = wibox.widget.textbox()
local netupicon = wibox.widget.imagebox(theme.widget_netup)
local netupinfo = lain.widget.net({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#e54c62", net_now.sent .. " "))
        netdowninfo:set_markup(markup.fontfg(theme.font, "#87af5f", net_now.received .. " "))
        --netip:set_markup(markup.fontfg(theme.font, "#87af5f", net_now.carrier .. " "))
    end
})

-- MEM
local memicon = wibox.widget.imagebox(theme.widget_mem)
local memory = lain.widget.mem({
    settings = function()
        widget:set_markup(markup.fontfg(theme.font, "#e0da37", mem_now.used .. "M "))
    end
})

-- MPD
local mpdicon = wibox.widget.imagebox()
theme.mpd = lain.widget.mpd({
    settings = function()
        mpd_notification_preset = {
            text = string.format("%s [%s] - %s\n%s", mpd_now.artist,
                   mpd_now.album, mpd_now.date, mpd_now.title)
        }

        if mpd_now.state == "play" then
            artist = mpd_now.artist .. " > "
            title  = mpd_now.title .. " "
            mpdicon:set_image(theme.widget_note_on)
        elseif mpd_now.state == "pause" then
            artist = "mpd "
            title  = "paused "
        else
            artist = ""
            title  = ""
            --mpdicon:set_image() -- not working in 4.0
            mpdicon._private.image = nil
            mpdicon:emit_signal("widget::redraw_needed")
            mpdicon:emit_signal("widget::layout_changed")
        end
        widget:set_markup(markup.fontfg(theme.font, "#e54c62", artist) .. markup.fontfg(theme.font, "#b2b2b2", title))
    end
})

-- {{{ HDD Temp
local hddtempwidget = wibox.widget.textbox()
vicious.register(hddtempwidget, vicious.widgets.hddtemp, 
    function (widget, args)
        local maxK = nil
        local maxV = 0

        if not hddtempwidget.temps then
            hddtempwidget.temps = {}
        end

        for k,v in pairs(args) do
            hddtempwidget.temps[k] = v
        end

        for k, v in pairs(hddtempwidget.temps) do
            if hddtempwidget.temps[k] > maxV then
                maxK, maxV = k, v
            end
        end

        if maxV > 0 then
            return string.format('<span color="#f1af5f">%s %i°C</span>', string.sub(maxK, 2, string.len(maxK) - 1), maxV)
        else
            return '<span color="#f1af5f">N/A</span>'
        end
    end, 
19)

function hddtempwidget.hide()
    if not hddtempwidget.notification then return end
    naughty.destroy(hddtempwidget.notification)
    hddtempwidget.notification = nil
end

function hddtempwidget.show(seconds, scr)
    --fs.update()
    hddtempwidget.hide()
    hddtempwidget.notification_preset.screen = scr or 1

    local tkeys = {}
    -- populate the table that holds the keys
    for k in pairs(hddtempwidget.temps) do table.insert(tkeys, k) end
    -- sort the keys
    table.sort(tkeys)

    local text = ""
    for _, k in ipairs(tkeys) do
        v = hddtempwidget.temps[k]
        text = text .. string.sub(k, 2, string.len(k) - 1) .. "\t\t" .. v .. "°C\n"
    end

    hddtempwidget.notification = naughty.notify({
        text = text,
        preset  = hddtempwidget.notification_preset,
        timeout = seconds or 5
    })
end

hddtempwidget.notification_preset = { font = "xos4 Terminus 10", fg = theme.fg_normal }
hddtempwidget:connect_signal('mouse::enter', function () hddtempwidget.show(0) end)
hddtempwidget:connect_signal('mouse::leave', function () hddtempwidget.hide() end)
-- }}}

-- {{{ GPU 
local gpuicon = wibox.widget.imagebox(theme.widget_gpu)
local gpuwidget = wibox.widget.textbox()
vicious.register(gpuwidget, 
    function(format, warg)
        local data = {}
        local f = io.popen("nvidia-smi --query-gpu=temperature.gpu,utilization.gpu,clocks.current.graphics,utilization.memory,power.draw --format=csv,noheader")
        for line in f:lines() do
            for sub in string.gmatch(string.gsub(line, "%%", "%%%%"), '([^,]+)') do
                table.insert(data, sub)
            end
        end

        return data
    end, '<span color="#D93B3B">$1°C $2 $3 $4 $5</span>', 
15)
---}}}

function theme.at_screen_connect(s)
    -- Quake application
    s.quake = lain.util.quake({ app = awful.util.terminal })

    -- If wallpaper is a function, call it with the screen
    local wallpaper = theme.wallpaper
    if type(wallpaper) == "function" then
        wallpaper = wallpaper(s)
    end
    gears.wallpaper.maximized(wallpaper, s, true)

    -- Tags
    awful.tag(awful.util.tagnames, s, awful.layout.layouts)

    -- Create a promptbox for each screen
    s.mypromptbox = awful.widget.prompt()
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    s.mylayoutbox = awful.widget.layoutbox(s)
    s.mylayoutbox:buttons(my_table.join(
                           awful.button({}, 1, function () awful.layout.inc( 1) end),
                           awful.button({}, 2, function () awful.layout.set( awful.layout.layouts[1] ) end),
                           awful.button({}, 3, function () awful.layout.inc(-1) end),
                           awful.button({}, 4, function () awful.layout.inc( 1) end),
                           awful.button({}, 5, function () awful.layout.inc(-1) end)))
    -- Create a taglist widget
    s.mytaglist = awful.widget.taglist(s, awful.widget.taglist.filter.all, awful.util.taglist_buttons)

    -- Create a tasklist widget
    s.mytasklist = awful.widget.tasklist(s, awful.widget.tasklist.filter.currenttags, awful.util.tasklist_buttons)

    -- Create the wibox
    s.mywibox = awful.wibar({ position = "top", screen = s, height = dpi(20), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the wibox
    s.mywibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
            --s.mylayoutbox,
            s.mytaglist,
            s.mypromptbox,
            mpdicon,
            theme.mpd.widget,
        },
        --s.mytasklist, -- Middle widget
        nil,
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            wibox.widget.systray(),
            netdownicon,
            netdowninfo,
            netupicon,
            netupinfo.widget,
            volicon,
            theme.volume.widget,
            memicon,
            memory.widget,
            cpuicon,
            cpu.widget,
            tempicon,
            cputemp.widget,
            tempicon,
            hddtempwidget,
            gpuicon,
            gpuwidget,
            --fsicon,
            --theme.fs.widget,
            apcicon,
            apc.widget,
            clockicon,
            mytextclock,
        },
    }

    -- Create the bottom wibox
    s.mybottomwibox = awful.wibar({ position = "bottom", screen = s, border_width = 0, height = dpi(20), bg = theme.bg_normal, fg = theme.fg_normal })

    -- Add widgets to the bottom wibox
    s.mybottomwibox:setup {
        layout = wibox.layout.align.horizontal,
        { -- Left widgets
            layout = wibox.layout.fixed.horizontal,
        },
        s.mytasklist, -- Middle widget
        { -- Right widgets
            layout = wibox.layout.fixed.horizontal,
            s.mylayoutbox,
        },
    }
end

return theme
