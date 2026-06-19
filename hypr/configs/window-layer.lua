---@diagnostic disable: undefined-global

--- GLOBAL SETTINGS ---
hl.config({
	xwayland = {
		force_zero_scaling = true,
	},
})

--- WINDOW RULES ---
hl.window_rule({ match = { workspace = "s[true]" }, float = true })
hl.window_rule({ match = { class = ".*" }, suppress_event = "maximize" })

hl.window_rule({
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})

hl.window_rule({
	match = { class = "hyprland-run" },
	float = true,
	move = { "20", "monitor_h - 120" },
})

-- Screen sharing --
hl.window_rule({
	match = { class = "xwaylandvideobridge" },
	opacity = "0.0 override",
	no_anim = true,
	no_focus = true,
	no_initial_focus = true,
	max_size = { 1, 1 },
	no_blur = true,
})

hl.window_rule({
	match = {
		title = "^(Sharing).*$",
		class = "^(google-chrome|firefox|Brave-browser)$",
	},
	float = true,
})

hl.window_rule({
	match = { class = "^(zoom)$", title = "^(as_toolbar).*$" },
	no_anim = true,
	no_blur = true,
})

hl.window_rule({
	match = { class = "^(com.obsproject.Studio)$" },
	no_anim = true,
	no_blur = true,
})

-- App specific graphich --
hl.window_rule({ match = { class = "firefox" }, no_blur = true })

-- Floating app positions & sizes --
hl.window_rule({ match = { class = "^(thunar)$" }, float = true, size = { 765, 505 }, move = { 650, 65 } })
hl.window_rule({ match = { class = "^(yazi)$" }, float = true, size = { 735, 651 }, move = { 22, 64 } })
hl.window_rule({ match = { class = "^(Spotify)$" }, float = true, size = { 1000, 700 }, move = { 220, 100 } })
hl.window_rule({ match = { class = "^(galculator)$" }, float = true, size = { 356, 404 }, move = { 543, 148 } })
hl.window_rule({ match = { class = "^(blueman-manager)$" }, float = true, size = { 578, 310 }, move = { 840, 65 } })
hl.window_rule({ match = { class = "^(org.xfce.mousepad)$" }, float = true, size = { 614, 569 }, move = { 113, 137 } })

hl.window_rule({
	match = { class = "^(org.pulseaudio.pavucontrol)$" },
	float = true,
	size = { 700, 450 },
	move = { 370, 65 },
})

--hl.window_rule({
-- match = { class = "^(kitty)$" },
-- float = true,
-- size = { 600, 400 },
-- center = true,
--})
--- LAYER RULES ---
hl.layer_rule({ match = { namespace = "gtk-layer-shell" }, animation = "slide top" })
hl.layer_rule({ match = { namespace = "hyprpicker" }, no_anim = true })
hl.layer_rule({ match = { namespace = "selection" }, no_anim = true })
hl.layer_rule({ match = { namespace = "hyprpaper" }, animation = "fade" })
hl.layer_rule({ match = { namespace = "rofi" }, animation = "slide bottom" })
hl.layer_rule({ match = { namespace = "eww-dashboard" }, animation = "slide top" })
