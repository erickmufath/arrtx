#detect and set sddm nordic theme
sddm_ava=$(pacman -Qqe)
if grep -E "sddm-nordic-theme-git" <<< ${sddm_ava}; then
cat <<EOF > /etc/sddm.conf
[Theme]
Current=Nordic
EOF
fi
ln -s /etc/runit/sv/bluetoothd /run/runit/service
ln -s /etc/runit/sv/cupsd /run/runit/service
ln -s /etc/runit/sv/ntpd /run/runit/service
ln -s /etc/runit/sv/sddm /run/runit/service
