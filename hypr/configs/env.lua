---@diagnostic disable: undefined-global

-- Toolkit Backends --
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("LIBVA_DRIVER_NAME", "iHD")

-- XDG Specifications --
hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

-- Qt Variables --
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_QPA_PLATFORMTHEME", "qt5ct;qt6ct")

-- Theming & Cursor --
hl.env("XCURSOR_THEME", "phinger-cursors-dark")
hl.env("XCURSOR_SIZE", "24")
