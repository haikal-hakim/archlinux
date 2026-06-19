---@diagnostic disable: undefined-global

-- General
hl.config({
	general = {
		gaps_in = 6,
		gaps_out = 20,

		border_size = 0,
		resize_on_border = true,
		extend_border_grab_area = 15,
		hover_icon_on_border = true,

		allow_tearing = false,
		layout = "dwindle",

		snap = {
			enabled = true,
			window_gap = 10,
			monitor_gap = 10,
		},
	},
})

-- Decoration
hl.config({
	decoration = {
		rounding = 13,
		rounding_power = 2.0,

		active_opacity = 1.0,
		inactive_opacity = 0.9,
		fullscreen_opacity = 1.0,

		dim_inactive = true,
		dim_strength = 0.2,
		dim_modal = true,
		dim_special = 0.2,
		dim_around = 0.4,

		border_part_of_window = true,

		shadow = {
			enabled = true,
			range = 15,
			render_power = 3,

			color = "0x66000000",
			color_inactive = "0x44000000",
		},

		blur = {
			enabled = true,
			size = 5,
			passes = 2,

			new_optimizations = true,
			ignore_opacity = true,
			xray = true,

			vibrancy = 0.2,
			popups = true,
		},
	},
})

-- Animations --
hl.curve("easeOutExpo", { type = "bezier", points = { { 0.16, 1 }, { 0.3, 1 } } })
hl.curve("easeOutQuint", { type = "bezier", points = { { 0.23, 1 }, { 0.32, 1 } } })
hl.curve("easeInOutSmooth", { type = "bezier", points = { { 0.65, 0.05 }, { 0.35, 1 } } })
hl.curve("snap", { type = "bezier", points = { { 0.15, 0 }, { 0.1, 1 } } })
hl.curve("almostLinear", { type = "bezier", points = { { 0.5, 0.5 }, { 0.75, 1 } } })

hl.config({
	animations = {
		enabled = true,
		workspace_wraparound = false,
	},
})

hl.animation({ leaf = "global", enabled = true, speed = 8, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 4.8, bezier = "easeOutExpo", style = "slide" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 4.1, bezier = "easeOutExpo", style = "popin 75%" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.5, bezier = "snap", style = "popin 85%" })
hl.animation({ leaf = "windowsMove", enabled = true, speed = 4.5, bezier = "easeOutExpo" })
hl.animation({ leaf = "fade", enabled = true, speed = 3.0, bezier = "snap" })
hl.animation({ leaf = "fadeIn", enabled = true, speed = 1.7, bezier = "almostLinear" })
hl.animation({ leaf = "fadeOut", enabled = true, speed = 1.4, bezier = "almostLinear" })
hl.animation({ leaf = "layers", enabled = true, speed = 3.8, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 3.5, bezier = "easeOutQuint", style = "fade" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "snap", style = "fade" })
hl.animation({ leaf = "fadeLayersIn", enabled = true, speed = 1.8, bezier = "almostLinear" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 1.4, bezier = "almostLinear" })
hl.animation({ leaf = "workspaces", enabled = true, speed = 4.5, bezier = "easeOutExpo", style = "slidefade 20%" })
hl.animation({
	leaf = "workspacesIn",
	enabled = true,
	speed = 3.5,
	bezier = "easeInOutSmooth",
	style = "slidefade 20%",
})
hl.animation({
	leaf = "workspacesOut",
	enabled = true,
	speed = 3.5,
	bezier = "easeInOutSmooth",
	style = "slidefade 20%",
})
hl.animation({ leaf = "specialWorkspace", enabled = true, speed = 4.0, bezier = "easeOutExpo", style = "slidevert" })
hl.animation({ leaf = "border", enabled = true, speed = 5.4, bezier = "easeOutQuint" })
hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7.0, bezier = "snap" })

--- LAYOUT & MISC ---
hl.config({
	dwindle = {
		preserve_split = true,
		smart_split = false,
		smart_resizing = true,
		force_split = 2,
		special_scale_factor = 0.8,
		split_width_multiplier = 1.2,
		use_active_for_splits = true,
	},
	misc = {
		force_default_wallpaper = 0,
		disable_hyprland_logo = true,
		disable_splash_rendering = true,
		animate_manual_resizes = true,
		initial_workspace_tracking = 1,
		vrr = 1,
	},
})
