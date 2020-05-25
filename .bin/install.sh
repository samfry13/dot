# Update Packages
sudo apt-get update
sudo apt-get upgrade

# Install Necessary Packages
sudo apt-get install git make

# Install Config Files
mkdir -p ~/Repo
cd ~/Repo
git clone git@github.com:samfry13/dot.git 

rm -r ~/.config
rm ~/.tmux.conf
rm ~/.bashrc
rm ~/.profile
rm ~/.bash_profile
rm ~/.gitconfig

ln -s ~/Repo/dot/.config/ ~/.config
ln -s ~/Repo/dot/.tmux.conf ~/.tmux.conf
ln -s ~/Repo/dot/.bashrc ~/.bashrc
ln -s ~/Repo/dot/.profile ~/.profile
ln -s ~/Repo/dot/.bin/ ~/.bin
ln -s ~/Repo/dot/.gitconfig ~/.gitconfig

# Install Custom Packages
sudo apt-get install neovim
sudo apt-get install vifm

# Install Custom apps
cd ~/Repo
git clone https://github.com/aristocratos/bashtop.git
cd bashtop
sudo make install

echo "All Done!"
