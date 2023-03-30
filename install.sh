#!/bin/bash
export name
printf "\033[95m SWAY SETTINGS V2 \033[0m"
printf "\033[91m Run only as root! \033[0m"
read name
yes | cp -r "$(pwd)/boot" "/"
yes | cp -r "$(pwd)/home/nohashduck/.config" "/home/$name/"
yes | cp -r "$(pwd)/home/nohashduck/.scripts" "/home/$name/"
yes | cp -r "$(pwd)/home/nohashduck/Pictures" "/home/$name/"
yes | cp -r "$(pwd)/home/nohashduck/.bash_profile" "/home/$name/"
yes | cp -r "$(pwd)/home/nohashduck/.vimrc" "/home/$name/"
yes | cp -r "$(pwd)/etc" "/"
yes | chmod -R 777 "/home/$name"
sudo pacman -S neofetch kitty vim ranger firefox code gnome-boxes sway swaybg waybar wofi mako grim noto-fonts noto-fonts-cjk noto-fonts-emoji otf-font-awesome xorg-xwayland alsa-lib alsa-utils pulseaudio file-roller nautilus htop wl-clipboard zenity telegram-desktop
sudo grub-mkconfig -o /boot/grub/grub.cfg
reboot