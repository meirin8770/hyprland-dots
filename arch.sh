#! /usr/bin/bash
# Used following archinstall. Some missing components will have to be manually installed otherwise, for a functional system.
# Bootloader: GRUB; Audio server: Pipewire; Network: NetworkManager

sudo pacman -Syu nvidia git python-pip python-pyquery hyprland nerd-fonts noto-fonts noto-fonts-cjk ttf-jetbrains-mono audacious noto-fonts-emoji ufw fail2ban nemo swaybg steam dunst viewnior gimp pavucontrol neofetch libreoffice-still waybar grub-customizer btop rsync

mkdir git && cd git
git clone https://aur.archlinux.org/paru.git
cd paru/ && makepkg -si
paru -S colord ffmpegthumbnailer gnome-keyring grimblast-git gtk-engine-murrine imagemagick kvantum playerctl polkit-kde-agent qt5-quickcontrols qt5-quickcontrols2 qt5-wayland qt6-wayland tumbler xdg-desktop-portal-hyprland-git xdotool cliphist qt5-imageformats qt5ct mullvad-vpn rofi-lbonn-wayland cava waypaper-git wlogout
# Some potentially unnecessary stuff like mullvad-vpn. Most are taken from https://github.com/linuxmobile/hyprland-dots with some packages removed.

cd && cd git/ && git clone https://aur.archlinux.org/wezterm-git.git
cd wezterm-git/ && makepkg -si

# After all is done, place the config files in and replace the ones in $HOME/.config.
git clone https://github.com/meirin8770/hyprland-dots $HOME/Downloads/hyprland-dots/
cd $HOME/Downloads/hyprland-dots/
rsync -avxHAXP --exclude '.git*' .* ~/
