lang fr_FR.UTF-8
keyboard fr
timezone Europe/Paris
selinux --disabled
firewall --disabled
xconfig --startxonboot
zerombr
clearpart --all
part / --size 20020 --fstype ext4
services --enabled=NetworkManager,ModemManager --disabled=sshd
network --bootproto=dhcp --device=link --activate
rootpw --lock --iscrypted locked
shutdown
repo --name=fedora --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-38&arch=x86_64
repo --name=updates --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=updates-released-f38&arch=x86_64


repo --name=rpmfusion-free --baseurl=http://download1.rpmfusion.org/free/fedora/releases/38/Everything/x86_64/os/
repo --name=rpmfusion-free-updates --baseurl=http://download1.rpmfusion.org/free/fedora/updates/38/x86_64/
repo --name=rpmfusion-nonfree --baseurl=http://download1.rpmfusion.org/nonfree/fedora/releases/38/Everything/x86_64/os/
repo --name=rpmfusion-nonfree-updates --baseurl=http://download1.rpmfusion.org/nonfree/fedora/updates/38/x86_64/






#repo --name=updates-testing --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=updates-testing-f$releasever&arch=$basearch
url --mirrorlist=https://mirrors.fedoraproject.org/mirrorlist?repo=fedora-38&arch=x86_64
%packages
# save some space
-mpage
-hplip
-isdn4k-utils
# scanning takes quite a bit of space :/
-xsane
-xsane-gimp
-sane-backends
fedora-release-xfce
# install env-group to resolve RhBug:1891500
@^xfce-desktop-environment
@xfce-apps
@xfce-extra-plugins
@xfce-media
@xfce-office
wget
system-config-printer
# save some space
-autofs
-acpid
-gimp-help
-desktop-backgrounds-basic
-aspell-*                   # dictionaries are big
-xfce4-sensors-plugin
-xfce4-eyes-plugin
rpmfusion-free-release
rpmfusion-nonfree-release
vlc
ffmpeg
%end
# need a bigger /
%post --nochroot --log=/mnt/sysimage/var/log/kickstart_post_nochroot.log
dnf -y install https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-38.noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-38.noarch.rpm
dnf --installroot=/mnt -y --allowerasing install vlc ffmpeg
%end

%post
# xfce configuration

# create /etc/sysconfig/desktop (needed for installation)

cat > /etc/sysconfig/desktop <<EOF
PREFERRED=/usr/bin/startxfce4
DISPLAYMANAGER=/usr/sbin/lightdm
EOF



cat >> /etc/rc.d/init.d/livesys << EOF

mkdir -p /home/liveuser/.config/xfce4

cat > /home/liveuser/.config/xfce4/helpers.rc << FOE
MailReader=sylpheed-claws
FileManager=Thunar
WebBrowser=firefox
FOE

# disable screensaver locking (#674410)
cat >> /home/liveuser/.xscreensaver << FOE
mode:           off
lock:           False
dpmsEnabled:    False
FOE

# deactivate xfconf-migration (#683161)
rm -f /etc/xdg/autostart/xfconf-migration-4.6.desktop || :

# deactivate xfce4-panel first-run dialog (#693569)
mkdir -p /home/liveuser/.config/xfce4/xfconf/xfce-perchannel-xml
cp /etc/xdg/xfce4/panel/default.xml /home/liveuser/.config/xfce4/xfconf/xfce-perchannel-xml/xfce4-panel.xml

# set up lightdm autologin
sed -i 's/^#autologin-user=.*/autologin-user=liveuser/' /etc/lightdm/lightdm.conf
sed -i 's/^#autologin-user-timeout=.*/autologin-user-timeout=0/' /etc/lightdm/lightdm.conf
#sed -i 's/^#show-language-selector=.*/show-language-selector=true/' /etc/lightdm/lightdm-gtk-greeter.conf

# set Xfce as default session, otherwise login will fail
sed -i 's/^#user-session=.*/user-session=xfce/' /etc/lightdm/lightdm.conf

# Show harddisk install on the desktop
sed -i -e 's/NoDisplay=true/NoDisplay=false/' /usr/share/applications/liveinst.desktop
mkdir /home/liveuser/Desktop
cp /usr/share/applications/liveinst.desktop /home/liveuser/Desktop

# no updater applet in live environment
rm -f /etc/xdg/autostart/org.mageia.dnfdragora-updater.desktop

# and mark it as executable (new Xfce security feature)
chmod +x /home/liveuser/Desktop/liveinst.desktop

# this goes at the end after all other changes. 
chown -R liveuser:liveuser /home/liveuser
restorecon -R /home/liveuser

EOF

%end

