#!/bin/zsh

# Check if the user provided a command-line argument
if [[ "$1" == "setup" ]]; then
PURPLE='\033[0;35m'
NC='\033[0m' # No Color
# Define the ASCII art
echo -e "${PURPLE}
██╗░░░██████╗░████████╗███████╗
╚██╗░██╔═══██╗╚══██╔══╝██╔════╝
░╚██╗██║██╗██║░░░██║░░░█████╗░░
░██╔╝╚██████╔╝░░░██║░░░██╔══╝░░
██╔╝░░╚═██╔═╝░░░░██║░░░███████╗
╚═╝░░░░░╚═╝░░░░░░╚═╝░░░╚══════╝${NC}"
echo " "
    # Prompt the user for action
    echo "What do you want to do?"
    echo "1. Install programs [default]"
    echo "2. Install programs [extended]"
    echo "3. Update all programs"
    echo "4. Uninstall all programs"
    echo "5. Quit"
    echo "Enter your choice (1-5): \c"
    read choice

    # Check the user's choice and perform the appropriate action
    case $choice in
        1) 
            echo "Installing default programs..."
            # Code to install programs
            # Install Xcode Command Line Tools
            
            echo "Installing Xcode Command Line Tools..."
            xcode-select --install

            echo "Installing Rosetta
            sudo softwareupdate --install-rosetta--agree-to-license"

            # Install Homebrew
            if [ "$(command -v brew)" = "" ]; then
                echo "Installing Homebrew..."
                /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
                echo "Configuring Homebrew..."
                echo 'export PATH=".:$HOME/bin:/opt/homebrew/bin:/usr/local/bin:$PATH"' >> ~/.zshrc
                echo 'export HOMEBREW_PREFIX="/opt/homebrew"' >> ~/.zshrc
                echo 'export HOMEBREW_CELLAR="/opt/homebrew/Cellar"' >> ~/.zshrc
                echo 'export HOMEBREW_NO_ANALYTICS=1' >> ~/.zshrc
                echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
                eval "$(/opt/homebrew/bin/brew shellenv)"
                brew tap homebrew/cask-versions
            else
                echo "Homebrew already installed"
            fi

            # Install Node.js using Homebrew
            if [ "$(command -v node)" = "" ]; then
                echo "Installing Node.js..."
                brew install node
            else
                echo "Node already installed"
            fi

            # Install NVM using Homebrew
            if [ "$(command -v nvm)" = "" ]; then
                echo "Installing NVM..."
                brew install nvm
            else
                echo "NVM already installed"
            fi

            # Configure NVM
            if [ ! -d "$HOME/.nvm" ]; then
                echo "Configuring NVM..."
                mkdir ~/.nvm
                export NVM_DIR="$HOME/.nvm"
                source "/usr/local/opt/nvm/nvm.sh"
                echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
                echo 'source "/usr/local/opt/nvm/nvm.sh"' >> ~/.zshrc
            fi

            # Install Yarn using NVM
            if [ "$(command -v yarn)" = "" ]; then
                echo "Installing yarn..."
                nvm install 18
                nvm alias default 18
                nvm use
                npm -i -g yarn 
            else
                echo "yarn already installed"
            fi

            # Install Slack using Homebrew
            if [ "$(brew ls --versions slack)" = "" ]; then
                echo "Installing Slack..."
                brew install --cask slack
            else
                echo "Slack already installed"
            fi

            # Install Postman using Homebrew
            if [ "$(command -v postman)" = "" ]; then
                echo "Installing Slack..."
                brew install --cask postman
            else
                echo "Postman already installed"
            fi

            # Install VS code using Homebrew
            if [ "$(command -v visual-studio)" = "" ]; then
                echo "Installing visual-studio..."
                brew install --cask visual-studio
            else
                echo "visual-studio already installed"
            fi

            # Install RBenv using Homebrew
            if [ "$(command -v rbenv)" = "" ]; then
                echo "Installing RBenv..."
                brew install rbenv
                echo "Configuring rbenv..."
                echo 'eval "$(~/.rbenv/bin/rbenv init - zsh)"' >> ~/.zshrc
            else
                echo "RBenv already installed"
            fi

            # Install Google Chrome using Homebrew
            if [ "$(command -v google-chrome)" = "" ]; then
                echo "Installing google-chrome..."
                brew install --cask google-chrome
            else
                echo "google-chrome already installed"
            fi

            # Install 1Password using Homebrew
            if [ "$(command -v 1password)" = "" ]; then
                echo "Installing 1password..."
                brew install --cask 1password
            else
                echo "1password already installed"
            fi
            
            # Setup done
            source ~/.zshrc
            echo "Done!🍻"
            ;;
        2) 
            echo "Installing extended programs..."
            # Code to install programs
            # Install Xcode Command Line Tools
            
            echo "Installing Xcode Command Line Tools..."
            xcode-select --install

            echo "Installing Rosetta"
            sudo softwareupdate --install-rosetta --agree-to-license

            # Install Homebrew
            if [ "$(command -v brew)" = "" ]; then
                echo "Installing Homebrew..."
                /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
                echo "Configuring Homebrew..."
                echo 'export PATH=".:$HOME/bin:/opt/homebrew/bin:/usr/local/bin:$PATH"' >> ~/.zshrc
                echo 'export HOMEBREW_PREFIX="/opt/homebrew"' >> ~/.zshrc
                echo 'export HOMEBREW_CELLAR="/opt/homebrew/Cellar"' >> ~/.zshrc
                echo 'export HOMEBREW_NO_ANALYTICS=1' >> ~/.zshrc
                echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile
                eval "$(/opt/homebrew/bin/brew shellenv)"
                brew tap homebrew/cask-versions
            else
                echo "Homebrew already installed"
            fi

            # Install Node.js using Homebrew
            if [ "$(command -v node)" = "" ]; then
                echo "Installing Node.js ..."
                brew install node
            else
                echo "Node already installed"
            fi

            # Install NVM using Homebrew
            if [ "$(command -v nvm)" = "" ]; then
                echo "Installing NVM ..."
                brew install nvm
            else
                echo "NVM already installed"
            fi

            # Configure NVM
            if [ ! -d "$HOME/.nvm" ]; then
                echo "Configuring NVM..."
                mkdir ~/.nvm
                export NVM_DIR="$HOME/.nvm"
                source "/usr/local/opt/nvm/nvm.sh"
                echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.zshrc
                echo 'source "/usr/local/opt/nvm/nvm.sh"' >> ~/.zshrc
            fi

            # Install Yarn using NVM
            if [ "$(command -v yarn)" = "" ]; then
                echo "Installing yarn..."
                nvm install 18
                nvm alias default 18
                echo "18" > .nvmrc
                nvm use
                npm install -g yarn
            else
                echo "yarn already installed"
            fi

            # Install Slack using Homebrew
            if [ "$(brew ls --versions slack)" = "" ]; then
                echo "Installing Slack..."
                brew install --cask slack
            else
                echo "Slack already installed"
            fi

            # Install Postman using Homebrew
            if [ "$(command -v postman)" = "" ]; then
                echo "Installing Slack..."
                brew install --cask postman
            else
                echo "Postman already installed"
            fi

            # Install pyenv using Homebrew
            if [ "$(command -v pyenv)" = "" ]; then
                echo "Installing pyenv..."
                brew install pyenv
                echo "Configuring Pyenv..."
                echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
                echo 'command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
                echo 'eval "$(pyenv init -)"' >> ~/.zshrc
            else
                echo "pyenv already installed"
            fi

            # Install RBenv using Homebrew
            if [ "$(command -v rbenv)" = "" ]; then
                echo "Installing RBenv..."
                brew install rbenv
                echo "Configuring rbenv..."
                echo 'eval "$(~/.rbenv/bin/rbenv init - zsh)"' >> ~/.zshrc
            else
                echo "RBenv already installed"
            fi

            # Install Google Chrome using Homebrew
            if [ "$(command -v google-chrome)" = "" ]; then
                echo "Installing google-chrome..."
                brew install --cask google-chrome
            else
                echo "google-chrome already installed"
            fi

            # Install 1Password using Homebrew
            if [ "$(command -v google-chrome)" = "" ]; then
                echo "Installing 1password..."
                brew install --cask 1password
            else
                echo "1password already installed"
            fi

            # Install iTerm2 using Homebrew
            if [ "$(command -v iterm2)" = "" ]; then
                echo "Installing iterm2..."
                brew install --cask iterm2
            else
                echo "iterm2 already installed"
            fi

            # Install Fig using Homebrew
            if [ "$(command -v fig)" = "" ]; then
                echo "Installing iterm2..."
                brew install --cask fig
            else
                echo "fig already installed"
            fi

            # Install Notion using Homebrew
            if [ "$(command -v notion)" = "" ]; then
                echo "Installing notion..."
                brew install --cask notion
            else
                echo "notion already installed"
            fi

            # Install Flipper using Homebrew
            if [ "$(command -v flipper)" = "" ]; then
                echo "Installing flipper..."
                brew install --cask flipper
            else
                echo "Flipper already installed"
            fi

            # Install Spotify using Homebrew
            if [ "$(command -v spotify)" = "" ]; then
                echo "Installing Spotify..."
                brew install --cask spotify
            else
                echo "Spotify already installed"
            fi

            # Install Docker using Homebrew
            if [ "$(command -v docker)" = "" ]; then
                echo "Installing Docker..."
                brew install docker
            else
                echo "Docker already installed"
            fi

            # Install Cyberduck using Homebrew
            if [ "$(command -v cyberduck)" = "" ]; then
                echo "Installing cyberduck..."
                brew install --cask cyberduck
            else
                echo "cyberduck already installed"
            fi

            # Install watchman using Homebrew
            if [ "$(command -v watchman)" = "" ]; then
                echo "Installing watchman..."
                brew install watchman
            else
                echo "watchman already installed"
            fi

             # Install android studio using Homebrew
            if [ "$(command -v android-studio)" = "" ]; then
                echo "Installing android-studio..."
                brew install --cask android-studio
                echo "Configuring android-studio..."
                echo 'export ANDROID_HOME=$HOME/Library/Android/sdk' >> ~/.zshrc
                echo 'export PATH=$PATH:$ANDROID_HOME/emulator' >> ~/.zshrc
                echo 'export PATH=$PATH:$ANDROID_HOME/platform-tools' >> ~/.zshrc
            else
                echo "android-studio already installed"
            fi

            # Install Java Development Kit using Homebrew
            if [ "$(command -v visual-studio)" = "" ]; then
                echo "Installing visual-studio..."
                brew tap homebrew/cask-versions
                brew install --cask zulu11
            else
                echo "Java Development Kit already installed"
            fi

            # Install Cocoapods using Homebrew
            if [ "$(command -v cocoapods)" = "" ]; then
                echo "Installing Cocoapods..."
                brew install cocoapods
            else
                echo "Cocoapods already installed"
            fi

            # Install Prepos using Homebrew
            if [ "$(command -v prepros)" = "" ]; then
                echo "Installing prepros..."
                brew install --cask prepros
            else
                echo "prepros already installed"
            fi

            # Install postgresql using Homebrew
            if [ "$(command -v postgresql)" = "" ]; then
                echo "Installing postgresql..."
                brew install postgresql@15
                echo 'export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"' >> ~/.zshrc
            else
                echo "postgresql already installed"
            fi

            # Install PHP using Homebrew
            if [ "$(command -v php)" = "" ]; then
                echo "Installing php..."
                brew install php
            else
                echo "php already installed"
            fi

            # Setup done
            source ~/.zshrc
            echo "Done!🍻"
            ;;
        3) 
            echo "Updating programs..."
            # Code to update programs
            # Update the programs
            brew update && brew upgrade
            echo "All tools updated successfully!"
            ;;
        4) 
            # Code to uninstall programs
            # Prompt the user to confirm that they want to uninstall the programs
            read -p "Are you sure you want to uninstall the programs? This action cannot be undone. (y/n): " confirm
            if [ "$confirm" = "y" ]; then
                echo "Uninstalling programs..."
                brew remove --force $(brew list --formula)
                brew remove --cask --force $(brew list)
                /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)"
                echo "Programs uninstalled successfully!"
                exit 0
            else  
                echo "Aborting..."
                exit 0  
            fi
            ;;
        5) 
            echo "Quitting..."
            exit 0
            ;;
        *) 
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
else
    # Prompt the user for action
    echo "Welcome to the qte CLI!🚀"
    echo "What do you want to do?"
    echo "1. Setup"
    echo "2. Quit"
    read -p "Enter your choice (1-2): " choice

    # Check the user's choice and perform the appropriate action
    case $choice in
        1) 
            echo "Launching setup..."
            zsh qte.sh setup
            ;;
        2) 
            echo "Quitting..."
            exit 0
            ;;
        *) 
            echo "Invalid choice. Please enter a number between 1 and 2."
            ;;
    esac
fi