source /arrtx/install.conf
cd /home/${usrname}/
sudo ln -s /etc/runit/sv/NetworkManager /run/runit/service
nmtui
sleep 5
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
sudo ln -s /etc/runit/sv/bluetoothd /run/runit/service
sudo ln -s /etc/runit/sv/cupsd /run/runit/service
sudo ln -s /etc/runit/sv/ntpd /run/runit/service
sudo ln -s /etc/runit/sv/sddm /run/runit/service
sudo sed -i 's/^# MAX_SIZE/MAX_SIZE/' /etc/default/zramd
sudo sed -i 's/^8192/${zramd}/' /etc/default/zramd
echo -e "\nSetup SDDM Theme"
sudo cat <<EOF > /mnt/etc/sddm.conf
[Theme]
Current=Nordic
EOF
