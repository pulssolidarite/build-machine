# stay updated
sudo apt -y update
sudo apt -y upgrade

# install dotnet in ~/.dotnet with sdk
bash dotnet-install.sh
if [ -n $DOTNET_ROOT ]
then
	echo "export DOTNET_ROOT=$HOME/.dotnet" >> $HOME/.bashrc
fi
if [ echo $PATH | grep ".dotnet" != "" ]
then
	echo "export PATH=$PATH:$HOME/.dotnet" >> $HOME/.bashrc
fi

# install mono
sudo apt install apt-transport-https dirmngr gnupg ca-certificates
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/debian stable-raspbianbuster main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt install mono-complete

#install nodejs
curl -sL https://deb.nodesource.com/setup_12.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs build-essential

