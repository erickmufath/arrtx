source arrtx/install.conf
iso=$(curl -4 ifconfig.co/country-iso)
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
pacman -Sy --noconfirm reflector ntp
ln -s /etc/runit/sv/ntpd /run/runit/service
reflector -a 48 -c $iso -f 5 -l 20 --sort rate --save /etc/pacman.d/mirrorlist
cp -rf arrtx /home/${usrname}/
