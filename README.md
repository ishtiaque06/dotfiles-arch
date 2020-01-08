# Dotfiles for my Arch system

These dotfiles are for the following:

1. [i3-gaps](https://github.com/Airblader/i3)
2. [Polybar](https://github.com/polybar/polybar)
3. [Kitty Terminal Emulator](https://github.com/polybar/polybar)

### Packages Installed that makes these tick properly

- [`alsa-utils`](https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture) - For sound adjusting through volume buttons (i3-gaps uses this)
- [`flameshot`](https://flameshot.js.org/#/getting-start) - For screenshotting (i3-gaps starts it up at login)
- [`i3-gaps`](https://github.com/Airblader/i3) - window manager!
- [`i3lock`](https://i3wm.org/i3lock/) - a plain lock-screen for i3
- [`kitty`](https://github.com/kovidgoyal/kitty) - terminal emulator (uses theming provided by pywal [see below])
- [`light`](https://www.archlinux.org/packages/community/x86_64/light/) - Brightness controls (used by i3-gaps)
- [`networkmanager`](https://wiki.archlinux.org/index.php/NetworkManager) - used by nm-applet (see below)
- [`network-manager-applet`](https://www.archlinux.org/packages/extra/x86_64/network-manager-applet/) - this provides a system tray icon that's shown in Polybar. Useful for connecting to the internet.
- [`picom`](https://wiki.archlinux.org/index.php/Picom) - Compositor for animation on the interface (used by i3-gaps)
- [`pywal`](https://github.com/dylanaraps/pywal) - generates a theme based on a wallpaper. This program makes the background colors available to Xresources, which are used by both i3-gaps and polybar for theming the windows and such. It is also used by Kitty's config file.
- [`rofi`](https://github.com/davatorium/rofi) - a launcher for i3. Is themable. Will probably add theming soon (Right now it uses [flamingo](https://github.com/davatorium/rofi-themes/tree/master/User%20Themes)).
- [`feh`](https://wiki.archlinux.org/index.php/Feh) - a program that sets background images. Used by pywal for theming purposes.

### Fonts I have installed on my system

- [Cairo](https://fonts.google.com/specimen/Cairo) - Used by i3wm
- [Material Design Icons](https://materialdesignicons.com/) - For icons on the polybar
- [Roboto](https://fonts.google.com/specimen/Roboto) - Used by polybar
- DejaVu Sans Mono - Available on default Arch linux. Used by polybar
