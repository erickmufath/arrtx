source /arrtx/install.conf
cd /home/${usrname}/
ln -s /etc/runit/sv/NetworkManager /run/runit/service
sleep 5
nmtui
git clone https://github.com/addy-dclxvi/openbox-theme-collections ~/.themes
rm -rf ~/.config/tint2
git clone https://github.com/addy-dclxvi/tint2-theme-collections ~/.config/tint2 --depth 1
cp ~/.config/tint2/minima/minima.tint2rc ~/.config/tint2/tint2rc
mkdir ~/.config/openbox
cp ~/arrtx/rc.xml ~/.config/openbox
cp ~/arrtx/autostart ~/.config/openbox
git clone https://aur.archlinux.org/yay.git 
cd yay
makepkg -si --noconfirm
cd 
yay -Syyu
yay -Sy --needed - < arrtx/pkgs/aur.txt
yay -Sy --needed - < arrtx/pkgs/aur.txt
yay -Sy --needed - < arrtx/pkgs/aur.txt
yay -Sy --needed - < arrtx/pkgs/aur.txt
sudo sed -i 's/^# MAX_SIZE=8192/MAX_SIZE=$zramd/' /etc/default/zramd
echo -e "\nSetup SDDM Theme"
sudo cat <<EOF > /mnt/etc/sddm.conf
[Theme]
Current=Nordic
EOF
sleep 5
ln -s /etc/runit/sv/bluetoothd /run/runit/service
ln -s /etc/runit/sv/cupsd /run/runit/service
ln -s /etc/runit/sv/ntpd /run/runit/service
ln -s /etc/runit/sv/sddm /run/runit/service
