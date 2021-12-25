printf "Starting setup\n"

# Downloads
printf "Opening multiple websites for downloading applications\n"
open https://brave.com/download/
open https://git-scm.com/downloads
open https://bitwarden.com/download/
open https://code.visualstudio.com/
open https://www.postman.com/downloads/
open https://www.sourcetreeapp.com/
open https://www.whatsapp.com/download
open https://www.spotify.com/us/download/
open https://www.gnupg.org/download/
open https://dev.mysql.com/downloads/workbench/

# Wait till all the above applications are manually installed
printf "Press enter after installation"
read unused

# Install oh my zsh
printf "Installing oh my zsh\n"
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Copy zshrc
printf "Copying zshrc\n"
cp ./zshrc ~/.zshrc

# Install volta
printf "Installing volta\n"
curl https://get.volta.sh | bash

printf "Source ~/.zshrc"
source ~/.zshrc

# Install latest node
printf "Installing node\n"
volta install node@latest

# Git setup
name="Arun Nalla"
email="hello@arunnalla.com"

# Generating ssh key
printf "Generating ssh key\n"
ssh-keygen -t rsa -b 4096 -C $email

# Open public key to copy to github
printf "Opening public key\n"
vi ~/.ssh/id_rsa.pub

printf "Opening github for ssh key configuration"
open https://github.com/settings/keys

# Setup git configuration
printf "Setting up Git Configuration\n"
git config --global user.name $name
git config --global user.email $email

printf "Finished setup\n"
