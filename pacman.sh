source arrtx/install.conf
echo "--------------------------------------------------------"
echo "           Setting Root Password        "
echo "--------------------------------------------------------"
passwd
echo "--------------------------------------------------------"
echo "           Setting User        "
echo "--------------------------------------------------------"
read -p "--> Input Username : " usrname
useradd -mG wheel ${usrname}
passwd ${usrname}
echo "--------------------------------------------------------"
echo "           Setup Bahasa, lokal, Hostname & Hosts        "
echo "--------------------------------------------------------"
sed -i 's/^#en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
locale-gen
ln -sf /usr/share/zoneinfo/Asia/Jakarta /etc/localtime
echo "LANG=en_US.UTF-8" >> /etc/locale.conf

# Set hostname & hosts
echo ${hstname} >> /etc/hostname
echo "127.0.0.1	localhost" >> /etc/hosts
echo "::1	localhost" >> /etc/hosts
echo "127.0.1.1	${hstname}.localdomain	${hstname}" >> /etc/hosts
pacman -Sy sed --noconfirm

# Add sudo no password rights
sed -i 's/^# %wheel ALL=(ALL) NOPASSWD: ALL/%wheel ALL=(ALL) NOPASSWD: ALL/' /etc/sudoers

# Add sudo rights
sed -i 's/^# %wheel ALL=(ALL) ALL/%wheel ALL=(ALL) ALL/' /etc/sudoers

#Add parallel downloading
sed -i 's/^#Para/Para/' /etc/pacman.conf

