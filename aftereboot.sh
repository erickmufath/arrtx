source /arrtx/install.conf
read -p "Make sure you are in root (press enter to continue or ctrl+c to abort) : "
ln -s /etc/runit/sv/NetworkManager /run/runit/service
sleep 5
nmtui
sed -i 's/^panel_items = TSC/panel_items = TSCB/' /home/${usrname}/.config/tint2/tint2rc
sed -i 's/^# MAX_SIZE=8192/MAX_SIZE=$zramd/' /etc/default/zramd
ln -s /etc/runit/sv/bluetoothd /run/runit/service
ln -s /etc/runit/sv/cupsd /run/runit/service
ln -s /etc/runit/sv/ntpd /run/runit/service
ln -s /etc/runit/sv/sddm /run/runit/service
#set sddm nordic theme
cat <<EOF > /etc/sddm.conf
[Theme]
Current=Nordic
EOF
