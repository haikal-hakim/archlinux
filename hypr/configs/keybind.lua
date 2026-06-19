---@diagnostic disable: undefined-global

local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "thunar"
local home = os.getenv("HOME")

-- APP & SISTEM --
hl.bind(mainMod .. " + Return", function()
	hl.dispatch(hl.dsp.exec_cmd(terminal))
end)

hl.bind(mainMod .. " + E", function()
	hl.dispatch(hl.dsp.exec_cmd(fileManager))
end)

hl.bind(mainMod .. " + L", function()
	hl.dispatch(hl.dsp.exec_cmd("hyprlock"))
end)

hl.bind("ALT + F4", function()
	hl.dispatch(hl.dsp.exec_cmd("wlogout -b 2 -L 500 -R 500 -T 300 -B 300"))
end)

hl.bind(mainMod .. " + space", function()
	hl.dispatch(hl.dsp.exec_cmd("eww close window_bar || eww open window_bar"))
end)

hl.bind(mainMod .. " + D", function()
	hl.dispatch(hl.dsp.exec_cmd("eww close window_dashboard || eww open window_dashboard"))
end)

-- Rofi --
hl.bind("F23", function()
	hl.dispatch(
		hl.dsp.exec_cmd(
			"pgrep -x rofi && pkill -x rofi || rofi -show drun -theme " .. home .. "/.config/rofi/config.rasi"
		)
	)
end)

hl.bind(mainMod .. " + V", function()
	hl.dispatch(
		hl.dsp.exec_cmd(
			"cliphist list | head -n 10 | rofi -dmenu -theme "
				.. home
				.. "/.config/rofi/clipboard.rasi | cliphist decode | wl-copy"
		)
	)
end)

-- Window Switcher --
hl.bind("ALT + Tab", function()
	hl.dispatch(hl.dsp.exec_cmd("rofi -show window -theme " .. home .. "/.config/rofi/window.rasi"))
end)

-- Record & Screenshot --
hl.bind(mainMod .. " + SHIFT + R", function()
	hl.dispatch(hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/record.sh"))
end)

hl.bind(mainMod .. " + SHIFT + S", function()
	hl.dispatch(hl.dsp.exec_cmd(home .. "/.config/hypr/scripts/screenshot.sh"))
end)

-- Window management --
hl.bind(mainMod .. " + Q", function()
	hl.dispatch(hl.dsp.window.close())
end)

hl.bind(mainMod .. " + O", function()
	hl.dispatch(hl.dsp.exec_cmd("bash " .. home .. "/.config/hypr/scripts/toggle_float_center.sh"))
end)

hl.bind(mainMod .. " + P", function()
	hl.dispatch(hl.dsp.layout("togglesplit"))
end)

hl.bind(mainMod .. " + SHIFT + M", function()
	hl.dispatch(hl.dsp.window.move({ workspace = "special:magic" }))
end)

hl.bind(mainMod .. " + M", function()
	hl.dispatch(hl.dsp.workspace.toggle_special("magic"))
end)

hl.bind(mainMod .. " + SHIFT + left", function()
	hl.dispatch(hl.dsp.window.move({ direction = "l" }))
end)

hl.bind(mainMod .. " + SHIFT + right", function()
	hl.dispatch(hl.dsp.window.move({ direction = "r" }))
end)

hl.bind(mainMod .. " + SHIFT + up", function()
	hl.dispatch(hl.dsp.window.move({ direction = "u" }))
end)

hl.bind(mainMod .. " + SHIFT + down", function()
	hl.dispatch(hl.dsp.window.move({ direction = "d" }))
end)

-- WORKSPACES --
for i = 1, 9 do
	local workspaceKey = tostring(i)
	hl.bind("ALT + " .. workspaceKey, function()
		hl.dispatch(hl.dsp.focus({ workspace = workspaceKey }))
	end)
	hl.bind("ALT + SHIFT + " .. workspaceKey, function()
		hl.dispatch(hl.dsp.window.move({ workspace = workspaceKey }))
	end)
end

hl.bind("ALT + 0", function()
	hl.dispatch(hl.dsp.focus({ workspace = "10" }))
end)

hl.bind("ALT + SHIFT + 0", function()
	hl.dispatch(hl.dsp.window.move({ workspace = "10" }))
end)

-- Scroll through workspaces --
hl.bind("ALT + mouse_down", function()
	hl.dispatch(hl.dsp.focus({ workspace = "e+1" }))
end)

hl.bind("ALT + mouse_up", function()
	hl.dispatch(hl.dsp.focus({ workspace = "e-1" }))
end)

-- Move/resize with mouse --
hl.bind("ALT + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("ALT + mouse:273", hl.dsp.window.resize(), { mouse = true })

--- MULTIMEDIA KEYS ---
-- Volume --
hl.bind("XF86AudioRaiseVolume", function()
	hl.dispatch(hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+"))
end, { repeating = true })

hl.bind("XF86AudioLowerVolume", function()
	hl.dispatch(hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"))
end, { repeating = true })

hl.bind("XF86AudioMute", function()
	hl.dispatch(hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"))
end, { locked = true })

hl.bind("XF86Launch6", function()
	hl.dispatch(hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"))
end, { locked = true })

-- Brightness --
hl.bind("XF86MonBrightnessUp", function()
	hl.dispatch(hl.dsp.exec_cmd("brightnessctl set 2%+"))
end, { repeating = true })

hl.bind("XF86MonBrightnessDown", function()
	hl.dispatch(hl.dsp.exec_cmd("brightnessctl set 2%-"))
end, { repeating = true })

-- Media (playerctl) --
hl.bind("XF86AudioNext", function()
	hl.dispatch(hl.dsp.exec_cmd("playerctl next"))
end, { locked = true })

hl.bind("XF86AudioPause", function()
	hl.dispatch(hl.dsp.exec_cmd("playerctl play-pause"))
end, { locked = true })

hl.bind("XF86AudioPlay", function()
	hl.dispatch(hl.dsp.exec_cmd("playerctl play-pause"))
end, { locked = true })

hl.bind("XF86AudioPrev", function()
	hl.dispatch(hl.dsp.exec_cmd("playerctl previous"))
end, { locked = true })
