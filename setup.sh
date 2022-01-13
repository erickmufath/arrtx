arrtx/basestrap.sh
artix-chroot /mnt arrtx/pacman.sh
artix-chroot /mnt arrtx/multilib.sh
source /mnt/arrtx/install.conf
artix-chroot /mnt /usr/bin/runuser -u ${usrname} -- arrtx/aftereboot.sh
