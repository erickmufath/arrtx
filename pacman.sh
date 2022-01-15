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
echo "usrname=$usrname" >> arrtx/install.conf
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
