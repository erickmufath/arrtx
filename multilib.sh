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
pacman-key --populate archlinux artix
pacman -Syyu
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/extra-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/extra-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/extra-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/extra-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/extra-pkgs.txt
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
