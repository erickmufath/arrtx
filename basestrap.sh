pacman -Sy sed artix-archlinux-support pacman --noconfirm --needed
#Add parallel downloading
sed -i 's/^#Para/Para/' /etc/pacman.conf
#sed -i 's/^#ParallelDownloads = 5/ParallelDownloads = 2/' /etc/pacman.conf
#Enable multilib
sed -i "/\[lib32\]/,/Include/"'s/^#//' /etc/pacman.conf
sed -i "/\[lib32-gremlins\]/,/Include/"'s/^#//' /etc/pacman.conf
echo "[extra]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist-arch" >> /etc/pacman.conf
echo "[community]" >> /etc/pacman.conf
echo "Include = /etc/pacman.d/mirrorlist-arch" >> /etc/pacman.conf
rm -r /etc/pacman.d/gnupg
pacman-key --init
pacman-key --populate archlinux artix
#basestrap
basestrap /mnt --needed - < arrtx/pkgs/base-pkgs.txt
basestrap /mnt --needed - < arrtx/pkgs/base-pkgs.txt
basestrap /mnt --needed - < arrtx/pkgs/base-pkgs.txt
basestrap /mnt --needed - < arrtx/pkgs/base-pkgs.txt
basestrap /mnt --needed - < arrtx/pkgs/base-pkgs.txt
fstabgen -U /mnt >> /mnt/etc/fstab
echo "======================================================"
echo "=] 1. BIOS/Legacy"
echo "=] 2. UEFI [Beta Test]"
echo "=] 3. HYBRID [Direkomendasikan Untuk Media External/Beta test]"
echo "======================================================="
read -p ">> Pilih Jenis Boot (1/2/3) : " boot
read -p "->] Input Nama Komputer Arch Linux (Contoh : pc atau acer) = " hstname
read -p "->] Input Jumlah ZRAM (Contoh 8192) terhitung satuan Mega Byte = " zramd

echo ""
echo ""
lsblk
echo ""
echo ""
read -p "->] Input Drive untuk install Bootloader (Contoh : sda, sdb, atau nvmen1) = " drive
clear
echo "zramd=$zramd" >> arrtx/install.conf
echo "boot=$boot" >> arrtx/install.conf
echo "hstname=$hstname" >> arrtx/install.conf
echo "drive=$drive" >> arrtx/install.conf
cp -rf arrtx /mnt
