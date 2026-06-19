---@diagnostic disable: undefined-global

hl.on("hyprland.start", function()
	hl.exec_cmd("dbus-update-activation-environment --systemd --all")
	hl.exec_cmd("bash " .. os.getenv("HOME") .. "/.config/hypr/scripts/xdg-portal.sh")
	hl.exec_cmd("systemctl --user start hyprpolkitagent")
	-- Core Desktop Services --
	hl.exec_cmd("dunst")
	--hl.exec_cmd("hyprpaper")
	hl.exec_cmd("awww-daemon --no-cache")
	hl.exec_cmd(
		"awww img ~/Pictures/Wallpapers/Arch-Blue.jpg --transition-type outer --transition-duration 1.5 --transition-fps 60"
	)
	hl.exec_cmd("sleep 2 && hypridle")

	-- Eww Bar & Desktop Widgets --
	hl.exec_cmd("eww daemon")
	hl.exec_cmd("sleep 2 && eww open window_bar")
	hl.exec_cmd("sleep 4 && eww open window_website")
	hl.exec_cmd("sleep 5 && eww open window_power")

	-- Apps & Scripts --
	hl.exec_cmd("wl-paste --watch cliphist store")
	hl.exec_cmd("sleep 10 && cliphist list | tail -n +101 | cliphist delete")
	hl.exec_cmd("bash " .. os.getenv("HOME") .. "/.local/bin/notif-update.sh")
end)
