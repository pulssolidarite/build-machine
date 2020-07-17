# stay updated and install needed packages
sudo apt -y update
sudo apt -y upgrade
sudo apt-get -y install git build-essential libasound2-dev libudev-dev glib2.0 libgl-dev qt5-default
sudo apt-get install xfonts-base xserver-xorg-input-all xinit xserver-xorg xserver-xorg-video-all
curl -LOk 'https://github.com/libretro/RetroArch/archive/v1.7.7.tar.gz'
tar -zxvf v1.7.7.tar.gz
cd RetroArch-1.7.7
sudo ./configure --enable-alsa --enable-udev --enable-floathard --enable-neon --enable-dispmanx --disable-opengl1
sudo make
sudo make install
cd /home/pi
echo "export PULS_LOGIN=test5" >> $HOME/.bashrc
echo "export PULS_MDP=test5" >> $HOME/.bashrc
source .bashrc


# install dotnet in ~/.dotnet with sdk
#bash dotnet-install.sh
#if [ -n $DOTNET_ROOT ]
#then
#	echo "export DOTNET_ROOT=$HOME/.dotnet" >> $HOME/.bashrc
#fi
#if [ echo $PATH | grep ".dotnet" != "" ]
#then
#	echo "export PATH=$PATH:$HOME/.dotnet" >> $HOME/.bashrc
#fi

# install mono
sudo apt install apt-transport-https dirmngr gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 2FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/debian stable-raspbianbuster main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-complete

# install nodejs
curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs build-essential

# get arcade cores and games
git clone https://github.com/pulssolidarite/arcade-sys-games.git