#Enable multilib
sed -i "/\[lib32\]/,/Include/"'s/^#//' /etc/pacman.conf
sed -i "/\[lib32-gremlins\]/,/Include/"'s/^#//' /etc/pacman.conf
pacman -Syyu
cp -rf arrtx /home/${usrname}/
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy xorg pacman linux-headers ttf-carlito ttf-dejavu flatpak intel-ucode unzip ark gtk3 gtk4 sdl2 xfce4-terminal thunar mpv elisa awesome-terminal-fonts ttf-bitstream-vera ttf-carlito ttf-croscore ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-font-awesome ttf-inconsolata ttf-liberation ttf-nerd-fonts-symbols ttf-opensans breeze materia-kde kdenlive audacity system-config-printer packagekit-qt5 wget git libnewt libfdk-aac celt lame libmad opus libvorbis opencore-amr speex flac wavpack faac faad2 jasper aom schroedinger libdv x265 x264 libmpeg2 xvidcore libtheora libvpx gstreamer gst-libav sddm sddm-runit rxvt-unicode lxappearance rofi openbox brightnessctl volumeicon ntfsprogs dosfstools dos2unix e2fsprogs xfsprogs ntfs-3g network-manager-applet bluez bluez-runit nano cups cups-runit xdg-utils xdg-user-dirs git artix-archlinux-support archlinux-keyring artix-keyring pacman --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy xorg pacman linux-headers ttf-carlito ttf-dejavu flatpak intel-ucode unzip ark gtk3 gtk4 sdl2 xfce4-terminal thunar mpv elisa awesome-terminal-fonts ttf-bitstream-vera ttf-carlito ttf-croscore ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-font-awesome ttf-inconsolata ttf-liberation ttf-nerd-fonts-symbols ttf-opensans breeze materia-kde kdenlive audacity system-config-printer packagekit-qt5 wget git libnewt libfdk-aac celt lame libmad opus libvorbis opencore-amr speex flac wavpack faac faad2 jasper aom schroedinger libdv x265 x264 libmpeg2 xvidcore libtheora libvpx gstreamer gst-libav sddm sddm-runit rxvt-unicode lxappearance rofi openbox brightnessctl volumeicon ntfsprogs dosfstools dos2unix e2fsprogs xfsprogs ntfs-3g network-manager-applet bluez bluez-runit nano cups cups-runit xdg-utils xdg-user-dirs git artix-archlinux-support archlinux-keyring artix-keyring pacman --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy xorg pacman linux-headers ttf-carlito ttf-dejavu flatpak intel-ucode unzip ark gtk3 gtk4 sdl2 xfce4-terminal thunar mpv elisa awesome-terminal-fonts ttf-bitstream-vera ttf-carlito ttf-croscore ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-font-awesome ttf-inconsolata ttf-liberation ttf-nerd-fonts-symbols ttf-opensans breeze materia-kde kdenlive audacity system-config-printer packagekit-qt5 wget git libnewt libfdk-aac celt lame libmad opus libvorbis opencore-amr speex flac wavpack faac faad2 jasper aom schroedinger libdv x265 x264 libmpeg2 xvidcore libtheora libvpx gstreamer gst-libav sddm sddm-runit rxvt-unicode lxappearance rofi openbox brightnessctl volumeicon ntfsprogs dosfstools dos2unix e2fsprogs xfsprogs ntfs-3g network-manager-applet bluez bluez-runit nano cups cups-runit xdg-utils xdg-user-dirs git artix-archlinux-support archlinux-keyring artix-keyring pacman --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy xorg pacman linux-headers ttf-carlito ttf-dejavu flatpak intel-ucode unzip ark gtk3 gtk4 sdl2 xfce4-terminal thunar mpv elisa awesome-terminal-fonts ttf-bitstream-vera ttf-carlito ttf-croscore ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-font-awesome ttf-inconsolata ttf-liberation ttf-nerd-fonts-symbols ttf-opensans breeze materia-kde kdenlive audacity system-config-printer packagekit-qt5 wget git libnewt libfdk-aac celt lame libmad opus libvorbis opencore-amr speex flac wavpack faac faad2 jasper aom schroedinger libdv x265 x264 libmpeg2 xvidcore libtheora libvpx gstreamer gst-libav sddm sddm-runit rxvt-unicode lxappearance rofi openbox brightnessctl volumeicon ntfsprogs dosfstools dos2unix e2fsprogs xfsprogs ntfs-3g network-manager-applet bluez bluez-runit nano cups cups-runit xdg-utils xdg-user-dirs git artix-archlinux-support archlinux-keyring artix-keyring pacman --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy xorg pacman linux-headers ttf-carlito ttf-dejavu flatpak intel-ucode unzip ark gtk3 gtk4 sdl2 xfce4-terminal thunar mpv elisa awesome-terminal-fonts ttf-bitstream-vera ttf-carlito ttf-croscore ttf-fira-code ttf-fira-mono ttf-fira-sans ttf-font-awesome ttf-inconsolata ttf-liberation ttf-nerd-fonts-symbols ttf-opensans breeze materia-kde kdenlive audacity system-config-printer packagekit-qt5 wget git libnewt libfdk-aac celt lame libmad opus libvorbis opencore-amr speex flac wavpack faac faad2 jasper aom schroedinger libdv x265 x264 libmpeg2 xvidcore libtheora libvpx gstreamer gst-libav sddm sddm-runit rxvt-unicode lxappearance rofi openbox brightnessctl volumeicon ntfsprogs dosfstools dos2unix e2fsprogs xfsprogs ntfs-3g network-manager-applet bluez bluez-runit nano cups cups-runit xdg-utils xdg-user-dirs git artix-archlinux-support archlinux-keyring artix-keyring pacman --noconfirm --needed
echo "#" >> /etc/pacman.conf
echo "[extra]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist-arch" >> /etc/pacman.conf
echo "#" >> /etc/pacman.conf
echo "[community]" >> /etc/pacman.conf
pacman -Syyu
pacman-key --init
pacman-key --import archlinux artix
pacman-key --populate archlinux artix
pacman -Syyu
sudo cp -rf arrtx/xorg.conf /etc/X11/
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy reflector rsync ntp git networkmanager networkmanager-runit ttf-caladea nomacs scrcpy ttf-anonymous-pro ttf-cascadia-code ttf-cormorant ttf-eurof ttf-ibm-plex ttf-jetbrains-mono ttf-joypixels ttf-linux-libertine ttf-linux-libertine-g ttf-monofur ttf-proggy-clean firefox adapta-gtk-theme materia-gtk-theme tint2 nitrogen obconf --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-lirc pulseaudio-zeroconf lsp-plugins pulsemixer --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy reflector rsync ntp git networkmanager networkmanager-runit ttf-caladea nomacs scrcpy ttf-anonymous-pro ttf-cascadia-code ttf-cormorant ttf-eurof ttf-ibm-plex ttf-jetbrains-mono ttf-joypixels ttf-linux-libertine ttf-linux-libertine-g ttf-monofur ttf-proggy-clean firefox adapta-gtk-theme materia-gtk-theme tint2 nitrogen obconf --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-lirc pulseaudio-zeroconf lsp-plugins pulsemixer --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy reflector rsync ntp git networkmanager networkmanager-runit ttf-caladea nomacs scrcpy ttf-anonymous-pro ttf-cascadia-code ttf-cormorant ttf-eurof ttf-ibm-plex ttf-jetbrains-mono ttf-joypixels ttf-linux-libertine ttf-linux-libertine-g ttf-monofur ttf-proggy-clean firefox adapta-gtk-theme materia-gtk-theme tint2 nitrogen obconf --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-lirc pulseaudio-zeroconf lsp-plugins pulsemixer --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy reflector rsync ntp git networkmanager networkmanager-runit ttf-caladea nomacs scrcpy ttf-anonymous-pro ttf-cascadia-code ttf-cormorant ttf-eurof ttf-ibm-plex ttf-jetbrains-mono ttf-joypixels ttf-linux-libertine ttf-linux-libertine-g ttf-monofur ttf-proggy-clean firefox adapta-gtk-theme materia-gtk-theme tint2 nitrogen obconf --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-lirc pulseaudio-zeroconf lsp-plugins pulsemixer --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy reflector rsync ntp git networkmanager networkmanager-runit ttf-caladea nomacs scrcpy ttf-anonymous-pro ttf-cascadia-code ttf-cormorant ttf-eurof ttf-ibm-plex ttf-jetbrains-mono ttf-joypixels ttf-linux-libertine ttf-linux-libertine-g ttf-monofur ttf-proggy-clean firefox adapta-gtk-theme materia-gtk-theme tint2 nitrogen obconf --noconfirm --needed
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy pulseaudio pulseaudio-alsa pulseaudio-bluetooth pulseaudio-equalizer pulseaudio-jack pulseaudio-lirc pulseaudio-zeroconf lsp-plugins pulsemixer --noconfirm --needed
/usr/bin/runuser -u ${usrname} -- sh arrtx/yayopenbox.sh
read -p "->] Install Lutris For Gaming (y/n) : " gam
case $gam in
y|Y|yes|Yes|YES)
sudo pacman -Sy gamemode dxvk winetricks lutris giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama ncurses lib32-ncurses opencl-icd-loader lib32-opencl-icd-loader libxslt lib32-libxslt libva lib32-libva gtk3 lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader --noconfirm --needed
# Graphics Drivers find and install
if lspci | grep -E "NVIDIA|GeForce"; then
    echo    "--------------------------------------------------------"
