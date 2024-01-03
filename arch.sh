#! /usr/bin/bash

sudo pacman -Syu kitty evince veracrypt nvidia git python-pip python-pyquery nerd-fonts noto-fonts noto-fonts-cjk ttf-jetbrains-mono audacious noto-fonts-emoji ufw fail2ban nemo swaybg steam dunst viewnior gimp pavucontrol neofetch libreoffice-still waybar grub-customizer btop rsync firefox 

mkdir git && cd git
git clone https://aur.archlinux.org/paru.git
cd paru/ && makepkg -si
paru -S colord hyprland-git ffmpegthumbnailer gnome-keyring grimblast-git gtk-engine-murrine imagemagick kvantum playerctl polkit-kde-agent qt5-quickcontrols qt5-quickcontrols2 qt5-wayland qt6-wayland tumbler xdg-desktop-portal-hyprland-git xdotool cliphist qt5-imageformats qt5ct mullvad-vpn rofi-lbonn-wayland cava waypaper-git wlogout catppuccin-gtk-theme-macchiato catppuccin-gtk-theme-mocha papirus-icon-theme sddm-git swaylock-effects-git kvantum kvantum-theme-catppuccin-git pipewire pipewire-alsa pipewire-audio pipewire-pulse pipewire-jack wireplumber gst-plugin-pipewire

# Some potentially unnecessary stuff like mullvad-vpn. Most are taken from https://github.com/linuxmobile/hyprland-dots with some packages removed.

cd && cd git/ && git clone https://aur.archlinux.org/wezterm-git.git
cd wezterm-git/ && makepkg -si

sudo grub-mkconfig -o /boot/grub/grub.cfg

# Alternatively, replace the config files in $HOME/.config.
# git clone https://github.com/meirin8770/hyprland-dots $HOME/Downloads/hyprland-dots/
# cd $HOME/Downloads/hyprland-dots/
# rsync -avxHAXP --exclude '.git*' .* ~/
