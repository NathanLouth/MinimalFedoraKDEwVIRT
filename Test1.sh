#!/usr/bin/env bash
##### CHECK FOR SUDO or ROOT ##################################
if ! [ $(id -u) = 0 ]; then
  echo "This script must be run as sudo or root, try again..."
  exit 1
fi

if test -f "./NVIDIA-Linux-x86_64-510.73.05.run"
then
./NVIDIA-Linux-x86_64-510.73.05.run
systemctl enable gdm
systemctl set-default graphical.target
reboot
else
dnf update -y
dnf install NetworkManager-config-connectivity-fedora bluedevil breeze-gtk breeze-icon-theme cagibi colord-kde cups-pk-helper dolphin glibc-all-langpacks gnome-keyring-pam kcm_systemd kde-gtk-config kde-partitionmanager kde-print-manager kde-settings-pulseaudio kde-style-breeze kdegraphics-thumbnailers kdeplasma-addons kdialog kdnssd kf5-akonadi-server kf5-akonadi-server-mysql kf5-baloo-file kf5-kipi-plugins khotkeys kmenuedit xfce4-terminal kscreen kscreenlocker ksshaskpass ksysguard kwalletmanager5 kwebkitpart kwin pam-kwallet phonon-qt5-backend-gstreamer pinentry-qt plasma-breeze plasma-desktop plasma-desktop-doc plasma-drkonqi plasma-nm plasma-nm-l2tp plasma-nm-openconnect plasma-nm-openswan plasma-nm-openvpn plasma-nm-pptp plasma-nm-vpnc plasma-pa plasma-user-manager plasma-workspace plasma-workspace-geolocation polkit-kde qt5-qtbase-gui qt5-qtdeclarative gdm sni-qt xorg-x11-drv-libinput setroubleshoot @"Hardware Support" @base-x @Fonts @"Common NetworkManager Submodules" -y
wget https://uk.download.nvidia.com/XFree86/Linux-x86_64/510.73.05/NVIDIA-Linux-x86_64-510.73.05.run
chmod +x ./NVIDIA-Linux-x86_64-510.73.05.run    
reboot
fi