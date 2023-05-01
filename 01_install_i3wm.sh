# Update
sudo apt update & sudo apt upgrade -y

# Getting alternative repository because i3 4.22 is not yet on official ubuntu repo
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb keyring.deb SHA256:a511ac5f10cd811f8a4ca44d665f2fa1add7a9f09bef238cdfad8461f5239cc4
sudo apt install ./keyring.deb -y
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list

sudo apt update -y

sudo apt install i3 polybar picom rofi -y

# Load fonts
mkdir ~/fonts && ln -s /home/krehan/Dev/dotfiles/fonts/* ~/.fonts

echo "[POST INSTALL] Logout and select i3 on login menu"
