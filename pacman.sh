source arrtx/install.conf
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/user-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/user-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/user-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/user-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/user-pkgs.txt
sh arrtx/game.sh
ln -s /etc/runit/sv/NetworkManager /run/runit/service
ln -s /etc/runit/sv/bluetoothd /run/runit/service
ln -s /etc/runit/sv/cupsd /run/runit/service
ln -s /etc/runit/sv/ntpd /run/runit/service
ln -s /etc/runit/sv/sddm /run/runit/service
# determine processor type and install microcode
proc_type=$(lscpu)
if grep -E "GenuineIntel" <<< ${proc_type}; then
    echo "Installing Intel microcode"
    pacman -S --noconfirm intel-ucode
    proc_ucode=intel-ucode.img
elif grep -E "AuthenticAMD" <<< ${proc_type}; then
    echo "Installing AMD microcode"
    pacman -S --noconfirm amd-ucode
    proc_ucode=amd-ucode.img
fi
# Graphics Drivers find and install
gpu_type=$(lspci)
if lspci | grep -E "NVIDIA|GeForce"  <<< ${gpu_type};  then
    echo    "--------------------------------------------------------"
echo    ""
echo    "           INSTALLING NVIDIA GRAPHICS DRIVER"
echo    ""
echo    "--------------------------------------------------------"
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/nvidia-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/nvidia-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/nvidia-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/nvidia-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/nvidia-pkgs.txt
elif lspci | grep 'VGA' | grep -E "Radeon|AMD"; then
    echo    "--------------------------------------------------------"
echo    ""
echo    "           INSTALLING AMD GRAPHICS DRIVER"
echo    ""
echo    "--------------------------------------------------------"
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/amd-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/amd-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/amd-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/amd-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/amd-pkgs.txt
elif lspci grep -E "Integrated Graphics Controller" <<< ${gpu_type}; then
    echo    "--------------------------------------------------------"
echo    ""
echo    "           INSTALLING INTEL GRAPHICS DRIVER"
echo    ""
echo    "--------------------------------------------------------"
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
elif grep -E "Intel Corporation UHD" <<< ${gpu_type}; <<< ${gpu_type}; then
    echo    "--------------------------------------------------------"
echo    ""
echo    "           INSTALLING INTEL GRAPHICS DRIVER"
echo    ""
echo    "--------------------------------------------------------"
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
fi
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
