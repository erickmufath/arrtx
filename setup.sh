arrtx/basestrap.sh
artix-chroot /mnt arrtx/user.sh
artix-chroot /mnt arrtx/multilib.sh
artix-chroot /mnt arrtx/pacman.sh
source /mnt/arrtx/install.conf
artix-chroot /mnt /usr/bin/runuser -u ${usrname} -- arrtx/yay.sh