echo    ""
echo    "           INSTALLING NVIDIA GRAPHICS DRIVER"
echo    ""
echo    "--------------------------------------------------------"
    sudo pacman -Sy nvidia nvidia-dkms nvidia-utils lib32-nvidia-utils nvidia-settings vulkan-icd-loader lib32-vulkan-icd-loader --noconfirm --needed
	nvidia-xconfig
elif lspci | grep -E "Radeon"; then
    echo    "--------------------------------------------------------"
echo    ""
echo    "           INSTALLING AMD GRAPHICS DRIVER"
echo    ""
echo    "--------------------------------------------------------"
    sudo pacman -Sy xf86-video-amdgpu lib32-mesa vulkan-radeon lib32-vulkan-radeon vulkan-icd-loader lib32-vulkan-icd-loader --noconfirm --needed
elif lspci | grep -E "Integrated Graphics Controller"; then
    echo    "--------------------------------------------------------"
echo    ""
echo    "           INSTALLING INTEL GRAPHICS DRIVER"
echo    ""
echo    "--------------------------------------------------------"
    sudo pacman -Sy libva-intel-driver libvdpau-va-gl lib32-vulkan-intel vulkan-intel libva-intel-driver libva-utils lib32-mesa vulkan-intel lib32-vulkan-intel vulkan-icd-loader lib32-vulkan-icd-loader --needed --noconfirm
fi
esac
case $boot in
1)
pacman -Sy grub os-prober --noconfirm
grub-install --target=i386-pc /dev/"${drive}"
grub-mkconfig -o /boot/grub/grub.cfg
;;
2)
pacman -Sy grub efibootmgr os-prober --noconfirm
grub-install --target=x86_64-efi --efi-directory=/boot
grub-mkconfig -o /boot/grub/grub.cfg
;;
3)
pacman -Sy grub efibootmgr os-prober --noconfirm
grub-install --target=i386-pc --boot-directory=/boot /dev/"${drive}"
grub-install --target=x86_64-efi --efi-directory=/boot --boot-directory=/boot --removable --recheck
grub-mkconfig -o /boot/grub/grub.cfg
;;
esac
