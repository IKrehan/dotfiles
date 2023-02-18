# Update
sudo apt update & sudo apt upgrade

# Install Base Packages
sudo apt install curl git vim -y

# Install Window Manager
# Getting alternative repository because ie 4.22 is not on officil ubuntu repo yet
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb keyring.deb SHA256:a511ac5f10cd811f8a4ca44d665f2fa1add7a9f09bef238cdfad8461f5239cc4
sudo apt install ./keyring.deb -y
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update -y
sudo apt install i3 polybar feh -y

# Install alacritty
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install alacritty -y
