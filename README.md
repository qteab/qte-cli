
# >qte CLI

A CLI Tool to help you as a new (or old) qte:ie to setup your machine with the necessary programs that we most commonly use!🚀

Please note: This CLI is only for Mac users.


## Programs
These programs are installed upon running 

Default
- Xcode Command Line Tools
- Homebrew
- Node
- NVM
- Slack
- Postman
- Yarn
- RBenv
- Visual Studio Code
- Google Chrome
- 1Pass

Extended
- All programs in the 'default' list
- iTerm2
- Fig
- Notion
- Flipper
- Spotify
- Docker
- Cyberduck
- Android Studio
- Prepos



## Installation

To install the CLI Tool on your machine follow these steps:

If you don't have git installed Download the [.zip file](https://github.com/qteab/qte-cli/archive/refs/heads/main.zip)

Open the .zip file and save the files in a directory of your choosing and enter the folder in the terminal.

```bash
  cd path/to/qte-cli-main/qte.sh
```

Make it executable permissions using 

```bash
  chmod +x qte.sh
```

Create a dir

```bash
  sudo mkdir /usr/local/bin
```

Then, create a symlink to the script using

```bash
  sudo ln -s $(pwd)/qte.sh /usr/local/bin/qte
```


You can now run the qte command in the terminal 🥳

```bash
  qte setup
```

If you are prompted with a window about the installation of Xcode, press 'allow'


## Appendix

If you feel like there are programs missing, or the CLI contains bugs or other faults, please open a PR to contribute! 👨‍💻


## Authors

- [Björn Modée](https://www.github.com/bjornmodee) - Tech Lead [Team Monterey]


