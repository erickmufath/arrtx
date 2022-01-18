arrtx/basestrap.sh
artix-chroot /mnt arrtx/user.sh
artix-chroot /mnt arrtx/multilib.sh
artix-chroot /mnt arrtx/pacman.sh
artix-chroot /mnt /usr/bin/runuser -u ${usrname} -- arrtx/yay.sh
