cd "$( dirname -- "${BASH_SOURCE[0]}" )"
sudo make dkms-uninstall
sudo make dkms-install
sudo rmmod msi_ec
sudo modprobe msi_ec
