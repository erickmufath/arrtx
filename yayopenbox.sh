source arrtx/install.conf
git clone https://github.com/addy-dclxvi/openbox-theme-collections /home/${usrname}/.themes
rm -rf /home/${usrname}/.config/tint2
git clone https://github.com/addy-dclxvi/tint2-theme-collections /home/${usrname}/.config/tint2 --depth 1
cp ~/.config/tint2/minima/minima.tint2rc /home/${usrname}/.config/tint2/tint2rc
mkdir /home/${usrname}/.config/openbox
cp ~/arrtx/rc.xml /home/${usrname}/.config/openbox
cp ~/arrtx/autostart /home/${usrname}/.config/openbox
git clone https://aur.archlinux.org/yay.git /home/${usrname}
cd /home/${usrname}/yay
makepkg -si --noconfirm
cd /home/${usrname}
yay -Syyu
yay -Sy --noconfirm --needed - < arrtx/aur.txt
