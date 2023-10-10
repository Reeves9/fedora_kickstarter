#! /bin/bash
sudo cp ./dnf.conf /etc/dnf/
sudo dnf update -y
sudo dnf install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
sudo dnf swap ffmpeg-free ffmpeg --allowerasing -y
sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin -y
sudo dnf copr enable g3tchoo/prismlauncher -y
sudo dnf install octave pspp npm ruby cargo krita kdenlive gnome-tweaks wine lutris gtkwave obs-studio blackbox-terminal prismlauncher fish dconf-editor neovim gnome-music kvantum qbittorrent openssl -y
sudo dnf install libgnat-12.rpm -y
sudo dnf install ghdl -y
sudo dnf remove rhythmbox -y
flatpak install warpinator extensionmanager gdmsettings amberol -y
sudo dnf swap mesa-va-drivers mesa-va-drivers-freeworld -y
sudo dnf swap mesa-vdpau-drivers mesa-vdpau-drivers-freeworld -y
sudo dnf swap mesa-va-drivers.i686 mesa-va-drivers-freeworld.i686 -y
sudo dnf swap mesa-vdpau-drivers.i686 mesa-vdpau-drivers-freeworld.i686 -y
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1
fish
curl -sS https://starship.rs/install.sh | sh
cp config.fish ~/.config/fish/
starship preset pastel-powerline -o ~/.config/starship.toml
suddo cp -r ./extensions/* /usr/share/gnome-shell/extensions/
