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
    echo "5. Install recommended VS Code extensions"
    echo "6. Quit"
    echo "Enter your choice (1-6): \c"
    read choice

    # Check the user's choice and perform the appropriate action
    case $choice in
        1) 
            echo "Installing default programs..."
            # Code to install programs
            # Install Xcode Command Line Tools
            
            echo "Installing Xcode Command Line Tools..."
            xcode-select --install

            echo "Installing Rosetta"
            sudo softwareupdate --install-rosetta--agree-to-license

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
            function prompt_extension {
            echo "--------------------------------------------------------------------------------"
            echo "$1"
            echo ""
            echo "$2"
            echo "--------------------------------------------------------------------------------"
            while true; do
                read "yn?Do you wish to install this extension? (y/n) q to quit:" 
                case $yn in
                    [Yy]* ) code --install-extension $3 ; break;;
                    [Nn]* ) break;;
                    [Qq]* ) exit;;
                    * ) echo "Please answer y to install, n to skip or q to quit.";;
                esac
            done
            }

            if [ "$(command -v code)" = "" ]; then
                echo "Does not have code command, trying to find VS Code installation"
                # Asume we have VS Code installed but not in PATH and try to find it
                if [ -d ~/Downloads/Visual\ Studio\ Code.app ]; then
                    echo "Found VS Code in ~/Downloads/Visual Studio Code.app"
                    echo "Adding VS Code to path"
                    export PATH="$PATH:/Users/$USER/Downloads/Visual Studio Code.app/Contents/Resources/app/bin"
                elif [ -d /Applications/Visual\ Studio\ Code.app ]; then
                    echo "Found VS Code in /Applications/Visual Studio Code.app"
                    echo "Adding VS Code to path"
                    export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
                else
                    echo "Could not find VS Code in ~/Downloads/Visual Studio Code.app or /Applications/Visual Studio Code.app"
                    echo "Please install VS Code and try again"
                    exit 1
                fi

            fi

            prompt_extension "🚪  Auto Close Tag - Automatically closes HTML tags" "https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag" "formulahendry.auto-close-tag"
            prompt_extension "🤝  Auto Rename Tag - Automatically renames matching HTML tag when renaming one" "https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag" "formulahendry.auto-rename-tag"
            prompt_extension "🎨  Color Highlight - Highlights colors in the editor" "https://marketplace.visualstudio.com/items?itemName=naumovs.color-highlight" "naumovs.color-highlight"
            prompt_extension "⛔️  Error Lens - Shows errors in the editor, instead of having to hover over them" "https://marketplace.visualstudio.com/items?itemName=usernamehw.errorlens" "usernamehw.errorlens"
            prompt_extension "⏱️  ES7+ React/Redux/React-Native snippets - Snippets for React" "https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets" "dsznajder.es7-react-js-snippets"
            prompt_extension "🗒️  ESLint - Linter for JavaScript" "https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint" "dbaeumer.vscode-eslint"
            prompt_extension "🗂️  File Utils - Adds a bunch of file utils to VS Code" "https://marketplace.visualstudio.com/items?itemName=sleistner.vscode-fileutils" "sleistner.vscode-fileutils"
            prompt_extension "🤖  Github Copilot - AI pair programming" "https://marketplace.visualstudio.com/items?itemName=GitHub.copilot" "GitHub.copilot"
            prompt_extension "🔍  GitLens - Improves git in VS Code, especially stashes and blame" "https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens" "eamodio.gitlens"
            prompt_extension "🌄  Image Preview - Shows image preview in the gutter" "https://marketplace.visualstudio.com/items?itemName=kisstkondoros.vscode-gutter-preview" "kisstkondoros.vscode-gutter-preview"
            prompt_extension "🔡  Multiple cursor case preserve - Preserves case when using multiple cursors" "https://marketplace.visualstudio.com/items?itemName=Cardinal90.multi-cursor-case-preserve" "Cardinal90.multi-cursor-case-preserve"
            prompt_extension "🎩  Prettier - Code formatter" "https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode" "esbenp.prettier-vscode"
            prompt_extension "💅  Pretty TypeScript Errors - Shows slightly more readable TypeScript errors" "https://marketplace.visualstudio.com/items?itemName=yoavbls.pretty-ts-errors" "yoavbls.pretty-ts-errors"
            prompt_extension "🔬  Quokka.js - JavaScript playground, good for prototyping" "https://marketplace.visualstudio.com/items?itemName=WallabyJs.quokka-vscode" "WallabyJs.quokka-vscode"
            prompt_extension "🌩️  Thunder Client - HTTP client for VS Code, lightweight substitute for Postman" "https://marketplace.visualstudio.com/items?itemName=rangav.vscode-thunder-client" "rangav.vscode-thunder-client"
            prompt_extension "📝  TODO Highlight - Highlights TODOs & FIXMEs in the editor" "https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight" "wayou.vscode-todo-highlight"
            prompt_extension "🌲  Todo Tree - Shows all TODOs in the project, without having to search for them" "https://marketplace.visualstudio.com/items?itemName=Gruntfuggly.todo-tree" "Gruntfuggly.todo-tree"
            prompt_extension "🥸  VSCode Faker - Generates fake data for you" "https://marketplace.visualstudio.com/items?itemName=deerawan.vscode-faker" "deerawan.vscode-faker"
            prompt_extension "🖨️  vscode-pdf - PDF viewer" "https://marketplace.visualstudio.com/items?itemName=tomoki1207.pdf" "tomoki1207.pdf"
            prompt_extension "🐶  vscode-pets - Shows cute pets (not really useful)" "https://marketplace.visualstudio.com/items?itemName=miyauchi.vscode-pets" "miyauchi.vscode-pets"

            echo "Done installing extensions"
            ;;
        6) 
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