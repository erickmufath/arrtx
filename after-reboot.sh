source /arrtx/install.conf
read -p "Pastikan sudah dalam root user (enter untuk lanjut atau ctrl+c untuk batal : "
/usr/bin/runuser -u ${usrname} -- sh arrtx/yay.sh
sh arrtx/root.sh
