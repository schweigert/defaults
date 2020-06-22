sudo pacman -Sy
sudo pacman -S \
  bash-completion \
  git \
  snapd \
  docker \
  docker-compose \
  cmake \
  postgresql-libs \
  net-tools \
  vim \
  pacaur \
  linux54-headers

# Enable snapd and docker socket
sudo systemctl enable --now docker.socket
sudo systemctl enable --now snapd.socket

# Enable --classic
sudo ln -s /var/lib/snapd/snap /snap

# Remove sudo from docker
sudo groupadd docker
sudo usermod -aG docker $USER

# Sync Time Server
sudo timedatectl set-ntp true

pacaur -S droidcam
