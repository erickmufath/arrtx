source arrtx/install.conf
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/user-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/user-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/user-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/user-pkgs.txt
/usr/bin/runuser -u ${usrname} -- sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/user-pkgs.txt
sh arrtx/game.sh
# Graphics Drivers find and install
gpu_type=$(lspci)
if lspci | grep -E "NVIDIA|GeForce"  <<< ${gpu_type};  then
    echo    "--------------------------------------------------------"
echo    ""
echo    "           INSTALLING NVIDIA GRAPHICS DRIVER"
echo    ""
echo    "--------------------------------------------------------"
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/nvidia-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/nvidia-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/nvidia-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/nvidia-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/nvidia-pkgs.txt
elif lspci | grep 'VGA' | grep -E "Radeon|AMD"; then
    echo    "--------------------------------------------------------"
echo    ""
echo    "           INSTALLING AMD GRAPHICS DRIVER"
echo    ""
echo    "--------------------------------------------------------"
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/amd-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/amd-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/amd-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/amd-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/amd-pkgs.txt
elif lspci grep -E "Integrated Graphics Controller" <<< ${gpu_type}; then
    echo    "--------------------------------------------------------"
echo    ""
echo    "           INSTALLING INTEL GRAPHICS DRIVER"
echo    ""
echo    "--------------------------------------------------------"
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
elif grep -E "Intel Corporation UHD" <<< ${gpu_type}; <<< ${gpu_type}; then
    echo    "--------------------------------------------------------"
echo    ""
echo    "           INSTALLING INTEL GRAPHICS DRIVER"
echo    ""
echo    "--------------------------------------------------------"
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
    sudo pacman -Sy --noconfirm --needed - < arrtx/pkgs/intel-pkgs.txt
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
