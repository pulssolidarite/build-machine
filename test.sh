if [[ -n $DOTNET_ROOT ]]
then
	echo "export DOTNET_ROOT=$HOME/.dotnet"
fi
if [ -z $(echo $PATH | grep ".dotnet") ]
then
	echo "export PATH=$PATH:$HOME/.dotnet"
fi
source $HOME/.bashrc
