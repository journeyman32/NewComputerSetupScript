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
# 	Arch 	pacman -S zsh 
# 	Deb 	sudo apt install zsh 

# Install Oh My Zsh
	sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Install VM Plugins if runnin as VM

# Utilities
# Deb	1Password
	curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg
	echo 'deb [arch=amd64 signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/amd64 stable main' | sudo tee /etc/apt/sources.list.d/1password.list
	sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/
 	curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
 	sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
 	curl -sS https://downloads.1password.com/linux/keys/1password.asc | sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
# Arch	1Password
# Arch	curl -sS https://downloads.1password.com/linux/keys/1password.asc | gpg --import
# Arch	git clone https://aur.archlinux.org/1password.git
# Arch	cd 1password
# Arch	makepkg -si
#	1Password CLI
	curl -sS https://downloads.1password.com/linux/keys/1password.asc | \  sudo gpg --dearmor --output /usr/share/keyrings/1password-archive-keyring.gpg
	echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/1password-archive-keyring.gpg] https://downloads.1password.com/linux/debian/$(dpkg --print-architecture) stable main" |  sudo tee /etc/apt/sources.list.d/1password.list
	sudo mkdir -p /etc/debsig/policies/AC2D62742012EA22/ 
	curl -sS https://downloads.1password.com/linux/debian/debsig/1password.pol | \
 	sudo tee /etc/debsig/policies/AC2D62742012EA22/1password.pol
	sudo mkdir -p /usr/share/debsig/keyrings/AC2D62742012EA22
	curl -sS https://downloads.1password.com/linux/keys/1password.asc | \
 	sudo gpg --dearmor --output /usr/share/debsig/keyrings/AC2D62742012EA22/debsig.gpg
 	sudo apt update && sudo apt install 1password-cli
# Arch	ARCH="amd64" && \
# Arch	wget "https://cache.agilebits.com/dist/1P/op2/pkg/v2.14.0/op_linux_${ARCH}_v2.14.0.zip" -O op.zip && \
# Arch  unzip -d op op.zip && \
# Arch  sudo mv op/op /usr/local/bin && \
# Arch  rm -r op.zip op

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