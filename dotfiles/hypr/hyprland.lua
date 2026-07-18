local terminal = "ghostty"
local fileManager = "yazi"
local menu = "wofi --show drun -p \"Search\""
local browser = "firefox"

_G.terminal = terminal
_G.fileManager = fileManager
_G.menu = menu
_G.browser = browser

hl.on("hyprland.start", function()
    hl.exec_cmd(browser)
    hl.exec_cmd("nm-applet &")
    hl.exec_cmd("waybar")
    hl.exec_cmd("hyprpaper")
    hl.exec_cmd("swaync")
    hl.exec_cmd("systemctl --user start hyprpolkitagent")
    hl.exec_cmd("hypridle")
    hl.exec_cmd("batsignal")
    hl.exec_cmd("swayosd-server")
    hl.exec_cmd("sh -c \"sleep 1 && $HOME/dev/scripts/wall.sh\"")
end)

hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme \"prefer-dark\"")
hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme \"adw-gtk3-dark\"")

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

hl.env("XDG_CURRENT_DESKTOP", "Hyprland")
hl.env("XDG_SESSION_TYPE", "wayland")
hl.env("XDG_SESSION_DESKTOP", "Hyprland")

hl.env("GDK_SCALE", "1")
hl.env("GDK_BACKEND", "wayland,x11,*")
hl.env("QT_QPA_PLATFORM", "wayland;xcb")
hl.env("SDL_VIDEODRIVER", "wayland")
hl.env("CLUTTER_BACKEND", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")
hl.env("QT_WAYLAND_DISABLE_WINDOWDECORATION", "1")
hl.env("QT_AUTO_SCREEN_SCALE_FACTOR", "1")
hl.env("GTK_THEME", "adw-gtk3-dark:dark")

require("land.rice")
require("land.input")
require("land.keybindings")
require("land.monitors")
require("workspaces")
