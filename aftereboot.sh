source /arrtx/install.conf
read -p "Make sure you are in root (press enter to continue or ctrl+c to abort) : "
ln -s /etc/runit/sv/NetworkManager /run/runit/service
sleep 5
nmtui
/usr/bin/runuser -u ${usrname} -- arrtx/yay.sh
sed -i 's/^# MAX_SIZE=8192/MAX_SIZE=$zramd/' /etc/default/zramd
#detect and set sddm nordic theme
sddm_ava=$(pacman -Qqe)
if grep -E "sddm-nordic-theme-git" <<< ${sddm_ava}; then
  echo -e "\nSetup SDDM Theme"
cat <<EOF > /etc/sddm.conf
[Theme]
Current=Nordic
EOF  
fi
sleep 5
ln -s /etc/runit/sv/bluetoothd /run/runit/service
ln -s /etc/runit/sv/cupsd /run/runit/service
ln -s /etc/runit/sv/ntpd /run/runit/service
ln -s /etc/runit/sv/sddm /run/runit/service
