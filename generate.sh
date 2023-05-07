#/bin/bash
cd /home/andy/spin-kickstarts/
sudo dnf install -y livecd-tools fedora-kickstarts spin-kickstarts
sudo rm -rf /home/andy/spin-kickstarts//Fedora-Xfce-Live-x86_64-38-1.6.iso /home/andy/Fedora-Xfce-Live-x86_64-38-1.6.iso
sudo livecd-creator --config=/home/andy/spin-kickstarts//fedora-live-xfce.ks --fslabel=Fedora-Xfce-Live-x86_64-38-1.6
cp /home/andy/spin-kickstarts//Fedora-Xfce-Live-x86_64-38-1.6.iso /home/andy/
