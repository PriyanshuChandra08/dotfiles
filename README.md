My DOTFILES for customizing ARCH linux with WM setup. Some are not configured (default dotfiles) to remember which are basics for apps installation. And to know more about i3wm, Hyprland configuration files, 

~ visit (for i3WM) - https://i3wm.org/docs/userguide.html

~ visit (for Hyprland) - https://wiki.hypr.land/Configuring/

If you want to configure these files with yours, cd to dotfiles directory and just use 'stow ' and replace with your folder to modify. If you don't know what is Stow command, visit - (https://www.gnu.org/software/stow/) to know more. And to use stow, important to keep APPS installed in your system. And Thanks to @Typecraft-dev for your videos.

**FOR HYPRLAND SETUP:**
- Need to install important stuffs like 'python-pywal-3.x.x' (as recommended version), 'stow' (ESSENTIAL), 'tree' and 'yazi' (useful).


IMPORTANT
-
Some configs (like waybar/style.css file need some HOME directory naming changes and cannot be relative to your system, so instead _EDIT the slight changes_ that are required in some cases). 
Otherwise, no major changes are required.
Almost whole i3WM config file would work with SwayWM for the default config file.
So no need to worry for the file system to be corrupted. Still there is a SwayWM Config file to save your day.

Hyprland utilities (optional but useful)
-
- Hyprlauncher
- Hyprlock
- wlogout (for interactive lock session menu)

Install (icons,fonts and shell themes) and customize them using nwg-look (often named as GTK-Settings in wofi and hyprlauncher menu)


**For _Arch_ LINUX**

    sudo pacman -Sy stow tree yazi pavucontrol hyprlock hyprlauncher nwg-look
  **Via Yay (AUR Helper)**

        yay -S pywal wlogout waybar-git

**For _Debian-based_ LINUX distros**

    sudo apt install stow tree yazi waybar nwg-look
