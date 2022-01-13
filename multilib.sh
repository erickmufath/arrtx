source arrtx/install.conf
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy artix-archlinux-support pacman --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy artix-archlinux-support pacman --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy artix-archlinux-support pacman --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy artix-archlinux-support pacman --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy artix-archlinux-support pacman --noconfirm --needed
#sed -i 's/^Server/#Server/' /etc/pacman.conf
#echo "Server = https://artix.wheaton.edu/repos/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
#echo "Server = https://mirror.clarkson.edu/artix-linux/repos/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
#echo "Server = https://us-mirror.artixlinux.org/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
#echo "Server = http://www.nylxs.com/mirror/repos/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
#echo "Server = https://mirrors.nettek.us/artix-linux/$repo/os/$arch" >> /etc/pacman.d/mirrorlist
echo "[extra]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist-arch" >> /etc/pacman.conf
echo "[community]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist-arch" >> /etc/pacman.conf
rm -r /etc/pacman.d/gnupg
pacman-key --init
pacman-key --import archlinux artix
pacman-key --populate archlinux artix
pacman -Syyu
sudo cp -rf arrtx/xorg.conf /etc/X11/
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy rsync ntp git ttf-caladea nomacs scrcpy ttf-anonymous-pro ttf-cascadia-code ttf-cormorant ttf-eurof ttf-ibm-plex ttf-jetbrains-mono ttf-joypixels ttf-linux-libertine ttf-linux-libertine-g ttf-monofur ttf-proggy-clean firefox adapta-gtk-theme materia-gtk-theme tint2 nitrogen obconf --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-lirc pulseaudio-zeroconf lsp-plugins pulsemixer --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy rsync ntp git ttf-caladea nomacs scrcpy ttf-anonymous-pro ttf-cascadia-code ttf-cormorant ttf-eurof ttf-ibm-plex ttf-jetbrains-mono ttf-joypixels ttf-linux-libertine ttf-linux-libertine-g ttf-monofur ttf-proggy-clean firefox adapta-gtk-theme materia-gtk-theme tint2 nitrogen obconf --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-lirc pulseaudio-zeroconf lsp-plugins pulsemixer --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy rsync ntp git ttf-caladea nomacs scrcpy ttf-anonymous-pro ttf-cascadia-code ttf-cormorant ttf-eurof ttf-ibm-plex ttf-jetbrains-mono ttf-joypixels ttf-linux-libertine ttf-linux-libertine-g ttf-monofur ttf-proggy-clean firefox adapta-gtk-theme materia-gtk-theme tint2 nitrogen obconf --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-lirc pulseaudio-zeroconf lsp-plugins pulsemixer --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy rsync ntp git ttf-caladea nomacs scrcpy ttf-anonymous-pro ttf-cascadia-code ttf-cormorant ttf-eurof ttf-ibm-plex ttf-jetbrains-mono ttf-joypixels ttf-linux-libertine ttf-linux-libertine-g ttf-monofur ttf-proggy-clean firefox adapta-gtk-theme materia-gtk-theme tint2 nitrogen obconf --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-lirc pulseaudio-zeroconf lsp-plugins pulsemixer --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy rsync ntp git ttf-caladea nomacs scrcpy ttf-anonymous-pro ttf-cascadia-code ttf-cormorant ttf-eurof ttf-ibm-plex ttf-jetbrains-mono ttf-joypixels ttf-linux-libertine ttf-linux-libertine-g ttf-monofur ttf-proggy-clean firefox adapta-gtk-theme materia-gtk-theme tint2 nitrogen obconf --noconfirm --needed
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-lirc pulseaudio-zeroconf lsp-plugins pulsemixer --noconfirm --needed