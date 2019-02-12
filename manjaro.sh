sudo pacman -Sy
sudo pacman -S bash-completion
sudo pacman -S git
sudo pacman -S snapd
sudo pacman -S docker
sudo pacman -S docker-compose
sudo pacman -S cmake
sudo pacman -S postgresql-libs
sudo pacman -S net-tools
sudo pacman -S vim

# AUR
sudo pacman -S pacaur
sudo pacman -S yaourt # Not recommended - Descontinued

# HTTP and TCP tunneling
pacaur -S ngrok

# Remove sudo from docker
sudo groupadd docker
sudo usermod -aG docker $USER

# Enable snapd and docker socket
sudo systemctl enable --now snapd.socket
sudo systemctl enable --now docker.socket
# Enable snapd --classic flag
sudo ln -s /var/lib/snapd/snap /snap

sudo snap install spotify
sudo snap install insomnia
sudo snap install slack --classic
sudo snap install atom --classic
sudo snap install skype --classic

# RVM
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable

# Install Ruby versions
rvm install 2.5.3
rvm use 2.5.3

gem install bundler

# GVM
bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

# Install Go 1.11
gvm install go1.11 -B
gvm use go1.11

# Install Python
git clone https://aur.archlinux.org/pyenv.git
cd pyenv
makepkg -Acs
sudo pacman -U *.pkg.tar.xz
cd
rm -rf pyenv
pyenv install 3.6.7

#Install Java
sudo pacman -S jre-openjdk

# Atom packages
apm install minimap
apm install firacode
apm install go-plus
apm install file-icons


# Generate SSH Key for github
ssh-keygen

# Disable BEEP
setterm blength 0
setterm bfreq 0

# Disable KDE BEEP
xset b 0
xset b off
