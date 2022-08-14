# Not sure if this would actually work, but it's a start.
# This script will install fish, fisher, tide and z.
# It may not work by itself, but it has all the commands you need to run
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
fish
echo /usr/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher
fisher install jorgebucaran/nvm.fish
nvm install lts
fisher install IlanCosman/tide@v5
fisher install jethrokuan/z