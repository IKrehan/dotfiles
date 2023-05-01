#Install Neovim

# from repo to get 0.8 version instead of 0.6
sudo apt install ninja-build gettext libtool libtool-bin cmake g++ pkg-config unzip doxygen -y
git clone https://github.com/neovim/neovim
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo 
sudo make install 
rm -rf neovim

# Install NvChad
git clone https://github.com/NvChad/NvChad ~/.config/nvim --depth 1

# Load Configs
rm -rf ~/.config/nvim/lua/custom/**
ln -s /home/krehan/Dev/dotfiles/config/nvim/lua/custom/* ~/.config/nvim/lua/custom/

ln -s /home/krehan/Dev/dotfiles/config/* ~/.config
