---@diagnostic disable: undefined-global

--- HYPRLAND MAIN CONFIG ---
require("configs.keybind")
require("configs.exec-once")
require("configs.env")
require("configs.look-feel")
require("configs.window-layer")

--- INPUT ---
hl.config({
	input = {
		kb_layout = "us",
		repeat_rate = 50,
		repeat_delay = 300,
		follow_mouse = 1,
		sensitivity = 0,

		touchpad = {
			natural_scroll = false,
			tap_to_click = true,
		},
	},
})

--- GESTURES ---
hl.gesture({ fingers = 3, direction = "horizontal", action = "workspace" })

--- DEVICE CONFIG ---
hl.device({
	name = "epic-mouse-v1",
	sensitivity = -0.5,
})

--- MONITORS ---
hl.monitor({ output = "eDP-1", mode = "2880x1800@120", position = "0x0", scale = 2 })
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1 })
hl.monitor({ output = "", mode = "preferred", position = "auto", scale = 1, mirror = "eDP-1" })

--- PERMISSIONS ---
-- hl.config({
--     permissions = {
--         { path = "/usr/bin/grim", type = "screencopy", action = "allow" },
--         { path = "/usr/libexec/xdg-desktop-portal-hyprland", type = "screencopy", action = "allow" },
--         { path = "/usr/bin/hyprpm", type = "plugin",     action = "allow" },
--     }
-- })
