#!/usr/bin/bash
dir=$HOME
export dir
cd $dir
cat > $dir/sources.list <<EOF
deb http://fr.archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse
deb-src http://fr.archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse
deb http://fr.archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse
deb-src http://fr.archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse
deb http://fr.archive.ubuntu.com/ubuntu/ jammy-proposed main restricted universe multiverse
deb http://fr.archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse
deb http://security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse
deb-src http://security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse
EOF
sudo rm -f /etc/apt/sources.list
sudo rm -rf /etc/apt/sources.list.d/*
sudo cp $dir/sources.list /etc/apt/sources.list
cat > $dir/resolv.conf <<EOM
nameserver 1.1.1.1
nameserver 1.0.1.0
EOM

cat > $dir/40multimedia-experimental <<EOF
Package: *
Pin: release a=warty,n=warty
Pin-Priority: 1001

Package: *
Pin: release a=warty-updates,n=warty-updates
Pin-Priority: 1001

Package: *
Pin: release a=warty-security,n=warty-security
Pin-Priority: 1001

Package: *
Pin: release a=warty-proposed,n=warty-proposed
Pin-Priority: -10

Package: *
Pin: release a=warty-backport,n=warty-backport
Pin-Priority: -10

Package: *
Pin: release a=hoary,n=hoary
Pin-Priority: 1001

Package: *
Pin: release a=hoary-updates,n=hoary-updates
Pin-Priority: 1001

Package: *
Pin: release a=hoary-security,n=hoary-security
Pin-Priority: 1001

Package: *
Pin: release a=hoary-proposed,n=hoary-proposed
Pin-Priority: -10

Package: *
Pin: release a=hoary-backport,n=hoary-backport
Pin-Priority: -10

Package: *
Pin: release a=breezy,n=breezy
Pin-Priority: 1001

Package: *
Pin: release a=breezy-updates,n=breezy-updates
Pin-Priority: 1001

Package: *
Pin: release a=breezy-security,n=breezy-security
Pin-Priority: 1001

Package: *
Pin: release a=breezy-proposed,n=breezy-proposed
Pin-Priority: -10

Package: *
Pin: release a=breezy-backport,n=breezy-backport
Pin-Priority: -10

Package: *
Pin: release a=dapper,n=dapper
Pin-Priority: 1001

Package: *
Pin: release a=dapper-updates,n=dapper-updates
Pin-Priority: 1001

Package: *
Pin: release a=dapper-security,n=dapper-security
Pin-Priority: 1001

Package: *
Pin: release a=dapper-proposed,n=dapper-proposed
Pin-Priority: -10

Package: *
Pin: release a=dapper-backport,n=dapper-backport
Pin-Priority: -10

Package: *
Pin: release a=edgy,n=edgy
Pin-Priority: 1001

Package: *
Pin: release a=edgy-updates,n=edgy-updates
Pin-Priority: 1001

Package: *
Pin: release a=edgy-security,n=edgy-security
Pin-Priority: 1001

Package: *
Pin: release a=edgy-proposed,n=edgy-proposed
Pin-Priority: -10

Package: *
Pin: release a=edgy-backport,n=edgy-backport
Pin-Priority: -10

Package: *
Pin: release a=feisty,n=feisty
Pin-Priority: 1001

Package: *
Pin: release a=feisty-updates,n=feisty-updates
Pin-Priority: 1001

Package: *
Pin: release a=feisty-security,n=feisty-security
Pin-Priority: 1001

Package: *
Pin: release a=feisty-proposed,n=feisty-proposed
Pin-Priority: -10

Package: *
Pin: release a=feisty-backport,n=feisty-backport
Pin-Priority: -10

Package: *
Pin: release a=gutsy,n=gutsy
Pin-Priority: 1001

Package: *
Pin: release a=gutsy-updates,n=gutsy-updates
Pin-Priority: 1001

Package: *
Pin: release a=gutsy-security,n=gutsy-security
Pin-Priority: 1001

Package: *
Pin: release a=gutsy-proposed,n=gutsy-proposed
Pin-Priority: -10

Package: *
Pin: release a=gutsy-backport,n=gutsy-backport
Pin-Priority: -10

Package: *
Pin: release a=hardy,n=hardy
Pin-Priority: 1001

Package: *
Pin: release a=hardy-updates,n=hardy-updates
Pin-Priority: 1001

Package: *
Pin: release a=hardy-security,n=hardy-security
Pin-Priority: 1001

Package: *
Pin: release a=hardy-proposed,n=hardy-proposed
Pin-Priority: -10

Package: *
Pin: release a=hardy-backport,n=hardy-backport
Pin-Priority: -10

Package: *
Pin: release a=intrepid,n=intrepid
Pin-Priority: 1001

Package: *
Pin: release a=intrepid-updates,n=intrepid-updates
Pin-Priority: 1001

Package: *
Pin: release a=intrepid-security,n=intrepid-security
Pin-Priority: 1001

Package: *
Pin: release a=intrepid-proposed,n=intrepid-proposed
Pin-Priority: -10

Package: *
Pin: release a=intrepid-backport,n=intrepid-backport
Pin-Priority: -10

Package: *
Pin: release a=jaunty,n=jaunty
Pin-Priority: 1001

Package: *
Pin: release a=jaunty-updates,n=jaunty-updates
Pin-Priority: 1001

Package: *
Pin: release a=jaunty-security,n=jaunty-security
Pin-Priority: 1001

Package: *
Pin: release a=jaunty-proposed,n=jaunty-proposed
Pin-Priority: -10

Package: *
Pin: release a=jaunty-backport,n=jaunty-backport
Pin-Priority: -10

Package: *
Pin: release a=karmic-updates,n=karmic-updates
Pin-Priority: 1001

Package: *
Pin: release a=karmic-security,n=karmic-security
Pin-Priority: 1001

Package: *
Pin: release a=karmic-proposed,n=karmic-proposed
Pin-Priority: -10

Package: *
Pin: release a=karmic-backport,n=karmic-backport
Pin-Priority: -10

Package: *
Pin: release a=lucid,n=lucid
Pin-Priority: 1001

Package: *
Pin: release a=lucid-updates,n=lucid-updates
Pin-Priority: 1001

Package: *
Pin: release a=lucid-security,n=lucid-security
Pin-Priority: 1001

Package: *
Pin: release a=lucid-proposed,n=lucid-proposed
Pin-Priority: -10

Package: *
Pin: release a=lucid-backport,n=lucid-backport
Pin-Priority: -10

Package: *
Pin: release a=maverick,n=maverick
Pin-Priority: 1001

Package: *
Pin: release a=maverick-updates,n=maverick-updates
Pin-Priority: 1001

Package: *
Pin: release a=maverick-security,n=maverick-security
Pin-Priority: 1001

Package: *
Pin: release a=maverick-proposed,n=maverick-proposed
Pin-Priority: -10

Package: *
Pin: release a=maverick-backport,n=maverick-backport
Pin-Priority: -10

Package: *
Pin: release a=natty,n=natty
Pin-Priority: 1001

Package: *
Pin: release a=natty-updates,n=natty-updates
Pin-Priority: 1001

Package: *
Pin: release a=natty-security,n=natty-security
Pin-Priority: 1001

Package: *
Pin: release a=natty-proposed,n=natty-proposed
Pin-Priority: -10

Package: *
Pin: release a=natty-backport,n=natty-backport
Pin-Priority: -10

Package: *
Pin: release a=oneiric,n=oneiric
Pin-Priority: 1001

Package: *
Pin: release a=oneiric-updates,n=oneiric-updates
Pin-Priority: 1001

Package: *
Pin: release a=oneiric-security,n=oneiric-security
Pin-Priority: 1001

Package: *
Pin: release a=oneiric-proposed,n=oneiric-proposed
Pin-Priority: -10

Package: *
Pin: release a=oneiric-backport,n=oneiric-backport
Pin-Priority: -10

Package: *
Pin: release a=precise,n=precise
Pin-Priority: 1001

Package: *
Pin: release a=precise-updates,n=precise-updates
Pin-Priority: 1001

Package: *
Pin: release a=precise-security,n=precise-security
Pin-Priority: 1001

Package: *
Pin: release a=precise-proposed,n=precise-proposed
Pin-Priority: -10

Package: *
Pin: release a=precise-backport,n=precise-backport
Pin-Priority: -10
Package: *
Pin: release a=karmic,n=karmic
Pin-Priority: 1001
Package: *
Pin: release a=quantal,n=quantal
Pin-Priority: 1001

Package: *
Pin: release a=quantal-updates,n=quantal-updates
Pin-Priority: 1001

Package: *
Pin: release a=quantal-security,n=quantal-security
Pin-Priority: 1001

Package: *
Pin: release a=quantal-proposed,n=quantal-proposed
Pin-Priority: -10

Package: *
Pin: release a=quantal-backport,n=quantal-backport
Pin-Priority: -10

Package: *
Pin: release a=raring,n=raring
Pin-Priority: 1001

Package: *
Pin: release a=raring-updates,n=raring-updates
Pin-Priority: 1001

Package: *
Pin: release a=raring-security,n=raring-security
Pin-Priority: 1001

Package: *
Pin: release a=raring-proposed,n=raring-proposed
Pin-Priority: -10

Package: *
Pin: release a=raring-backport,n=raring-backport
Pin-Priority: -10

Package: *
Pin: release a=saucy,n=saucy
Pin-Priority: 1001

Package: *
Pin: release a=saucy-updates,n=saucy-updates
Pin-Priority: 1001

Package: *
Pin: release a=saucy-security,n=saucy-security
Pin-Priority: 1001

Package: *
Pin: release a=saucy-proposed,n=saucy-proposed
Pin-Priority: -10

Package: *
Pin: release a=saucy-backport,n=saucy-backport
Pin-Priority: -10

Package: *
Pin: release a=trusty,n=trusty
Pin-Priority: 1001

Package: *
Pin: release a=trusty-updates,n=trusty-updates
Pin-Priority: 1001

Package: *
Pin: release a=trusty-security,n=trusty-security
Pin-Priority: 1001

Package: *
Pin: release a=trusty-proposed,n=trusty-proposed
Pin-Priority: -10

Package: *
Pin: release a=trusty-backport,n=trusty-backport
Pin-Priority: -10

Package: *
Pin: release a=utopic,n=utopic
Pin-Priority: 1001

Package: *
Pin: release a=utopic-updates,n=utopic-updates
Pin-Priority: 1001

Package: *
Pin: release a=utopic-security,n=utopic-security
Pin-Priority: 1001

Package: *
Pin: release a=utopic-proposed,n=utopic-proposed
Pin-Priority: -10

Package: *
Pin: release a=utopic-backport,n=utopic-backport
Pin-Priority: -10

Package: *
Pin: release a=vivid,n=vivid
Pin-Priority: 1001

Package: *
Pin: release a=vivid-updates,n=vivid-updates
Pin-Priority: 1001

Package: *
Pin: release a=vivid-security,n=vivid-security
Pin-Priority: 1001

Package: *
Pin: release a=vivid-proposed,n=vivid-proposed
Pin-Priority: -10

Package: *
Pin: release a=vivid-backport,n=vivid-backport
Pin-Priority: -10

Package: *
Pin: release a=wily,n=wily
Pin-Priority: 1001

Package: *
Pin: release a=wily-updates,n=wily-updates
Pin-Priority: 1001

Package: *
Pin: release a=wily-security,n=wily-security
Pin-Priority: 1001

Package: *
Pin: release a=wily-proposed,n=wily-proposed
Pin-Priority: -10

Package: *
Pin: release a=wily-backport,n=wily-backport
Pin-Priority: -10

Package: *
Pin: release a=xenial,n=xenial
Pin-Priority: 1001

Package: *
Pin: release a=xenial-updates,n=xenial-updates
Pin-Priority: 1001

Package: *
Pin: release a=xenial-security,n=xenial-security
Pin-Priority: 1001

Package: *
Pin: release a=xenial-proposed,n=xenial-proposed
Pin-Priority: -10

Package: *
Pin: release a=xenial-backport,n=xenial-backport
Pin-Priority: -10

Package: *
Pin: release a=yakkety,n=yakkety
Pin-Priority: 1001

Package: *
Pin: release a=yakkety-updates,n=yakkety-updates
Pin-Priority: 1001

Package: *
Pin: release a=yakkety-security,n=yakkety-security
Pin-Priority: 1001

Package: *
Pin: release a=yakkety-proposed,n=yakkety-proposed
Pin-Priority: -10

Package: *
Pin: release a=yakkety-backport,n=yakkety-backport
Pin-Priority: -10

Package: *
Pin: release a=zesty,n=zesty
Pin-Priority: 1001

Package: *
Pin: release a=zesty-updates,n=zesty-updates
Pin-Priority: 1001

Package: *
Pin: release a=zesty-security,n=zesty-security
Pin-Priority: 1001

Package: *
Pin: release a=zesty-proposed,n=zesty-proposed
Pin-Priority: -10

Package: *
Pin: release a=zesty-backport,n=zesty-backport
Pin-Priority: -10

Package: *
Pin: release a=artful,n=artful
Pin-Priority: 1001

Package: *
Pin: release a=artful-updates,n=artful-updates
Pin-Priority: 1001

Package: *
Pin: release a=artful-security,n=artful-security
Pin-Priority: 1001

Package: *
Pin: release a=artful-proposed,n=artful-proposed
Pin-Priority: -10

Package: *
Pin: release a=artful-backport,n=artful-backport
Pin-Priority: -10

Package: *
Pin: release a=bionic,n=bionic
Pin-Priority: 1001

Package: *
Pin: release a=bionic-updates,n=bionic-updates
Pin-Priority: 1001

Package: *
Pin: release a=bionic-security,n=bionic-security
Pin-Priority: 1001

Package: *
Pin: release a=bionic-proposed,n=bionic-proposed
Pin-Priority: -10

Package: *
Pin: release a=bionic-backport,n=bionic-backport
Pin-Priority: -10

Package: *
Pin: release a=cosmic,n=cosmic
Pin-Priority: 1001

Package: *
Pin: release a=cosmic-updates,n=cosmic-updates
Pin-Priority: 1001

Package: *
Pin: release a=cosmic-security,n=cosmic-security
Pin-Priority: 1001

Package: *
Pin: release a=cosmic-proposed,n=cosmic-proposed
Pin-Priority: -10

Package: *
Pin: release a=cosmic-backport,n=cosmic-backport
Pin-Priority: -10

Package: *
Pin: release a=dingo,n=dingo
Pin-Priority: 1001

Package: *
Pin: release a=dingo-updates,n=dingo-updates
Pin-Priority: 1001

Package: *
Pin: release a=dingo-security,n=dingo-security
Pin-Priority: 1001

Package: *
Pin: release a=dingo-proposed,n=dingo-proposed
Pin-Priority: -10

Package: *
Pin: release a=dingo-backport,n=dingo-backport
Pin-Priority: -10

Package: *
Pin: release a=eoan,n=eoan
Pin-Priority: 1001

Package: *
Pin: release a=eoan-updates,n=eoan-updates
Pin-Priority: 1001

Package: *
Pin: release a=eoan-security,n=eoan-security
Pin-Priority: 1001

Package: *
Pin: release a=eoan-proposed,n=eoan-proposed
Pin-Priority: -10

Package: *
Pin: release a=eoan-backport,n=eoan-backport
Pin-Priority: -10

Package: *
Pin: release a=focal,n=focal
Pin-Priority: 1001

Package: *
Pin: release a=focal-updates,n=focal-updates
Pin-Priority: 1001

Package: *
Pin: release a=focal-security,n=focal-security
Pin-Priority: 1001

Package: *
Pin: release a=focal-proposed,n=focal-proposed
Pin-Priority: -10

Package: *
Pin: release a=focal-backport,n=focal-backport
Pin-Priority: -10

Package: *
Pin: release a=groovy,n=groovy
Pin-Priority: 1001

Package: *
Pin: release a=groovy-updates,n=groovy-updates
Pin-Priority: 1001

Package: *
Pin: release a=groovy-security,n=groovy-security
Pin-Priority: 1001

Package: *
Pin: release a=groovy-proposed,n=groovy-proposed
Pin-Priority: -10

Package: *
Pin: release a=groovy-backport,n=groovy-backport
Pin-Priority: -10

Package: *
Pin: release a=hirsute,n=hirsute
Pin-Priority: 1001

Package: *
Pin: release a=hirsute-updates,n=hirsute-updates
Pin-Priority: 1001

Package: *
Pin: release a=hirsute-security,n=hirsute-security
Pin-Priority: 1001

Package: *
Pin: release a=hirsute-proposed,n=hirsute-proposed
Pin-Priority: -10

Package: *
Pin: release a=hirsute-backport,n=hirsute-backport
Pin-Priority: -10

Package: *
Pin: release a=impish,n=impish
Pin-Priority: 1001

Package: *
Pin: release a=impish-updates,n=impish-updates
Pin-Priority: 1001

Package: *
Pin: release a=impish-security,n=impish-security
Pin-Priority: 1001

Package: *
Pin: release a=impish-proposed,n=impish-proposed
Pin-Priority: -10

Package: *
Pin: release a=impish-backport,n=impish-backport
Pin-Priority: -10



Package: *
Pin: release a=jammy,n=jammy
Pin-Priority: 1001

Package: *
Pin: release a=jammy-updates,n=jammy-updates
Pin-Priority: 1001

Package: *
Pin: release a=jammy-security,n=jammy-security
Pin-Priority: 1001

Package: *
Pin: release a=jammy-proposed,n=jammy-proposed
Pin-Priority: -10

Package: *
Pin: release a=jammy-backport,n=jammy-backport
Pin-Priority: -10

Package: *
Pin: release a=kinetic,n=kinetic
Pin-Priority: 1001

Package: *
Pin: release a=kinetic-updates,n=kinetic-updates
Pin-Priority: 1001

Package: *
Pin: release a=kinetic-security,n=kinetic-security
Pin-Priority: 1001

Package: *
Pin: release a=kinetic-proposed,n=kinetic-proposed
Pin-Priority: -10

Package: *
Pin: release a=kinetic-backport,n=kinetic-backport
Pin-Priority: -10

Package: *
Pin: release a=lunar,n=lunar
Pin-Priority: 1001

Package: *
Pin: release a=lunar-updates,n=lunar-updates
Pin-Priority: 1001

Package: *
Pin: release a=lunar-security,n=lunar-security
Pin-Priority: 1001

Package: *
Pin: release a=lunar-proposed,n=lunar-proposed
Pin-Priority: -10

Package: *
Pin: release a=lunar-backport,n=lunar-backport
Pin-Priority: -10

Package: *
Pin: release a=mantic,n=mantic
Pin-Priority: 1001

Package: *
Pin: release a=mantic-updates,n=mantic-updates
Pin-Priority: 1001

Package: *
Pin: release a=mantic-security,n=mantic-security
Pin-Priority: 1001

Package: *
Pin: release a=mantic-proposed,n=mantic-proposed
Pin-Priority: -10

Package: *
Pin: release a=mantic-backport,n=mantic-backport
Pin-Priority: -10


EOF
sudo rm -f /etc/resolv.conf
sudo cp $dir/resolv.conf /etc/resolv.conf
sudo dhclient
sudo dhclient
sudo apt-get update
sudo apt-get -y install wget
sudo rm -rf $dir/livecd
sudo rm -rf $dir/jammy-desktop-amd64.iso
#wget https://cdimage.ubuntu.com/xubuntu/releases/22.04.2/release/xubuntu-22.04.2-desktop-amd64.iso -O $dir/jammy-desktop-amd64.iso
wget https://cdimage.ubuntu.com/xubuntu/jammy/daily-live/current/jammy-desktop-amd64.iso -O $dir/jammy-desktop-amd64.iso
sudo apt-get install -y squashfs-tools schroot genisoimage xorriso
mkdir $dir/livecd
cd $dir/livecd
mkdir iso squashfs
sudo mount -o loop $dir/jammy-desktop-amd64.iso /mnt
sudo cp -av /mnt/. iso
sudo umount /mnt
sudo mount -t squashfs -o loop iso/casper/filesystem.squashfs /mnt
sudo cp -av /mnt/. squashfs
sudo umount /mnt
sudo mount --bind /proc squashfs/proc
sudo mount --bind /sys squashfs/sys
sudo mount --bind /dev squashfs/dev
sudo mount --bind /dev/pts squashfs/dev/pts
sudo cp $dir/resolv.conf squashfs/etc/resolv.conf
sudo rm -f $dir/resolv.conf
sudo mkdir -p squashfs/etc/apt/preferences.d/
sudo cp $dir/40multimedia-experimental squashfs/etc/apt/preferences.d/40multimedia-experimental
sudo rm -f $dir/40multimedia-experimental
sudo cp /etc/hosts squashfs/etc/hosts
sudo cp $dir/sources.list squashfs/etc/apt/sources.list
sudo rm -rf $dir/sources.list
sudo rm -rf squashfs/etc/apt/sources.list.d/*
sudo chroot squashfs apt-get update
sudo chroot squashfs apt-get -y --allow-downgrades dist-upgrade wbrazilian wogerman thunderbird-locale-zh-hans fcitx5-frontend-gtk2 hunspell-es
sudo chroot squashfs apt-get -y install hyphen-bn hunspell-en-ca hunspell-fr fonts-arphic-uming hyphen-de thunderbird-locale-en-gb ibus-m17n
sudo chroot squashfs apt-get -y install hyphen-en-us thunderbird-locale-es-ar hunspell-pt-pt wportuguese fonts-noto-cjk-extra hyphen-pt-pt
sudo chroot squashfs apt-get -y install wswiss mythes-de-ch hyphen-fr mythes-fr hyphen-hi gimp-help-pt thunderbird-locale-fr wspanish
sudo chroot squashfs apt-get -y install thunderbird-locale-bn mozc-utils-gui mythes-de hunspell-en-au hunspell-de-at-frami gimp-help-de
sudo chroot squashfs apt-get -y install fcitx5-module-cloudpinyin thunderbird-locale-es fcitx5-chinese-addons mythes-es fcitx5-frontend-gtk4
sudo chroot squashfs apt-get -y install thunderbird-locale-en thunderbird-locale-de gimp-help-ja fcitx5-frontend-qt5 hunspell-de-de-frami
sudo chroot squashfs apt-get -y install myspell-xh wbritish hyphen-pt-br hunspell-bn thunderbird-locale-pt mythes-en-us thunderbird-locale-pt-pt
sudo chroot squashfs apt-get -y install mythes-en-au gimp-help-en fcitx5 hyphen-es hunspell-hi ibus-mozc thunderbird-locale-bn-bd
sudo chroot squashfs apt-get -y install fonts-arphic-ukai thunderbird-locale-es-es thunderbird-locale-ja gimp-help-fr hunspell-en-gb
sudo chroot squashfs apt-get -y install chromium-browser-l10n thunderbird-locale-pt-br thunderbird-locale-en-us gimp-help-es hyphen-en-ca
sudo chroot squashfs apt-get -y install fcitx5-frontend-gtk3l hyphen-en-gb mythes-pt-pt hunspell-de-ch-frami hunspell-en-za
sudo chroot squashfs apt-get -y install hunspell-pt-br wfrench wngerman
echo "install language"
sudo chroot squashfs dpkg --add-architecture i386 
sudo chroot squashfs mkdir -pm755 /etc/apt/keyrings
sudo chroot squashfs wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo chroot squashfs wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo chroot squashfs apt-get update
sudo chroot squashfs apt-get -y --allow-downgrades dist-upgrade
sudo chroot squashfs apt-get -y install --install-recommends winehq-stable
sudo chroot squashfs apt-get -y install filezilla putty putty-tools
echo "install wine"
sudo chroot squashfs apt-get -y install playonlinux vlc ffmpeg winff
echo "install playonlinux vlc ffmpeg winff"
sudo chroot squashfs apt-get -y install debhelper cdbs lintian build-essential fakeroot devscripts dh-make dput cmake ntp
echo "install build-essential"
sudo chroot squashfs apt-get update
echo "install console-data"
sudo chroot squashfs apt-get -y install console-data
sudo chroot squashfs dpkg-reconfigure tzdata
sudo chroot squashfs apt-get -y purge linux-image-*-generic linux-image-unsigned-*-generic linux-headers-* linux-image-generic-hwe-22.04 linux-headers-generic-hwe-22.04
sudo chroot squashfs apt-get -y install linux-image-5.19.0-41-generic linux-headers-5.19.0-41
sudo chroot squashfs apt-get -y purge libreoffice*
sudo chroot squashfs apt-get -y autoremove
sudo chroot squashfs update-initramfs -u -k all
sudo chroot squashfs apt-get clean
sudo chroot squashfs apt-get autoclean
sudo chroot squashfs apt-get -y autoremove
sudo umount -lf squashfs/sys
sudo umount -lf squashfs/sys
sudo umount -lf squashfs/proc
sudo umount -lf squashfs/proc
sudo umount -lf squashfs/dev/pts
sudo umount -lf squashfs/dev/pts
sudo umount -lf squashfs/dev
sudo umount -lf squashfs/dev
sudo rm f iso/casper/vmlinuz
sudo cp squashfs/boot/vmlinuz-5.19.0-41-generic iso/casper/vmlinuz
sudo rm -f iso/casper/initrd
sudo cp squashfs/boot/initrd.img-5.19.0-41-generic iso/casper/initrd
sudo chmod a+w iso/casper/filesystem.manifest
sudo chroot squashfs dpkg-query -W --showformat='${Package}  ${Version}\n' >iso/casper/filesystem.manifest
sudo chmod go-w iso/casper/filesystem.manifest
sudo sed -i '/gparted-common/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/gparted/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-bn-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-bn/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-de-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-de/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-en-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-en/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-es-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-es/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-fr-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-fr/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-bn-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-bn/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-de-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-de/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-en-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-en/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-es-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-es/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-fr-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-fr/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-hi-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-hi/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-ja-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-ja/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-pt-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-pt/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-xh-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-xh/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-zh-hans-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-zh-hans/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-hi-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-hi/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-ja-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-ja/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-pt-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-pt/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-xh-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-xh/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-zh-hans-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-zh-hans/d' iso/casper/filesystem.manifest-remove
sudo rm -f iso/casper/filesystem.squashfs
cd squashfs
sudo mksquashfs . ../iso/casper/filesystem.squashfs -comp zstd -Xcompression-level 22 -progress
cd ../iso
sudo bash -c "find . -path ./isolinux -prune -o -type f -not -name md5sum.txt -print0 | xargs -0 md5sum | tee md5sum.txt"
dd if=$dir/jammy-desktop-amd64.iso bs=1 count=432 of=$dir/livecd/boot_hybrid.img
clear
/sbin/fdisk -l $dir/jammy-desktop-amd64.iso
efistart=6001388
#read -s -p "efi start:" efistart
efitaille=10068
#read -s -p "efi taille:" efitaille
sudo dd if=$dir/jammy-desktop-amd64.iso bs=512 skip=$efistart count=$efitaille of=$dir/livecd/efi.img
sudo xorriso -as mkisofs -r \
  -V 'Xubuntu 22.04 LTS' \
  -o $dir/livecd/xubuntu-22.04.2-desktop-amd64.iso \
  --grub2-mbr $dir/livecd/boot_hybrid.img \
  -partition_offset 16 \
  --mbr-force-bootable \
  -append_partition 2 28732ac11ff8d211ba4b00a0c93ec93b $dir/livecd/efi.img \
  -appended_part_as_gpt \
  -iso_mbr_part_type a2a0d0ebe5b9334487c068b6b72699c7 \
  -c '/boot.catalog' \
  -b '/boot/grub/i386-pc/eltorito.img' \
    -no-emul-boot -boot-load-size 4 -boot-info-table --grub2-boot-info \
  -eltorito-alt-boot \
  -e '--interval:appended_partition_2:::' \
    -no-emul-boot .
cd $dir
cat > $dir/sources.list <<EOF
deb http://fr.archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse
deb-src http://fr.archive.ubuntu.com/ubuntu/ jammy main restricted universe multiverse
deb http://fr.archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse
deb-src http://fr.archive.ubuntu.com/ubuntu/ jammy-updates main restricted universe multiverse
deb http://fr.archive.ubuntu.com/ubuntu/ jammy-proposed main restricted universe multiverse
deb http://fr.archive.ubuntu.com/ubuntu/ jammy-backports main restricted universe multiverse
deb http://security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse
deb-src http://security.ubuntu.com/ubuntu jammy-security main restricted universe multiverse
EOF
sudo rm -f /etc/apt/sources.list
sudo rm -rf /etc/apt/sources.list.d/*
sudo cp $dir/sources.list /etc/apt/sources.list
cat > $dir/resolv.conf <<EOM
nameserver 1.1.1.1
nameserver 1.0.1.0
EOM

cat > $dir/40multimedia-experimental <<EOF
Package: *
Pin: release a=warty,n=warty
Pin-Priority: 1001

Package: *
Pin: release a=warty-updates,n=warty-updates
Pin-Priority: 1001

Package: *
Pin: release a=warty-security,n=warty-security
Pin-Priority: 1001

Package: *
Pin: release a=warty-proposed,n=warty-proposed
Pin-Priority: -10

Package: *
Pin: release a=warty-backport,n=warty-backport
Pin-Priority: -10

Package: *
Pin: release a=hoary,n=hoary
Pin-Priority: 1001

Package: *
Pin: release a=hoary-updates,n=hoary-updates
Pin-Priority: 1001

Package: *
Pin: release a=hoary-security,n=hoary-security
Pin-Priority: 1001

Package: *
Pin: release a=hoary-proposed,n=hoary-proposed
Pin-Priority: -10

Package: *
Pin: release a=hoary-backport,n=hoary-backport
Pin-Priority: -10

Package: *
Pin: release a=breezy,n=breezy
Pin-Priority: 1001

Package: *
Pin: release a=breezy-updates,n=breezy-updates
Pin-Priority: 1001

Package: *
Pin: release a=breezy-security,n=breezy-security
Pin-Priority: 1001

Package: *
Pin: release a=breezy-proposed,n=breezy-proposed
Pin-Priority: -10

Package: *
Pin: release a=breezy-backport,n=breezy-backport
Pin-Priority: -10

Package: *
Pin: release a=dapper,n=dapper
Pin-Priority: 1001

Package: *
Pin: release a=dapper-updates,n=dapper-updates
Pin-Priority: 1001

Package: *
Pin: release a=dapper-security,n=dapper-security
Pin-Priority: 1001

Package: *
Pin: release a=dapper-proposed,n=dapper-proposed
Pin-Priority: -10

Package: *
Pin: release a=dapper-backport,n=dapper-backport
Pin-Priority: -10

Package: *
Pin: release a=edgy,n=edgy
Pin-Priority: 1001

Package: *
Pin: release a=edgy-updates,n=edgy-updates
Pin-Priority: 1001

Package: *
Pin: release a=edgy-security,n=edgy-security
Pin-Priority: 1001

Package: *
Pin: release a=edgy-proposed,n=edgy-proposed
Pin-Priority: -10

Package: *
Pin: release a=edgy-backport,n=edgy-backport
Pin-Priority: -10

Package: *
Pin: release a=feisty,n=feisty
Pin-Priority: 1001

Package: *
Pin: release a=feisty-updates,n=feisty-updates
Pin-Priority: 1001

Package: *
Pin: release a=feisty-security,n=feisty-security
Pin-Priority: 1001

Package: *
Pin: release a=feisty-proposed,n=feisty-proposed
Pin-Priority: -10

Package: *
Pin: release a=feisty-backport,n=feisty-backport
Pin-Priority: -10

Package: *
Pin: release a=gutsy,n=gutsy
Pin-Priority: 1001

Package: *
Pin: release a=gutsy-updates,n=gutsy-updates
Pin-Priority: 1001

Package: *
Pin: release a=gutsy-security,n=gutsy-security
Pin-Priority: 1001

Package: *
Pin: release a=gutsy-proposed,n=gutsy-proposed
Pin-Priority: -10

Package: *
Pin: release a=gutsy-backport,n=gutsy-backport
Pin-Priority: -10

Package: *
Pin: release a=hardy,n=hardy
Pin-Priority: 1001

Package: *
Pin: release a=hardy-updates,n=hardy-updates
Pin-Priority: 1001

Package: *
Pin: release a=hardy-security,n=hardy-security
Pin-Priority: 1001

Package: *
Pin: release a=hardy-proposed,n=hardy-proposed
Pin-Priority: -10

Package: *
Pin: release a=hardy-backport,n=hardy-backport
Pin-Priority: -10

Package: *
Pin: release a=intrepid,n=intrepid
Pin-Priority: 1001

Package: *
Pin: release a=intrepid-updates,n=intrepid-updates
Pin-Priority: 1001

Package: *
Pin: release a=intrepid-security,n=intrepid-security
Pin-Priority: 1001

Package: *
Pin: release a=intrepid-proposed,n=intrepid-proposed
Pin-Priority: -10

Package: *
Pin: release a=intrepid-backport,n=intrepid-backport
Pin-Priority: -10

Package: *
Pin: release a=jaunty,n=jaunty
Pin-Priority: 1001

Package: *
Pin: release a=jaunty-updates,n=jaunty-updates
Pin-Priority: 1001

Package: *
Pin: release a=jaunty-security,n=jaunty-security
Pin-Priority: 1001

Package: *
Pin: release a=jaunty-proposed,n=jaunty-proposed
Pin-Priority: -10

Package: *
Pin: release a=jaunty-backport,n=jaunty-backport
Pin-Priority: -10

Package: *
Pin: release a=karmic-updates,n=karmic-updates
Pin-Priority: 1001

Package: *
Pin: release a=karmic-security,n=karmic-security
Pin-Priority: 1001

Package: *
Pin: release a=karmic-proposed,n=karmic-proposed
Pin-Priority: -10

Package: *
Pin: release a=karmic-backport,n=karmic-backport
Pin-Priority: -10

Package: *
Pin: release a=lucid,n=lucid
Pin-Priority: 1001

Package: *
Pin: release a=lucid-updates,n=lucid-updates
Pin-Priority: 1001

Package: *
Pin: release a=lucid-security,n=lucid-security
Pin-Priority: 1001

Package: *
Pin: release a=lucid-proposed,n=lucid-proposed
Pin-Priority: -10

Package: *
Pin: release a=lucid-backport,n=lucid-backport
Pin-Priority: -10

Package: *
Pin: release a=maverick,n=maverick
Pin-Priority: 1001

Package: *
Pin: release a=maverick-updates,n=maverick-updates
Pin-Priority: 1001

Package: *
Pin: release a=maverick-security,n=maverick-security
Pin-Priority: 1001

Package: *
Pin: release a=maverick-proposed,n=maverick-proposed
Pin-Priority: -10

Package: *
Pin: release a=maverick-backport,n=maverick-backport
Pin-Priority: -10

Package: *
Pin: release a=natty,n=natty
Pin-Priority: 1001

Package: *
Pin: release a=natty-updates,n=natty-updates
Pin-Priority: 1001

Package: *
Pin: release a=natty-security,n=natty-security
Pin-Priority: 1001

Package: *
Pin: release a=natty-proposed,n=natty-proposed
Pin-Priority: -10

Package: *
Pin: release a=natty-backport,n=natty-backport
Pin-Priority: -10

Package: *
Pin: release a=oneiric,n=oneiric
Pin-Priority: 1001

Package: *
Pin: release a=oneiric-updates,n=oneiric-updates
Pin-Priority: 1001

Package: *
Pin: release a=oneiric-security,n=oneiric-security
Pin-Priority: 1001

Package: *
Pin: release a=oneiric-proposed,n=oneiric-proposed
Pin-Priority: -10

Package: *
Pin: release a=oneiric-backport,n=oneiric-backport
Pin-Priority: -10

Package: *
Pin: release a=precise,n=precise
Pin-Priority: 1001

Package: *
Pin: release a=precise-updates,n=precise-updates
Pin-Priority: 1001

Package: *
Pin: release a=precise-security,n=precise-security
Pin-Priority: 1001

Package: *
Pin: release a=precise-proposed,n=precise-proposed
Pin-Priority: -10

Package: *
Pin: release a=precise-backport,n=precise-backport
Pin-Priority: -10
Package: *
Pin: release a=karmic,n=karmic
Pin-Priority: 1001
Package: *
Pin: release a=quantal,n=quantal
Pin-Priority: 1001

Package: *
Pin: release a=quantal-updates,n=quantal-updates
Pin-Priority: 1001

Package: *
Pin: release a=quantal-security,n=quantal-security
Pin-Priority: 1001

Package: *
Pin: release a=quantal-proposed,n=quantal-proposed
Pin-Priority: -10

Package: *
Pin: release a=quantal-backport,n=quantal-backport
Pin-Priority: -10

Package: *
Pin: release a=raring,n=raring
Pin-Priority: 1001

Package: *
Pin: release a=raring-updates,n=raring-updates
Pin-Priority: 1001

Package: *
Pin: release a=raring-security,n=raring-security
Pin-Priority: 1001

Package: *
Pin: release a=raring-proposed,n=raring-proposed
Pin-Priority: -10

Package: *
Pin: release a=raring-backport,n=raring-backport
Pin-Priority: -10

Package: *
Pin: release a=saucy,n=saucy
Pin-Priority: 1001

Package: *
Pin: release a=saucy-updates,n=saucy-updates
Pin-Priority: 1001

Package: *
Pin: release a=saucy-security,n=saucy-security
Pin-Priority: 1001

Package: *
Pin: release a=saucy-proposed,n=saucy-proposed
Pin-Priority: -10

Package: *
Pin: release a=saucy-backport,n=saucy-backport
Pin-Priority: -10

Package: *
Pin: release a=trusty,n=trusty
Pin-Priority: 1001

Package: *
Pin: release a=trusty-updates,n=trusty-updates
Pin-Priority: 1001

Package: *
Pin: release a=trusty-security,n=trusty-security
Pin-Priority: 1001

Package: *
Pin: release a=trusty-proposed,n=trusty-proposed
Pin-Priority: -10

Package: *
Pin: release a=trusty-backport,n=trusty-backport
Pin-Priority: -10

Package: *
Pin: release a=utopic,n=utopic
Pin-Priority: 1001

Package: *
Pin: release a=utopic-updates,n=utopic-updates
Pin-Priority: 1001

Package: *
Pin: release a=utopic-security,n=utopic-security
Pin-Priority: 1001

Package: *
Pin: release a=utopic-proposed,n=utopic-proposed
Pin-Priority: -10

Package: *
Pin: release a=utopic-backport,n=utopic-backport
Pin-Priority: -10

Package: *
Pin: release a=vivid,n=vivid
Pin-Priority: 1001

Package: *
Pin: release a=vivid-updates,n=vivid-updates
Pin-Priority: 1001

Package: *
Pin: release a=vivid-security,n=vivid-security
Pin-Priority: 1001

Package: *
Pin: release a=vivid-proposed,n=vivid-proposed
Pin-Priority: -10

Package: *
Pin: release a=vivid-backport,n=vivid-backport
Pin-Priority: -10

Package: *
Pin: release a=wily,n=wily
Pin-Priority: 1001

Package: *
Pin: release a=wily-updates,n=wily-updates
Pin-Priority: 1001

Package: *
Pin: release a=wily-security,n=wily-security
Pin-Priority: 1001

Package: *
Pin: release a=wily-proposed,n=wily-proposed
Pin-Priority: -10

Package: *
Pin: release a=wily-backport,n=wily-backport
Pin-Priority: -10

Package: *
Pin: release a=xenial,n=xenial
Pin-Priority: 1001

Package: *
Pin: release a=xenial-updates,n=xenial-updates
Pin-Priority: 1001

Package: *
Pin: release a=xenial-security,n=xenial-security
Pin-Priority: 1001

Package: *
Pin: release a=xenial-proposed,n=xenial-proposed
Pin-Priority: -10

Package: *
Pin: release a=xenial-backport,n=xenial-backport
Pin-Priority: -10

Package: *
Pin: release a=yakkety,n=yakkety
Pin-Priority: 1001

Package: *
Pin: release a=yakkety-updates,n=yakkety-updates
Pin-Priority: 1001

Package: *
Pin: release a=yakkety-security,n=yakkety-security
Pin-Priority: 1001

Package: *
Pin: release a=yakkety-proposed,n=yakkety-proposed
Pin-Priority: -10

Package: *
Pin: release a=yakkety-backport,n=yakkety-backport
Pin-Priority: -10

Package: *
Pin: release a=zesty,n=zesty
Pin-Priority: 1001

Package: *
Pin: release a=zesty-updates,n=zesty-updates
Pin-Priority: 1001

Package: *
Pin: release a=zesty-security,n=zesty-security
Pin-Priority: 1001

Package: *
Pin: release a=zesty-proposed,n=zesty-proposed
Pin-Priority: -10

Package: *
Pin: release a=zesty-backport,n=zesty-backport
Pin-Priority: -10

Package: *
Pin: release a=artful,n=artful
Pin-Priority: 1001

Package: *
Pin: release a=artful-updates,n=artful-updates
Pin-Priority: 1001

Package: *
Pin: release a=artful-security,n=artful-security
Pin-Priority: 1001

Package: *
Pin: release a=artful-proposed,n=artful-proposed
Pin-Priority: -10

Package: *
Pin: release a=artful-backport,n=artful-backport
Pin-Priority: -10

Package: *
Pin: release a=bionic,n=bionic
Pin-Priority: 1001

Package: *
Pin: release a=bionic-updates,n=bionic-updates
Pin-Priority: 1001

Package: *
Pin: release a=bionic-security,n=bionic-security
Pin-Priority: 1001

Package: *
Pin: release a=bionic-proposed,n=bionic-proposed
Pin-Priority: -10

Package: *
Pin: release a=bionic-backport,n=bionic-backport
Pin-Priority: -10

Package: *
Pin: release a=cosmic,n=cosmic
Pin-Priority: 1001

Package: *
Pin: release a=cosmic-updates,n=cosmic-updates
Pin-Priority: 1001

Package: *
Pin: release a=cosmic-security,n=cosmic-security
Pin-Priority: 1001

Package: *
Pin: release a=cosmic-proposed,n=cosmic-proposed
Pin-Priority: -10

Package: *
Pin: release a=cosmic-backport,n=cosmic-backport
Pin-Priority: -10

Package: *
Pin: release a=dingo,n=dingo
Pin-Priority: 1001

Package: *
Pin: release a=dingo-updates,n=dingo-updates
Pin-Priority: 1001

Package: *
Pin: release a=dingo-security,n=dingo-security
Pin-Priority: 1001

Package: *
Pin: release a=dingo-proposed,n=dingo-proposed
Pin-Priority: -10

Package: *
Pin: release a=dingo-backport,n=dingo-backport
Pin-Priority: -10

Package: *
Pin: release a=eoan,n=eoan
Pin-Priority: 1001

Package: *
Pin: release a=eoan-updates,n=eoan-updates
Pin-Priority: 1001

Package: *
Pin: release a=eoan-security,n=eoan-security
Pin-Priority: 1001

Package: *
Pin: release a=eoan-proposed,n=eoan-proposed
Pin-Priority: -10

Package: *
Pin: release a=eoan-backport,n=eoan-backport
Pin-Priority: -10

Package: *
Pin: release a=focal,n=focal
Pin-Priority: 1001

Package: *
Pin: release a=focal-updates,n=focal-updates
Pin-Priority: 1001

Package: *
Pin: release a=focal-security,n=focal-security
Pin-Priority: 1001

Package: *
Pin: release a=focal-proposed,n=focal-proposed
Pin-Priority: -10

Package: *
Pin: release a=focal-backport,n=focal-backport
Pin-Priority: -10

Package: *
Pin: release a=groovy,n=groovy
Pin-Priority: 1001

Package: *
Pin: release a=groovy-updates,n=groovy-updates
Pin-Priority: 1001

Package: *
Pin: release a=groovy-security,n=groovy-security
Pin-Priority: 1001

Package: *
Pin: release a=groovy-proposed,n=groovy-proposed
Pin-Priority: -10

Package: *
Pin: release a=groovy-backport,n=groovy-backport
Pin-Priority: -10

Package: *
Pin: release a=hirsute,n=hirsute
Pin-Priority: 1001

Package: *
Pin: release a=hirsute-updates,n=hirsute-updates
Pin-Priority: 1001

Package: *
Pin: release a=hirsute-security,n=hirsute-security
Pin-Priority: 1001

Package: *
Pin: release a=hirsute-proposed,n=hirsute-proposed
Pin-Priority: -10

Package: *
Pin: release a=hirsute-backport,n=hirsute-backport
Pin-Priority: -10

Package: *
Pin: release a=impish,n=impish
Pin-Priority: 1001

Package: *
Pin: release a=impish-updates,n=impish-updates
Pin-Priority: 1001

Package: *
Pin: release a=impish-security,n=impish-security
Pin-Priority: 1001

Package: *
Pin: release a=impish-proposed,n=impish-proposed
Pin-Priority: -10

Package: *
Pin: release a=impish-backport,n=impish-backport
Pin-Priority: -10



Package: *
Pin: release a=jammy,n=jammy
Pin-Priority: 1001

Package: *
Pin: release a=jammy-updates,n=jammy-updates
Pin-Priority: 1001

Package: *
Pin: release a=jammy-security,n=jammy-security
Pin-Priority: 1001

Package: *
Pin: release a=jammy-proposed,n=jammy-proposed
Pin-Priority: -10

Package: *
Pin: release a=jammy-backport,n=jammy-backport
Pin-Priority: -10

Package: *
Pin: release a=kinetic,n=kinetic
Pin-Priority: 1001

Package: *
Pin: release a=kinetic-updates,n=kinetic-updates
Pin-Priority: 1001

Package: *
Pin: release a=kinetic-security,n=kinetic-security
Pin-Priority: 1001

Package: *
Pin: release a=kinetic-proposed,n=kinetic-proposed
Pin-Priority: -10

Package: *
Pin: release a=kinetic-backport,n=kinetic-backport
Pin-Priority: -10

Package: *
Pin: release a=lunar,n=lunar
Pin-Priority: 1001

Package: *
Pin: release a=lunar-updates,n=lunar-updates
Pin-Priority: 1001

Package: *
Pin: release a=lunar-security,n=lunar-security
Pin-Priority: 1001

Package: *
Pin: release a=lunar-proposed,n=lunar-proposed
Pin-Priority: -10

Package: *
Pin: release a=lunar-backport,n=lunar-backport
Pin-Priority: -10

Package: *
Pin: release a=mantic,n=mantic
Pin-Priority: 1001

Package: *
Pin: release a=mantic-updates,n=mantic-updates
Pin-Priority: 1001

Package: *
Pin: release a=mantic-security,n=mantic-security
Pin-Priority: 1001

Package: *
Pin: release a=mantic-proposed,n=mantic-proposed
Pin-Priority: -10

Package: *
Pin: release a=mantic-backport,n=mantic-backport
Pin-Priority: -10


EOF
sudo rm -f /etc/resolv.conf
sudo cp $dir/resolv.conf /etc/resolv.conf
sudo dhclient
sudo dhclient
sudo apt-get update
sudo apt-get -y install wget
sudo rm -rf $dir/livecd
sudo rm -rf $dir/jammy-desktop-amd64.iso
#wget https://cdimage.ubuntu.com/xubuntu/releases/22.04.2/release/xubuntu-22.04.2-desktop-amd64.iso -O $dir/jammy-desktop-amd64.iso
wget https://cdimage.ubuntu.com/jammy/daily-live/current/jammy-desktop-amd64.iso -O $dir/jammy-desktop-amd64.iso
sudo apt-get install -y squashfs-tools schroot genisoimage xorriso
mkdir $dir/livecd
cd $dir/livecd
mkdir iso squashfs
sudo mount -o loop $dir/jammy-desktop-amd64.iso /mnt
sudo cp -av /mnt/. iso
sudo umount /mnt
sudo mount -t squashfs -o loop iso/casper/filesystem.squashfs /mnt
sudo cp -av /mnt/. squashfs
sudo umount /mnt
sudo mount --bind /proc squashfs/proc
sudo mount --bind /sys squashfs/sys
sudo mount --bind /dev squashfs/dev
sudo mount --bind /dev/pts squashfs/dev/pts
sudo cp $dir/resolv.conf squashfs/etc/resolv.conf
sudo rm -f $dir/resolv.conf
sudo mkdir -p squashfs/etc/apt/preferences.d/
sudo cp $dir/40multimedia-experimental squashfs/etc/apt/preferences.d/40multimedia-experimental
sudo rm -f $dir/40multimedia-experimental
sudo cp /etc/hosts squashfs/etc/hosts
sudo cp $dir/sources.list squashfs/etc/apt/sources.list
sudo rm -rf $dir/sources.list
sudo rm -rf squashfs/etc/apt/sources.list.d/*
sudo chroot squashfs apt-get update
sudo chroot squashfs apt-get -y --allow-downgrades dist-upgrade wbrazilian wogerman thunderbird-locale-zh-hans fcitx5-frontend-gtk2 hunspell-es
sudo chroot squashfs apt-get -y install hyphen-bn hunspell-en-ca hunspell-fr fonts-arphic-uming hyphen-de thunderbird-locale-en-gb ibus-m17n
sudo chroot squashfs apt-get -y install hyphen-en-us thunderbird-locale-es-ar hunspell-pt-pt wportuguese fonts-noto-cjk-extra hyphen-pt-pt
sudo chroot squashfs apt-get -y install wswiss mythes-de-ch hyphen-fr mythes-fr hyphen-hi gimp-help-pt thunderbird-locale-fr wspanish
sudo chroot squashfs apt-get -y install thunderbird-locale-bn mozc-utils-gui mythes-de hunspell-en-au hunspell-de-at-frami gimp-help-de
sudo chroot squashfs apt-get -y install fcitx5-module-cloudpinyin thunderbird-locale-es fcitx5-chinese-addons mythes-es fcitx5-frontend-gtk4
sudo chroot squashfs apt-get -y install thunderbird-locale-en thunderbird-locale-de gimp-help-ja fcitx5-frontend-qt5 hunspell-de-de-frami
sudo chroot squashfs apt-get -y install myspell-xh wbritish hyphen-pt-br hunspell-bn thunderbird-locale-pt mythes-en-us thunderbird-locale-pt-pt
sudo chroot squashfs apt-get -y install mythes-en-au gimp-help-en fcitx5 hyphen-es hunspell-hi ibus-mozc thunderbird-locale-bn-bd
sudo chroot squashfs apt-get -y install fonts-arphic-ukai thunderbird-locale-es-es thunderbird-locale-ja gimp-help-fr hunspell-en-gb
sudo chroot squashfs apt-get -y install chromium-browser-l10n thunderbird-locale-pt-br thunderbird-locale-en-us gimp-help-es hyphen-en-ca
sudo chroot squashfs apt-get -y install fcitx5-frontend-gtk3l hyphen-en-gb mythes-pt-pt hunspell-de-ch-frami hunspell-en-za
sudo chroot squashfs apt-get -y install hunspell-pt-br wfrench wngerman
echo "install language"
sudo chroot squashfs dpkg --add-architecture i386 
sudo chroot squashfs mkdir -pm755 /etc/apt/keyrings
sudo chroot squashfs wget -O /etc/apt/keyrings/winehq-archive.key https://dl.winehq.org/wine-builds/winehq.key
sudo chroot squashfs wget -NP /etc/apt/sources.list.d/ https://dl.winehq.org/wine-builds/ubuntu/dists/jammy/winehq-jammy.sources
sudo chroot squashfs apt-get update
sudo chroot squashfs apt-get -y --allow-downgrades dist-upgrade
sudo chroot squashfs apt-get -y install --install-recommends winehq-stable
sudo chroot squashfs apt-get -y install filezilla putty putty-tools
echo "install wine"
sudo chroot squashfs apt-get -y install playonlinux vlc ffmpeg winff
echo "install playonlinux vlc ffmpeg winff"
sudo chroot squashfs apt-get -y install debhelper cdbs lintian build-essential fakeroot devscripts dh-make dput cmake ntp
echo "install build-essential"
sudo chroot squashfs apt-get update
echo "install console-data"
sudo chroot squashfs apt-get -y install console-data
sudo chroot squashfs dpkg-reconfigure tzdata
sudo chroot squashfs apt-get -y purge linux-image-*-generic linux-image-unsigned-*-generic linux-headers-* linux-image-generic-hwe-22.04 linux-headers-generic-hwe-22.04
sudo chroot squashfs apt-get -y install linux-image-5.19.0-41-generic linux-headers-5.19.0-41
sudo chroot squashfs apt-get -y purge libreoffice*
sudo chroot squashfs apt-get -y autoremove
sudo chroot squashfs update-initramfs -u -k all
sudo chroot squashfs apt-get clean
sudo chroot squashfs apt-get autoclean
sudo chroot squashfs apt-get -y autoremove
sudo umount -lf squashfs/sys
sudo umount -lf squashfs/sys
sudo umount -lf squashfs/proc
sudo umount -lf squashfs/proc
sudo umount -lf squashfs/dev/pts
sudo umount -lf squashfs/dev/pts
sudo umount -lf squashfs/dev
sudo umount -lf squashfs/dev
sudo rm -f iso/casper/vmlinuz
sudo cp squashfs/boot/vmlinuz-5.19.0-41-generic iso/casper/vmlinuz
sudo rm -f iso/casper/initrd
sudo cp squashfs/boot/initrd.img-5.19.0-41-generic iso/casper/initrd
sudo chmod a+w iso/casper/filesystem.manifest
sudo chroot squashfs dpkg-query -W --showformat='${Package}  ${Version}\n' >iso/casper/filesystem.manifest
sudo chmod go-w iso/casper/filesystem.manifest
sudo sed -i '/gparted-common/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/gparted/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-bn-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-bn/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-de-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-de/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-en-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-en/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-es-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-es/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-fr-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-fr/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-bn-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-bn/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-de-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-de/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-en-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-en/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-es-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-es/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-fr-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-fr/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-hi-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-hi/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-ja-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-ja/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-pt-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-pt/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-xh-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-xh/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-zh-hans-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-gnome-zh-hans/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-hi-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-hi/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-ja-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-ja/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-pt-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-pt/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-xh-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-xh/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-zh-hans-base/d' iso/casper/filesystem.manifest-remove
sudo sed -i '/language-pack-zh-hans/d' iso/casper/filesystem.manifest-remove
sudo rm -f iso/casper/filesystem.squashfs
cd squashfs
sudo mksquashfs . ../iso/casper/filesystem.squashfs -comp zstd -Xcompression-level 22 -progress
cd ../iso
sudo bash -c "find . -path ./isolinux -prune -o -type f -not -name md5sum.txt -print0 | xargs -0 md5sum | tee md5sum.txt"
dd if=$dir/jammy-desktop-amd64.iso bs=1 count=432 of=$dir/livecd/boot_hybrid.img
clear
/sbin/fdisk -l $dir/jammy-desktop-amd64.iso
efistart=11459316
#read -s -p "efi start:" efistart
efitaille=10068
#read -s -p "efi taille:" efitaille
sudo dd if=$dir/jammy-desktop-amd64.iso bs=512 skip=$efistart count=$efitaille of=$dir/livecd/efi.img
sudo xorriso -as mkisofs -r \
  -V 'ubuntu 22.04 LTS' \
  -o $dir/livecd/ubuntu-22.04.2-desktop-amd64.iso \
  --grub2-mbr $dir/livecd/boot_hybrid.img \
  -partition_offset 16 \
  --mbr-force-bootable \
  -append_partition 2 28732ac11ff8d211ba4b00a0c93ec93b $dir/livecd/efi.img \
  -appended_part_as_gpt \
  -iso_mbr_part_type a2a0d0ebe5b9334487c068b6b72699c7 \
  -c '/boot.catalog' \
  -b '/boot/grub/i386-pc/eltorito.img' \
    -no-emul-boot -boot-load-size 4 -boot-info-table --grub2-boot-info \
  -eltorito-alt-boot \
  -e '--interval:appended_partition_2:::' \
    -no-emul-boot .
