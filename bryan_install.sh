# Configuration

# Check for OS
if [[ "$OSTYPE" == "linux-gnu"* ]]; then

elif [[ "$OSTYPE" == "darwin"* ]]; then
#	goto mac install file

# Install Node and NPS
	cd ~
	curl -sL https://deb.nodesource.com/setup_current.x -o nodesource_setup.sh
	sudo bash nodesource_setup.sh
	sudo apt install nodejs
	node -v
# Install ZSH
# pacman -S zsh 
# sudo apt install zsh 

# Install Oh My Zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install VM Plugins if runnin as VM

# Utilities
# 	1Password

# Applications
# 	Jetbrains
# 	GitKraken
# 	OneDrive
# 	Trello

# Languages
# 	Asp.net
# 	Add :$HOME/dotnet to the end of the existing PATH statement. 
# 	If no PATH statement is included, add a new line with export PATH=$PATH:$HOME/dotnet.
#	Also add export DOTNET_ROOT=$HOME/dotnet to the end of the file. 
#    	Bash Shell: ~/.bash_profile, ~/.bashrc
#    	Korn Shell: ~/.kshrc or .profile
#    	Z Shell: ~/.zshrc or .zprofile
# 
	dotnet_sdk=https://download.visualstudio.microsoft.com/download/pr/ec76d8ee-8776-42ce-b158-f723a221fc56/0baa1089edf0e0674d719f6a5d847b75/dotnet-sdk-7.0.201-linux-x64.tar.gz
	wget $dotnet_sdk -0 dotnet-sdk.tar.gz
	mkdir -p $HOME/dotnet && tar zxf dotnet-sdk.tar.gz -C $HOME/dotnet
	export DOTNET_ROOT=$HOME/dotnet
	export PATH=$PATH:$HOME/dotnet
# Go
	wget https://dl.google.com/go/go1.19.5.linux-armv6l.tar.gz -O go.tar.gz
	sudo tar -C /usr/local -xzf go.tar.gz

# Rust
	curl https://sh.rustup.rs -sSf | sh
