#!/bin/bash

# # Check if Homebrew is installed
# if [[ $(command -v brew) == "" ]]; then
#     echo "Homebrew is not installed. Installing Homebrew..."
#     /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
# fi

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

# Check if the user provided a command-line argument
if [[ "$1" == "setup" ]]; then
    # Prompt the user for action
    echo "What do you want to do?"
    echo "1. Install programs"
    echo "2. Update programs"
    echo "3. Uninstall programs"
    echo "4. Quit"
    read -p "Enter your choice (1-4): " choice

    # Check the user's choice and perform the appropriate action
    case $choice in
        1) 
            echo "Installing programs..."
            # Code to install programs
            # Install Xcode Command Line Tools
            
            echo "Installing Xcode Command Line Tools..."
            xcode-select --install

            # Install Homebrew
            if [ "$(command -v brew)" = "" ]; then
                echo "Installing Homebrew..."
                /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
            else
                echo "Homebrew already installed"
            fi

            # Install Node.js using Homebrew
            if [ "$(command -v node)" = "" ]; then
                echo "Installing Node.js $NODE_VERSION..."
                brew install node@$NODE_VERSION
            else
                echo "Node already installed"
            fi

            # Install NVM using Homebrew
            if [ "$(command -v nvm)" = "" ]; then
                echo "Installing NVM $NVM_VERSION..."
                brew install nvm@$NVM_VERSION
            else
                echo "NVM already installed"
            fi

            # Configure NVM
            if [ ! -d "$HOME/.nvm" ]; then
                echo "Configuring NVM..."
                mkdir ~/.nvm
            export NVM_DIR="$HOME/.nvm"
                . "/usr/local/opt/nvm/nvm.sh"
                echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bash_profile
                echo '. "/usr/local/opt/nvm/nvm.sh"' >> ~/.bash_profile
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

            # Install Yarn using Homebrew
            if [ "$(command -v yarn)" = "" ]; then
                echo "Installing yarn..."
                brew install yarn
            else
                echo "yarn already installed"
            fi

            # Install RBenv using Homebrew
            if [ "$(command -v rbenv)" = "" ]; then
                echo "Installing RBenv..."
                brew install rbenv
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
            ;;
        2) 
            echo "Updating programs..."
            # Code to update programs
            # Update the programs
            brew update && brew upgrade
            echo "All tools updated successfully!"
            ;;
        3) 
            # Code to uninstall programs
            # Prompt the user to confirm that they want to uninstall the programs
            read -p "Are you sure you want to uninstall the programs? This action cannot be undone. (y/n): " confirm
            if [ "$confirm" != "y" ]; then
                echo "Uninstall cancelled"
                exit 0
            fi

            # Uninstall the programs
            echo "Uninstalling programs..."
            echo "Uninstalling Node..."
            brew uninstall node
            echo "Uninstalling NVM..."
            brew uninstall nvm
            echo "Uninstalling Slack..."
            brew uninstall --cask slack
            echo "Uninstalling Postman..."
             brew uninstall --cask postman
            echo "Uninstalling Yarn..."
            brew uninstall yarn
            echo "Uninstalling RBenv..."
            rbenv versions
            rbenv uninstall x.y.z # uninstall all versions from the last step
            brew uninstall rbenv
            echo "Uninstalling Google Chrome..."
            brew uninstall --cask google-chrome
            echo "Programs uninstalled successfully!"
            ;;
        4) 
            echo "Quitting..."
            exit 0
            ;;
        *) 
            echo "Invalid choice. Please enter a number between 1 and 4."
            ;;
    esac
else
    # Prompt the user for action
    echo "What do you want to do?"
    echo "1. Setup"
    echo "2. Quit"
    read -p "Enter your choice (1-2): " choice

    # Check the user's choice and perform the appropriate action
    case $choice in
        1) 
            echo "Launching setup..."
            bash qte.sh setup
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