# Update
sudo apt update & sudo apt upgrade -y

# Install Packages
sudo apt install curl tmux -y

# Install Window Manager
# Getting alternative repository because i3 4.22 is not yet on official ubuntu repo
/usr/lib/apt/apt-helper download-file https://debian.sur5r.net/i3/pool/main/s/sur5r-keyring/sur5r-keyring_2023.02.18_all.deb keyring.deb SHA256:a511ac5f10cd811f8a4ca44d665f2fa1add7a9f09bef238cdfad8461f5239cc4
sudo apt install ./keyring.deb -y
echo "deb http://debian.sur5r.net/i3/ $(grep '^DISTRIB_CODENAME=' /etc/lsb-release | cut -f2 -d=) universe" | sudo tee /etc/apt/sources.list.d/sur5r-i3.list
sudo apt update -y
sudo apt install i3 polybar picom -y

# Install alacritty
sudo add-apt-repository ppa:aslatter/ppa -y
sudo apt install alacritty -y

# Install ZSH
sudo apt install zsh -y
sudo chsh -s $(which zsh)

# Install Antigen (Oh My ZSH)
mkdir ~/.antigen
curl -L git.io/antigen > ~/.antigen/antigen.zsh

# Instal nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.3/install.sh | bash
nvm install --lts
nvm use --lts

#Install Neovim
# from repo to get 0.8 version instead of 0.6
sudo apt install ninja-build gettext libtool libtool-bin cmake g++ pkg-config unzip doxygen -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo 
sudo make install 
rm -rf neovim

# Instal Packer.nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Create sym links
mkdir ~/.fonts
ln -s /home/krehan/Dev/dotfiles/config/* ~/.config
ln -s /home/krehan/Dev/dotfiles/fonts/* ~/.fonts
ln -s /home/krehan/Dev/dotfiles/config/zsh/* ~
